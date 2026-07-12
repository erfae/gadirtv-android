import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/profile.dart';
import '../utils/url_utils.dart';
import 'http_factory.dart';
import 'native_http.dart';

/// Thin wrapper around Xtream Codes' `player_api.php`.
///
/// One [ApiService] per app instance is enough; every call takes an
/// explicit [Profile] so switching accounts never leaks state between them.
///
/// The Windows app had to route through Node.js IPC because Chromium blocks
/// plain HTTP to gadir.co — on Android, Dio hits the host directly (network
/// security config already allows cleartext to gadir.co).
class ApiService {
  ApiService() : _dio = Dio(BaseOptions(
          // Fail fast so users get feedback in <20 s instead of hanging.
          connectTimeout: const Duration(seconds: 6),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 6),
          // Match the exact headers used by the working Windows client — gadir.co
          // is picky under load and returns 503 to requests missing these.
          // In particular `Accept-Encoding: identity` disables gzip (server
          // refuses gzipped Xtream responses on some routes).
          headers: {
            'User-Agent': _activeUserAgent,
            'Accept': 'application/json, text/plain, */*',
            'Accept-Encoding': 'identity',
            'Connection': 'keep-alive',
          },
          responseType: ResponseType.json,
          validateStatus: (s) => s != null && s < 500,
        ));

  /// User-Agent that most recently succeeded against the Xtream server.
  /// The login flow rotates through [_userAgents] until it finds one the
  /// server accepts and updates this value; subsequent API calls reuse it
  /// so a working handshake carries through the whole session.
  static String _activeUserAgent = 'XCIPTV';

  /// Public getter used by the player to pass the same User-Agent that
  /// authenticated the login through to the streaming endpoints.
  /// Servers that reject VLC/mpv default UAs generally accept whichever
  /// UA already passed authentication.
  static String get activeUserAgent => _activeUserAgent;

  final Dio _dio;

  /// Optional live progress hook — the login screen sets this to display
  /// "Intento 2/3…" while the retry loop is running.
  void Function(int attempt, int total, String? message)? onProgress;

  /// GET `player_api.php` via Cronet (same stack as `login()`). Replaces
  /// the previous Dio-based implementation which suffered the same
  /// `dart:io HttpClient` hang bug on Android that we solved for login.
  Future<dynamic> _get(Profile p, String action, [Map<String, dynamic>? extra]) async {
    final base = _normalizeHost(p.host);
    final queryParts = <String>[
      'username=${Uri.encodeQueryComponent(p.username)}',
      'password=${Uri.encodeQueryComponent(p.password)}',
      if (action.isNotEmpty) 'action=$action',
      ...?extra?.entries
          .where((e) => e.value != null && e.value.toString().isNotEmpty)
          .map((e) => '${e.key}=${Uri.encodeQueryComponent(e.value.toString())}'),
    ];
    final url = '$base/player_api.php?${queryParts.join('&')}';
    final parsedUri = Uri.parse(url);

    Object? lastError;
    const totalAttempts = 3;
    for (var attempt = 1; attempt <= totalAttempts; attempt++) {
      try {
        final client = await HttpFactory.get();
        final req = http.Request('GET', parsedUri)
          ..headers['User-Agent'] = _activeUserAgent
          ..headers['Accept'] = 'application/json, text/plain, */*'
          ..headers['Accept-Encoding'] = 'identity'
          ..headers['Connection'] = 'keep-alive'
          ..followRedirects = true;

        final streamed = await client.send(req).timeout(const Duration(seconds: 15));
        final bytes = await streamed.stream.toBytes().timeout(const Duration(seconds: 15));
        final body = utf8.decode(bytes, allowMalformed: true);

        if (streamed.statusCode >= 500) {
          lastError = 'HTTP ${streamed.statusCode}';
          if (attempt < totalAttempts) {
            await Future.delayed(Duration(milliseconds: 500 * attempt));
            continue;
          }
          throw Exception('Servidor devolvió ${streamed.statusCode} tras $totalAttempts intentos');
        }
        if (streamed.statusCode != 200) {
          throw Exception('HTTP ${streamed.statusCode}');
        }
        // Try to parse JSON; if empty, retry (server anti-abuse quirk).
        if (body.trim().isEmpty) {
          lastError = 'empty-body';
          if (attempt < totalAttempts) {
            await Future.delayed(Duration(milliseconds: 500 * attempt));
            continue;
          }
          return null;
        }
        try {
          return jsonDecode(body);
        } catch (_) {
          return body; // caller can decide how to handle non-JSON
        }
      } on TimeoutException catch (e) {
        lastError = e;
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        rethrow;
      } on SocketException catch (e) {
        lastError = e;
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        rethrow;
      }
    }
    throw Exception('Sin respuesta tras $totalAttempts intentos ($lastError)');
  }

  static String _normalizeHost(String raw) => normalizeXtreamHost(raw);

  /// Xtream login — uses raw `dart:io HttpClient` (bypasses Dio) with hard
  /// timeouts on each phase (DNS, connect, headers, body). This works around
  /// a known Android bug where Dio's `receiveTimeout` never fires when the
  /// server keeps the socket open but never sends a response.
  ///
  /// Also captures full diagnostic info (URL, HTTP status, response snippet,
  /// exception class) into [LoginResult.diagnostic] so the UI can show it.
  static const List<String> _userAgents = [
    // OkHttp first — same stack as NativeHttpClient on Android.
    'okhttp/4.9.3',
    'XCIPTV',
    'IPTVSmartersPlayer',
    'IPTV Smarters Pro',
    'VLC/3.0.20 LibVLC/3.0.20',
    'TiviMate/4.6.0 (Linux;Android 12)',
    'GSE SMART IPTV/Pro',
    'OTT Navigator/1.6.0',
    'Dalvik/2.1.0 (Linux; U; Android 11; MIBOX4 Build/PI)',
    'Lavf/59.27.100',
  ];

  /// Downloads an M3U playlist and returns its raw text. Uses the same 4-UA
  /// rotation + phase-by-phase diagnostics as the Xtream login.
  Future<LoginResult> loginM3U(Profile p) async {
    final rawUrl = p.m3uUrl.trim();
    if (rawUrl.isEmpty) {
      return const LoginResult(
        ok: false,
        error: 'Introduce la URL del M3U',
      );
    }
    // Normalize (add scheme if missing)
    var url = rawUrl;
    if (!url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'http://$url';
    }
    // Auto-fix: if scheme is https:// but port is 80 (plain HTTP), the browser
    // "upgraded" the URL when pasting. Xtream servers use plain HTTP on port 80.
    if (url.startsWith('https://')) {
      final tmp = Uri.tryParse(url);
      if (tmp != null && tmp.hasPort && tmp.port == 80) {
        url = url.replaceFirst('https://', 'http://');
      }
    }

    late Uri parsedUri;
    try {
      parsedUri = Uri.parse(url);
    } catch (e) {
      return LoginResult(
        ok: false,
        error: 'URL inválida',
        diagnostic: 'Parse error: $e',
      );
    }
    final hostname = parsedUri.host;
    final port = parsedUri.port == 0
        ? (parsedUri.scheme == 'https' ? 443 : 80)
        : parsedUri.port;
    final totalAttempts = _userAgents.length;
    String? lastDiag;

    for (var attempt = 1; attempt <= totalAttempts; attempt++) {
      final ua = _userAgents[attempt - 1];
      onProgress?.call(attempt, totalAttempts, 'Descargando M3U');
      final diag = StringBuffer('URL: $url\nIntento: $attempt/$totalAttempts\nUA: $ua\n');
      final sw = Stopwatch()..start();
      try {
        onProgress?.call(attempt, totalAttempts, 'Resolviendo DNS');
        final addrs = await InternetAddress.lookup(hostname)
            .timeout(const Duration(seconds: 4));
        diag.writeln('DNS OK (${sw.elapsedMilliseconds} ms): '
            '${addrs.map((a) => a.address).take(3).join(", ")}');

        onProgress?.call(attempt, totalAttempts, 'Enviando petición HTTP');
        final httpClient = await HttpFactory.get();
        diag.writeln('HTTP client: ${HttpFactory.isCronet ? "Cronet" : "IOClient"}');

        final req = http.Request('GET', parsedUri)
          ..headers['User-Agent'] = ua
          ..headers['Accept'] = '*/*'
          ..headers['Accept-Encoding'] = 'identity'
          ..headers['Connection'] = 'keep-alive'
          ..followRedirects = true;

        onProgress?.call(attempt, totalAttempts, 'Esperando respuesta');
        final streamed = await httpClient
            .send(req)
            .timeout(const Duration(seconds: 15));
        diag.writeln('HTTP status (${sw.elapsedMilliseconds} ms): ${streamed.statusCode}');

        if (streamed.statusCode >= 500) {
          lastDiag = diag.toString();
          if (attempt < totalAttempts) {
            await Future.delayed(Duration(milliseconds: 500 * attempt));
            continue;
          }
          return LoginResult(
            ok: false,
            error: 'El servidor devuelve ${streamed.statusCode}. Prueba más tarde o con otro proveedor.',
            diagnostic: lastDiag,
          );
        }
        if (streamed.statusCode != 200) {
          return LoginResult(
            ok: false,
            error: 'HTTP ${streamed.statusCode} al descargar la playlist',
            diagnostic: diag.toString(),
          );
        }

        onProgress?.call(attempt, totalAttempts, 'Descargando canales');
        final bytes = await streamed.stream
            .toBytes()
            .timeout(const Duration(seconds: 30));
        final body = utf8.decode(bytes, allowMalformed: true);
        diag.writeln('Body: ${body.length} bytes');

        // Validate M3U format
        final trimmed = body.trimLeft();
        if (!trimmed.startsWith('#EXTM3U') && !trimmed.startsWith('#EXTINF')) {
          diag.writeln('Contenido no parece M3U: ${body.substring(0, body.length > 200 ? 200 : body.length)}');
          return LoginResult(
            ok: false,
            error: 'La URL no devuelve una playlist M3U válida',
            diagnostic: diag.toString(),
          );
        }

        onProgress?.call(attempt, totalAttempts, 'Procesando');
        final channels = _parseM3U(body);
        diag.writeln('Canales encontrados: ${channels.length}');
        if (channels.isEmpty) {
          return LoginResult(
            ok: false,
            error: 'La playlist M3U está vacía',
            diagnostic: diag.toString(),
          );
        }

        return LoginResult(
          ok: true,
          userInfo: {'auth': 1, 'status': 'Active'},
          serverInfo: {
            'url': hostname,
            'port': port.toString(),
            'server_protocol': parsedUri.scheme,
          },
          m3uChannels: channels,
        );
      } on HandshakeException catch (e) {
        diag.writeln('Excepción (${sw.elapsedMilliseconds} ms): HandshakeException — ${e.message}');
        // Common cause: URL was pasted as https:// but server is plain HTTP.
        // Auto-fall back to http:// and retry immediately (without consuming
        // this attempt's slot).
        if (parsedUri.scheme == 'https') {
          final fixed = url.replaceFirst('https://', 'http://');
          diag.writeln('Retry con http:// → $fixed');
          url = fixed;
          parsedUri = Uri.parse(url);
          attempt--;
          continue;
        }
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'Error TLS al conectar. La URL puede requerir http:// en vez de https://.',
          diagnostic: lastDiag,
        );
      } on TimeoutException catch (e) {
        diag.writeln('Excepción (${sw.elapsedMilliseconds} ms): TimeoutException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'Tiempo agotado descargando M3U',
          diagnostic: lastDiag,
        );
      } on SocketException catch (e) {
        diag.writeln('Excepción (${sw.elapsedMilliseconds} ms): SocketException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'No se pudo conectar a $hostname:$port',
          diagnostic: lastDiag,
        );
      } catch (e, st) {
        diag.writeln('Excepción: ${e.runtimeType} — $e');
        diag.writeln('Stack (top): ${st.toString().split('\n').take(2).join(' | ')}');
        return LoginResult(
          ok: false,
          error: 'Error inesperado: ${e.runtimeType}',
          diagnostic: diag.toString(),
        );
      }
    }

    return LoginResult(
      ok: false,
      error: 'No se pudo descargar la playlist tras $totalAttempts intentos',
      diagnostic: lastDiag,
    );
  }

  /// Parses an M3U/M3U8 playlist into a list of channels.
  /// Each channel is `{name, url, group, tvgId, tvgLogo}`.
  static List<Map<String, dynamic>> _parseM3U(String body) {
    final lines = body.split(RegExp(r'\r?\n'));
    final channels = <Map<String, dynamic>>[];
    Map<String, dynamic>? pending;

    final attrRe = RegExp(r'([a-zA-Z0-9-]+)="([^"]*)"');

    for (final rawLine in lines) {
      final line = rawLine.trim();
      if (line.isEmpty || line.startsWith('#EXTM3U')) continue;

      if (line.startsWith('#EXTINF')) {
        // #EXTINF:-1 tvg-id="x" tvg-name="Y" tvg-logo="Z" group-title="G",Display Name
        final commaIdx = line.lastIndexOf(',');
        final display = commaIdx >= 0 ? line.substring(commaIdx + 1).trim() : 'Canal';
        final attrs = <String, String>{};
        for (final m in attrRe.allMatches(line)) {
          attrs[m.group(1)!] = m.group(2)!;
        }
        pending = {
          'name': display.isEmpty ? (attrs['tvg-name'] ?? 'Canal') : display,
          'group': attrs['group-title'] ?? 'General',
          'tvgId': attrs['tvg-id'] ?? '',
          'tvgLogo': attrs['tvg-logo'] ?? '',
        };
      } else if (line.startsWith('#')) {
        // ignore other tags (#EXTVLCOPT, #EXTGRP…)
        continue;
      } else {
        // stream URL line
        if (pending != null) {
          pending['url'] = line;
          channels.add(pending);
          pending = null;
        }
      }
    }
    return channels;
  }


  Future<LoginResult> login(Profile p) async {
    final host = _normalizeHost(p.host);
    final url =
        '$host/player_api.php?username=${Uri.encodeQueryComponent(p.username)}&password=${Uri.encodeQueryComponent(p.password)}';
    final totalAttempts = _userAgents.length;
    String? lastDiag;

    late final Uri parsedUri;
    try {
      parsedUri = Uri.parse(url);
    } catch (e) {
      return LoginResult(
        ok: false,
        error: 'URL inválida: $host',
        diagnostic: 'Parse error: $e',
      );
    }
    final hostname = parsedUri.host;
    final port = parsedUri.port == 0 ? 80 : parsedUri.port;

    for (var attempt = 1; attempt <= totalAttempts; attempt++) {
      final ua = _userAgents[attempt - 1];
      onProgress?.call(attempt, totalAttempts, 'Conectando');
      final diag = StringBuffer('URL: $url\nIntento: $attempt/$totalAttempts\n'
          'UA: $ua\n');
      final sw = Stopwatch()..start();
      try {
        // ── Phase 1: DNS resolution ────────────────────────────
        onProgress?.call(attempt, totalAttempts, 'Resolviendo DNS');
        final addrs = await InternetAddress.lookup(hostname)
            .timeout(const Duration(seconds: 4));
        diag.writeln('DNS OK (${sw.elapsedMilliseconds} ms): '
            '${addrs.map((a) => a.address).take(3).join(", ")}');

        // ── Phase 2: HTTP request via Cronet ──────────────────
        // NOTE: We intentionally skip a `Socket.connect` probe here — that
        // uses `dart:io`'s native TCP stack, which some Xtream firewalls
        // recognise by fingerprint and drop with `Connection refused`
        // before we ever get to send HTTP headers. Cronet mimics Chrome
        // at the socket level and is generally allowed through.
        onProgress?.call(attempt, totalAttempts, 'Enviando petición HTTP');
        var httpResult = await _loginHttpGet(parsedUri, ua);
        diag.writeln('HTTP client: ${httpResult.clientLabel} (${httpResult.method})');

        // Some panels return 512 on GET but accept POST with the same credentials.
        if ((httpResult.statusCode == 512 ||
                httpResult.statusCode == 405 ||
                httpResult.statusCode == 403) &&
            httpResult.method == 'GET') {
          onProgress?.call(attempt, totalAttempts, 'Reintentando con POST');
          diag.writeln('GET → ${httpResult.statusCode}, probando POST…');
          httpResult = await _loginHttpGet(parsedUri, ua, method: 'POST');
          diag.writeln('POST client: ${httpResult.clientLabel} (${httpResult.method})');
        }

        // Empty 200 body — anti-bot quirk; POST often works.
        if (httpResult.statusCode == 200 &&
            httpResult.body.trim().isEmpty &&
            httpResult.method == 'GET') {
          onProgress?.call(attempt, totalAttempts, 'Reintentando con POST');
          diag.writeln('GET → 200 vacío, probando POST…');
          httpResult = await _loginHttpGet(parsedUri, ua, method: 'POST');
          diag.writeln('POST client: ${httpResult.clientLabel} (${httpResult.method})');
        }

        diag.writeln('HTTP status (${sw.elapsedMilliseconds} ms): ${httpResult.statusCode}');
        diag.writeln('Content-Type: ${httpResult.contentType ?? "(none)"}');

        onProgress?.call(attempt, totalAttempts, 'Recibiendo datos');
        final body = httpResult.body;
        final snippet = body.length > 400 ? '${body.substring(0, 400)}…' : body;
        diag.writeln('Body ${body.length} bytes (${sw.elapsedMilliseconds} ms): $snippet');

        if (httpResult.statusCode == 0) {
          lastDiag = diag.toString();
          if (attempt < totalAttempts) {
            await Future.delayed(Duration(milliseconds: 400 * attempt));
            continue;
          }
          return LoginResult(
            ok: false,
            error: 'No hubo respuesta del servidor. Comprueba la URL (http://servidor:puerto), '
                'tu conexión a Internet y si necesitas VPN.',
            diagnostic: lastDiag,
          );
        }
        if (httpResult.statusCode >= 500) {
          lastDiag = diag.toString();
          if (attempt < totalAttempts) {
            final backoff = httpResult.statusCode == 512
                ? Duration(milliseconds: 2000 * attempt)
                : Duration(milliseconds: 600 * attempt);
            await Future.delayed(backoff);
            continue;
          }
          return LoginResult(
            ok: false,
            error: 'Servidor devuelve ${httpResult.statusCode} con todos los User-Agents probados.\n\n'
                'Comprueba que usuario y contraseña sean exactos (mayúsculas/minúsculas). '
                'Si tu proveedor te dio un link M3U, prueba el modo "Playlist M3U". '
                'Algunos paneles bloquean apps no registradas — contacta a tu proveedor.',
            diagnostic: lastDiag,
          );
        }
        if (httpResult.statusCode == 401 || httpResult.statusCode == 403) {
          return LoginResult(
            ok: false,
            error: 'Credenciales incorrectas (${httpResult.statusCode}). '
                'Revisa usuario y contraseña.',
            diagnostic: diag.toString(),
          );
        }
        if (httpResult.statusCode != 200) {
          return LoginResult(
            ok: false,
            error: 'El servidor devolvió ${httpResult.statusCode}',
            diagnostic: diag.toString(),
          );
        }

        onProgress?.call(attempt, totalAttempts, 'Procesando');
        dynamic data;
        try {
          data = jsonDecode(body);
        } catch (e) {
          return LoginResult(
            ok: false,
            error: 'El servidor devolvió una respuesta no JSON (posible bloqueo por proxy).',
            diagnostic: diag.toString(),
          );
        }

        final ok = data is Map &&
            data['user_info'] is Map &&
            (data['user_info']['auth'] == 1 || data['user_info']['auth'] == '1');
        if (ok) {
          _activeUserAgent = ua;
          _dio.options.headers['User-Agent'] = ua;
        }
        return LoginResult(
          ok: ok,
          userInfo: ok ? Map<String, dynamic>.from(data['user_info'] as Map) : null,
          serverInfo: (data is Map && data['server_info'] is Map)
              ? Map<String, dynamic>.from(data['server_info'] as Map)
              : null,
          error: ok ? null : 'Credenciales inválidas o servidor rechazó la conexión',
          diagnostic: ok ? null : diag.toString(),
        );
      } on TimeoutException catch (e) {
        diag.writeln('Excepción (${sw.elapsedMilliseconds} ms): TimeoutException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'Tiempo agotado — el servidor no responde con ninguno de los User-Agents probados.',
          diagnostic: lastDiag,
        );
      } on SocketException catch (e) {
        diag.writeln('Excepción (${sw.elapsedMilliseconds} ms): SocketException — ${e.message}');
        if (e.osError != null) {
          diag.writeln('OSError: ${e.osError!.errorCode} ${e.osError!.message}');
        }
        if (e.address != null) diag.writeln('Address: ${e.address!.address}');
        if (e.port != null) diag.writeln('Port: ${e.port}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'No se pudo conectar a $hostname:$port. Comprueba la URL y tu conexión.',
          diagnostic: lastDiag,
        );
      } on HttpException catch (e) {
        diag.writeln('Excepción: HttpException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 500 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'Error HTTP al contactar con el servidor.',
          diagnostic: lastDiag,
        );
      } catch (e, st) {
        diag.writeln('Excepción: ${e.runtimeType} — $e');
        diag.writeln('Stack (top): ${st.toString().split('\n').take(2).join(' | ')}');
        return LoginResult(
          ok: false,
          error: 'Error inesperado: ${e.runtimeType}',
          diagnostic: diag.toString(),
        );
      }
    }

    return LoginResult(
      ok: false,
      error: 'No se pudo iniciar sesión tras $totalAttempts intentos con distintos User-Agents',
      diagnostic: lastDiag,
    );
  }

  /// Login HTTP — Android uses OkHttp natively; falls back to dart:io IOClient.
  Future<({
    int statusCode,
    String body,
    String clientLabel,
    String method,
    String? contentType,
  })> _loginHttpGet(
    Uri uri,
    String ua, {
    String method = 'GET',
  }) async {
    Object? nativeError;
    if (Platform.isAndroid) {
      try {
        final native = await NativeHttp.request(
          uri.toString(),
          userAgent: ua,
          method: method,
        ).timeout(const Duration(seconds: 12));
        if (native.error != null && native.error!.isNotEmpty) {
          nativeError = native.error;
        } else {
          return (
            statusCode: native.status,
            body: native.body,
            clientLabel: native.client,
            method: native.method,
            contentType: 'application/json',
          );
        }
      } catch (e) {
        nativeError = e;
      }
    }

    final client = await HttpFactory.get();
    final postUri = method == 'POST'
        ? uri.replace(queryParameters: const {})
        : uri;
    final req = http.Request(method, postUri)
      ..headers['User-Agent'] = ua
      ..headers['Accept'] = 'application/json, text/plain, */*'
      ..headers['Accept-Encoding'] = 'identity'
      ..headers['Accept-Language'] = 'en-US,en;q=0.9'
      ..headers['Connection'] = 'keep-alive'
      ..headers['Referer'] = '${uri.scheme}://${uri.host}${uri.hasPort && uri.port != 80 && uri.port != 443 ? ':${uri.port}' : ''}/'
      ..followRedirects = true;
    if (method == 'POST') {
      req.bodyFields = Map<String, String>.from(uri.queryParameters);
    }

    final streamed = await client.send(req).timeout(const Duration(seconds: 12));
    final bytes = await streamed.stream.toBytes().timeout(const Duration(seconds: 8));
    final body = utf8.decode(bytes, allowMalformed: true);
    return (
      statusCode: streamed.statusCode,
      body: body,
      clientLabel: nativeError != null
          ? 'IOClient (OkHttp falló: $nativeError)'
          : (HttpFactory.isCronet ? 'Cronet' : 'IOClient'),
      method: method,
      contentType: streamed.headers['content-type'],
    );
  }

  Future<List<Map<String, dynamic>>> liveCategories(Profile p) =>
      _list(p, 'get_live_categories');

  Future<List<Map<String, dynamic>>> liveStreams(Profile p, {String? categoryId}) =>
      _list(p, 'get_live_streams', extra: {
        if (categoryId != null) 'category_id': categoryId,
      });

  Future<List<Map<String, dynamic>>> vodCategories(Profile p) =>
      _list(p, 'get_vod_categories');

  Future<List<Map<String, dynamic>>> vodStreams(Profile p, {String? categoryId}) =>
      _list(p, 'get_vod_streams', extra: {
        if (categoryId != null) 'category_id': categoryId,
      });

  Future<List<Map<String, dynamic>>> seriesCategories(Profile p) =>
      _list(p, 'get_series_categories');

  Future<List<Map<String, dynamic>>> seriesList(Profile p, {String? categoryId}) =>
      _list(p, 'get_series', extra: {
        if (categoryId != null) 'category_id': categoryId,
      });

  Future<Map<String, dynamic>> vodInfo(Profile p, dynamic vodId) async {
    final d = await _get(p, 'get_vod_info', {'vod_id': vodId});
    return d is Map ? Map<String, dynamic>.from(d) : {};
  }

  Future<Map<String, dynamic>> seriesInfo(Profile p, dynamic seriesId) async {
    final d = await _get(p, 'get_series_info', {'series_id': seriesId});
    return d is Map ? Map<String, dynamic>.from(d) : {};
  }

  Future<List<Map<String, dynamic>>> shortEpg(Profile p, dynamic streamId, {int limit = 10}) async {
    final d = await _get(p, 'get_short_epg', {'stream_id': streamId, 'limit': limit});
    if (d is Map && d['epg_listings'] is List) {
      return (d['epg_listings'] as List).cast<Map<String, dynamic>>();
    }
    return const [];
  }

  /// Build a direct stream URL — same format the Windows client feeds mpv.
  String streamUrl(Profile p, {required String kind, required dynamic streamId, required String ext}) {
    final path = switch (kind) {
      'movie' => 'movie',
      'series' => 'series',
      _ => 'live',
    };
    final u = Uri.encodeComponent(p.username);
    final pw = Uri.encodeComponent(p.password);
    return '${_normalizeHost(p.host)}/$path/$u/$pw/$streamId.$ext';
  }

  Future<List<Map<String, dynamic>>> _list(
    Profile p,
    String action, {
    Map<String, dynamic>? extra,
  }) async {
    final d = await _get(p, action, extra);
    if (d is List) return d.cast<Map<String, dynamic>>();
    return const [];
  }

  String _dioMsg(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return 'Tiempo de espera agotado. Verifica tu conexión.';
      case DioExceptionType.connectionError:
        return 'No se pudo conectar al servidor.';
      case DioExceptionType.badResponse:
        final code = e.response?.statusCode;
        if (code == 503) {
          return 'El servidor no está disponible (503). '
              'Intenta de nuevo en unos segundos.';
        }
        if (code == 512) {
          return 'El servidor rechazó la conexión (512). '
              'Suele ser un bloqueo temporal antiabuso de gadir.co. '
              'Espera 30-60 segundos y vuelve a intentarlo.';
        }
        if (code != null && code >= 500) {
          return 'Servidor no disponible ($code). Reintenta en unos segundos.';
        }
        if (code == 401 || code == 403) {
          return 'Credenciales incorrectas o cuenta expirada ($code).';
        }
        return 'El servidor devolvió $code.';
      default:
        return e.message ?? 'Error de red';
    }
  }
}

class LoginResult {
  final bool ok;
  final String? error;
  final Map<String, dynamic>? userInfo;
  final Map<String, dynamic>? serverInfo;
  final String? diagnostic;
  final List<Map<String, dynamic>>? m3uChannels;

  const LoginResult({
    required this.ok,
    this.error,
    this.userInfo,
    this.serverInfo,
    this.diagnostic,
    this.m3uChannels,
  });
}

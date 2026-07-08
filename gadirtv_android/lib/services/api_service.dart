import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import '../models/profile.dart';

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
            'User-Agent': 'VLC/3.0.20 LibVLC/3.0.20',
            'Accept': 'application/json, text/plain, */*',
            'Accept-Encoding': 'identity',
            'Connection': 'keep-alive',
          },
          responseType: ResponseType.json,
          validateStatus: (s) => s != null && s < 500,
        ));

  final Dio _dio;

  /// Optional live progress hook — the login screen sets this to display
  /// "Intento 2/3…" while the retry loop is running.
  void Function(int attempt, int total, String? message)? onProgress;

  /// GET `player_api.php` with automatic retries on transient failures
  /// (503, empty body, network errors). Mirrors the Windows client's
  /// 3-attempt strategy against gadir.co's anti-abuse throttling.
  Future<dynamic> _get(Profile p, String action, [Map<String, dynamic>? extra]) async {
    final url = '${_normalizeHost(p.host)}/player_api.php';
    final query = <String, dynamic>{
      'username': p.username,
      'password': p.password,
      if (action.isNotEmpty) 'action': action,
      ...?extra,
    };

    Object? lastError;
    const totalAttempts = 3;
    for (var attempt = 1; attempt <= totalAttempts; attempt++) {
      onProgress?.call(attempt, totalAttempts, null);
      try {
        // Hard app-level timeout — bypasses the dart:io HttpClient bug where
        // Dio's internal `receiveTimeout` sometimes doesn't fire on Android
        // when the socket is open but the server never sends a full response.
        final res = await _dio
            .get(url, queryParameters: query)
            .timeout(
              const Duration(seconds: 12),
              onTimeout: () => throw DioException(
                requestOptions: RequestOptions(path: url),
                type: DioExceptionType.receiveTimeout,
                message: 'App-level timeout (12s)',
              ),
            );
        final data = res.data;
        // Server sometimes returns 200 with an empty body under load — retry.
        final isEmpty = data == null ||
            (data is String && data.trim().isEmpty) ||
            (data is List && data.isEmpty && action.isNotEmpty);
        if (!isEmpty) return data;
        lastError = 'empty-body';
      } on DioException catch (e) {
        lastError = e;
        // Retry on transient errors: any 5xx / custom Xtream codes (512, 520...),
        // timeouts, connection errors. Windows client retries 3× on ANY failure.
        final code = e.response?.statusCode ?? 0;
        final retryable = code >= 500 ||
            e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.sendTimeout ||
            e.type == DioExceptionType.connectionError ||
            e.type == DioExceptionType.unknown;
        if (!retryable) rethrow;
      }
      // Back-off before next attempt (0.4s, 0.8s).
      if (attempt < totalAttempts) {
        await Future.delayed(Duration(milliseconds: 400 * attempt));
      }
    }
    if (lastError is DioException) throw lastError;
    throw DioException(
      requestOptions: RequestOptions(path: url),
      message: 'Sin respuesta tras 3 intentos',
    );
  }

  /// Normalizes user-typed hosts:
  ///  * strips whitespace and trailing slashes
  ///  * adds `http://` when no scheme is present (Xtream Codes doesn't use HTTPS
  ///    for gadir.co and typing the scheme is error-prone on mobile).
  static String _normalizeHost(String raw) {
    var h = raw.trim();
    while (h.endsWith('/')) {
      h = h.substring(0, h.length - 1);
    }
    if (!h.startsWith('http://') && !h.startsWith('https://')) {
      h = 'http://$h';
    }
    return h;
  }

  /// Xtream login — uses raw `dart:io HttpClient` (bypasses Dio) with hard
  /// timeouts on each phase (DNS, connect, headers, body). This works around
  /// a known Android bug where Dio's `receiveTimeout` never fires when the
  /// server keeps the socket open but never sends a response.
  ///
  /// Also captures full diagnostic info (URL, HTTP status, response snippet,
  /// exception class) into [LoginResult.diagnostic] so the UI can show it.
  Future<LoginResult> login(Profile p) async {
    final host = _normalizeHost(p.host);
    final url =
        '$host/player_api.php?username=${Uri.encodeQueryComponent(p.username)}&password=${Uri.encodeQueryComponent(p.password)}';
    const totalAttempts = 3;
    String? lastDiag;

    for (var attempt = 1; attempt <= totalAttempts; attempt++) {
      onProgress?.call(attempt, totalAttempts, null);
      final diag = StringBuffer('URL: $url\nIntento: $attempt/$totalAttempts\n');
      HttpClient? client;
      try {
        client = HttpClient()
          ..connectionTimeout = const Duration(seconds: 6)
          ..idleTimeout = const Duration(seconds: 5)
          ..userAgent = 'VLC/3.0.20 LibVLC/3.0.20'
          ..autoUncompress = false;

        final uri = Uri.parse(url);
        final req = await client.getUrl(uri).timeout(const Duration(seconds: 8));
        req.headers.set('Accept', 'application/json, text/plain, */*');
        req.headers.set('Accept-Encoding', 'identity');
        req.headers.set('Connection', 'keep-alive');

        final res = await req.close().timeout(const Duration(seconds: 10));
        diag.writeln('HTTP status: ${res.statusCode}');
        diag.writeln('Content-Type: ${res.headers.contentType}');

        final body = await res
            .transform(utf8.decoder)
            .join()
            .timeout(const Duration(seconds: 10));
        final snippet = body.length > 400 ? '${body.substring(0, 400)}…' : body;
        diag.writeln('Body (${body.length} bytes): $snippet');

        if (res.statusCode >= 500) {
          lastDiag = diag.toString();
          if (attempt < totalAttempts) {
            await Future.delayed(Duration(milliseconds: 400 * attempt));
            continue;
          }
          return LoginResult(
            ok: false,
            error: 'Servidor no disponible (${res.statusCode}). Intenta de nuevo en unos segundos.',
            diagnostic: lastDiag,
          );
        }
        if (res.statusCode == 401 || res.statusCode == 403) {
          return LoginResult(
            ok: false,
            error: 'Credenciales incorrectas (${res.statusCode})',
            diagnostic: diag.toString(),
          );
        }
        if (res.statusCode != 200) {
          return LoginResult(
            ok: false,
            error: 'El servidor devolvió ${res.statusCode}',
            diagnostic: diag.toString(),
          );
        }

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
        diag.writeln('Excepción: TimeoutException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 400 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'Tiempo agotado — el servidor no responde. Comprueba tu conexión y que gadir.co esté online.',
          diagnostic: lastDiag,
        );
      } on SocketException catch (e) {
        diag.writeln('Excepción: SocketException — ${e.message}');
        if (e.osError != null) {
          diag.writeln('OSError: ${e.osError!.errorCode} ${e.osError!.message}');
        }
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 400 * attempt));
          continue;
        }
        return LoginResult(
          ok: false,
          error: 'No se pudo conectar a $host. Comprueba la URL del servidor y tu conexión.',
          diagnostic: lastDiag,
        );
      } on HttpException catch (e) {
        diag.writeln('Excepción: HttpException — ${e.message}');
        lastDiag = diag.toString();
        if (attempt < totalAttempts) {
          await Future.delayed(Duration(milliseconds: 400 * attempt));
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
      } finally {
        client?.close(force: true);
      }
    }

    return LoginResult(
      ok: false,
      error: 'No se pudo iniciar sesión tras $totalAttempts intentos',
      diagnostic: lastDiag,
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

  const LoginResult({
    required this.ok,
    this.error,
    this.userInfo,
    this.serverInfo,
    this.diagnostic,
  });
}

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
          connectTimeout: const Duration(seconds: 12),
          receiveTimeout: const Duration(seconds: 25),
          // Xtream servers occasionally sniff the UA; VLC is universally allowed.
          headers: {'User-Agent': 'VLC/3.0.20 LibVLC/3.0.20'},
          responseType: ResponseType.json,
          validateStatus: (s) => s != null && s < 500,
        ));

  final Dio _dio;

  /// GET `player_api.php` with the given [action] (empty string = auth ping).
  Future<dynamic> _get(Profile p, String action, [Map<String, dynamic>? extra]) async {
    final url = '${p.host}/player_api.php';
    final query = <String, dynamic>{
      'username': p.username,
      'password': p.password,
      if (action.isNotEmpty) 'action': action,
      ...?extra,
    };

    final res = await _dio.get(url, queryParameters: query);
    return res.data;
  }

  /// Xtream login: fires the base `player_api.php?username=&password=` call.
  /// Returns `true` if `user_info.auth == 1`.
  Future<LoginResult> login(Profile p) async {
    try {
      final data = await _get(p, '');
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
      );
    } on DioException catch (e) {
      return LoginResult(ok: false, error: _dioMsg(e));
    } catch (e) {
      return LoginResult(ok: false, error: e.toString());
    }
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
    return '${p.host}/$path/$u/$pw/$streamId.$ext';
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
        return 'El servidor devolvió ${e.response?.statusCode}.';
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

  const LoginResult({required this.ok, this.error, this.userInfo, this.serverInfo});
}

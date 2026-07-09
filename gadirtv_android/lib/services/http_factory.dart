import 'dart:async';
import 'dart:io' show Platform;

import 'package:cronet_http/cronet_http.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart' as io_client;

/// Wrapper that picks the best available HTTP client on Android:
///   1. Cronet (Chrome's network stack) — same library used by the working
///      IPTV apps (TiviMate, IPTVSmartersPro, GadirTV Windows via Chromium)
///   2. IOClient (`package:http` on top of `dart:io HttpClient`) as fallback
///
/// This bypasses the known `dart:io HttpClient` hang on some Android devices
/// where the isolate blocks during DNS/SSL handshake without honouring the
/// receiveTimeout.
class HttpFactory {
  static http.Client? _cachedClient;
  static bool _cronetTried = false;

  /// Returns a ready-to-use HTTP client. Safe to call multiple times.
  static Future<http.Client> get() async {
    if (_cachedClient != null) return _cachedClient!;

    if (!_cronetTried && Platform.isAndroid) {
      _cronetTried = true;
      try {
        // CronetEngine.build() throws if Google Play Services or the Cronet
        // native lib is not available (typical on ancient TV boxes).
        final engine = await CronetEngine.build(
          userAgent: 'Xtream-Codes-Api',
          enableBrotli: false,
          enableHttp2: true,
          enableQuic: false,
        );
        _cachedClient = CronetClient.fromCronetEngine(engine, closeEngine: true);
        return _cachedClient!;
      } catch (_) {
        // Cronet unavailable — fall through to IOClient.
      }
    }

    _cachedClient = io_client.IOClient();
    return _cachedClient!;
  }

  /// Whether the current cached client is Cronet (for diagnostic display).
  static bool get isCronet => _cachedClient is CronetClient;
}

import 'dart:io' show HttpClient;

import 'package:http/http.dart' as http;
import 'package:http/io_client.dart' as io_client;

/// Shared HTTP client for Xtream API calls.
///
/// We intentionally avoid `cronet_http` / JNI here: the `jni` plugin loads
/// native code during Flutter plugin registration, before Dart `main()` runs,
/// and that native init crashes on several Android TV boxes (Xiaomi Amlogic,
/// no Play Services). IOClient is sufficient for gadir.co.
class HttpFactory {
  static http.Client? _cachedClient;

  /// Returns a ready-to-use HTTP client. Safe to call multiple times.
  static Future<http.Client> get() async {
    if (_cachedClient != null) return _cachedClient!;

    final io = HttpClient()
      ..connectionTimeout = const Duration(seconds: 6)
      ..idleTimeout = const Duration(seconds: 10);
    _cachedClient = io_client.IOClient(io);
    return _cachedClient!;
  }

  /// Kept for diagnostic strings in the login screen.
  static bool get isCronet => false;
}

import 'dart:io';

import 'package:flutter/services.dart';

/// Android [HttpURLConnection] — same network stack as native IPTV apps (XCIPTV).
/// Avoids dart:io TLS/TCP fingerprints that some Xtream panels block with HTTP 512.
class NativeHttp {
  NativeHttp._();

  static const MethodChannel _channel = MethodChannel('com.gadir.tv/http');

  static Future<NativeHttpResponse> get(
    String url, {
    required String userAgent,
  }) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('NativeHttp is Android-only');
    }
    final result = await _channel.invokeMapMethod<String, dynamic>('get', {
      'url': url,
      'userAgent': userAgent,
    });
    if (result == null) {
      throw StateError('Native HTTP returned null');
    }
    return NativeHttpResponse(
      status: result['status'] as int,
      body: (result['body'] as String?) ?? '',
    );
  }
}

class NativeHttpResponse {
  const NativeHttpResponse({required this.status, required this.body});

  final int status;
  final String body;
}

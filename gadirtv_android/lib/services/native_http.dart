import 'dart:io';

import 'package:flutter/services.dart';

/// Android OkHttp — same HTTP stack XCIPTV / IPTV Smarters use.
class NativeHttp {
  NativeHttp._();

  static const MethodChannel _channel = MethodChannel('com.gadir.tv/http');

  static Future<NativeHttpResponse> request(
    String url, {
    required String userAgent,
    String method = 'GET',
  }) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('NativeHttp is Android-only');
    }
    final result = await _channel.invokeMapMethod<String, dynamic>('request', {
      'url': url,
      'userAgent': userAgent,
      'method': method,
    });
    if (result == null) {
      throw StateError('Native HTTP returned null');
    }
    return NativeHttpResponse(
      status: (result['status'] as num?)?.toInt() ?? 0,
      body: (result['body'] as String?) ?? '',
      client: (result['client'] as String?) ?? 'OkHttp',
      method: (result['method'] as String?) ?? method,
      error: result['error'] as String?,
    );
  }
}

class NativeHttpResponse {
  const NativeHttpResponse({
    required this.status,
    required this.body,
    required this.client,
    required this.method,
    this.error,
  });

  final int status;
  final String body;
  final String client;
  final String method;
  final String? error;
}

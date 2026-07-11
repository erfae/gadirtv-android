import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Platform helpers for Android TV / Fire TV / Google TV.
class TvUtils {
  TvUtils._();

  static const _channel = MethodChannel('com.gadir.tv/platform');

  static bool? _cachedIsTv;

  /// Whether the app is running on a TV form-factor (leanback launcher).
  static Future<bool> isAndroidTv() async {
    if (_cachedIsTv != null) return _cachedIsTv!;
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) {
      _cachedIsTv = false;
      return false;
    }
    try {
      final result = await _channel.invokeMethod<bool>('isAndroidTv');
      _cachedIsTv = result ?? false;
    } catch (_) {
      _cachedIsTv = false;
    }
    return _cachedIsTv!;
  }

  /// True when a software keyboard is unlikely (TV remote, gamepad).
  static Future<bool> prefersDpadNavigation() => isAndroidTv();
}

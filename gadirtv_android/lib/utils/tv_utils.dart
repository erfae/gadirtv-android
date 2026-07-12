import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

/// Platform helpers for Android TV / Fire TV / Google TV.
class TvUtils {
  TvUtils._();

  static const _channel = MethodChannel('com.gadir.tv/platform');

  static bool? _cachedIsTv;
  static bool? _cachedIsEmulator;

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

  /// Android Studio emulator — skip TV chrome, libVLC and landscape lock.
  static Future<bool> isEmulator() async {
    if (_cachedIsEmulator != null) return _cachedIsEmulator!;
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) {
      _cachedIsEmulator = false;
      return false;
    }
    try {
      final result = await _channel.invokeMethod<bool>('isEmulator');
      _cachedIsEmulator = result ?? false;
    } catch (_) {
      _cachedIsEmulator = false;
    }
    return _cachedIsEmulator!;
  }

  /// Opens a URL via Android VIEW intent (YouTube TV app when available).
  static Future<bool> openExternalUrl(String url) async {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) {
      final uri = Uri.tryParse(url);
      if (uri == null) return false;
      try {
        return await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (_) {
        return false;
      }
    }
    try {
      final result = await _channel.invokeMethod<bool>('openUrl', {'url': url});
      return result ?? false;
    } catch (_) {
      return false;
    }
  }
}

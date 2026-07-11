import 'package:flutter/services.dart';

/// Registers non-essential native plugins after the UI is allowed to start.
/// Cold start only loads shared_preferences; everything else waits until
/// Dart calls [ensureCore] (before home/images) or VLC before playback.
class PluginsBootstrap {
  static const _channel = MethodChannel('com.gadir.tv/plugins');
  static bool _coreReady = false;

  static Future<void> ensureCore() async {
    if (_coreReady) return;
    final ok = await _channel.invokeMethod<bool>('registerCore');
    _coreReady = ok == true;
  }
}

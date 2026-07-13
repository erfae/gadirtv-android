import 'package:flutter/services.dart';

/// Registers non-essential native plugins after the UI is allowed to start.
/// Cold start only loads shared_preferences; [ensureCore] registers ExoPlayer
/// (video_player), WebView, url_launcher, path_provider, etc. libVLC loads via
/// [VlcBootstrap.ensureReady] only when the user picks libVLC playback.
class PluginsBootstrap {
  static const _channel = MethodChannel('com.gadir.tv/plugins');
  static bool _coreReady = false;

  static Future<void> ensureCore() async {
    if (_coreReady) return;
    final ok = await _channel.invokeMethod<bool>('registerCore');
    _coreReady = ok == true;
  }
}

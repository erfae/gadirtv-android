import 'package:flutter/services.dart';

/// Defers loading the native libVLC plugin until the user actually plays
/// video. Registering flutter_vlc_player at engine startup pulls in heavy
/// native libraries before Dart main() finishes on some Amlogic TV boxes.
class VlcBootstrap {
  static const _channel = MethodChannel('com.gadir.tv/vlc');
  static bool _ready = false;

  static Future<void> ensureReady() async {
    if (_ready) return;
    final ok = await _channel.invokeMethod<bool>('register');
    _ready = ok == true;
    if (!_ready) {
      throw StateError('No se pudo inicializar el motor de video (libVLC)');
    }
  }
}

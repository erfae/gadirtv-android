import 'package:flutter_vlc_player/flutter_vlc_player.dart';

/// libVLC hardware-acceleration profile tuned for Xiaomi Mi Box / Mi TV Stick
/// (Amlogic S905/S905X/S912). `HwAcc.full` triggers GL SurfaceTexture crashes
/// on several Xiaomi firmwares (detachFromGLContext SIGABRT). `auto` lets
/// libVLC pick MediaCodec when safe and fall back to software otherwise.
class VlcDeviceProfile {
  static const HwAcc hwAcc = HwAcc.auto;

  static const List<String> vlcExtras = [
    '--no-drop-late-frames',
    '--no-skip-frames',
    // Amlogic OMX sometimes chokes on aggressive frame drop on live TS.
    '--avcodec-hw=any',
  ];
}

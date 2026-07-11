import 'package:flutter_vlc_player/flutter_vlc_player.dart';

/// libVLC hardware-acceleration defaults for Android TV boxes and phones.
///
/// `HwAcc.full` can trigger GL SurfaceTexture crashes on some TV firmwares
/// (Amlogic, MediaTek, etc.). `auto` lets libVLC pick MediaCodec when safe
/// and fall back to software decode otherwise — works across devices.
class VlcDeviceProfile {
  static const HwAcc hwAcc = HwAcc.auto;

  static const List<String> vlcExtras = [
    '--no-drop-late-frames',
    '--no-skip-frames',
    '--avcodec-hw=any',
  ];
}

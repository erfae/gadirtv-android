/// Coordinates the Live TV mini preview player with fullscreen playback.
///
/// On TV boxes two VLC instances can overlap audio if the preview is not
/// fully torn down before the full-screen player starts.
class LivePreviewGuard {
  LivePreviewGuard._();

  static Future<void> Function()? _stopPreview;

  static void register(Future<void> Function() stop) {
    _stopPreview = stop;
  }

  static void unregister() {
    _stopPreview = null;
  }

  /// Stops preview audio and waits for native decoders to release.
  static Future<void> stopAndWait() async {
    try {
      await _stopPreview?.call();
    } catch (_) {}
    await Future<void>.delayed(const Duration(milliseconds: 1100));
  }
}

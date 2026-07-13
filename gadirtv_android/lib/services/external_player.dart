import '../utils/tv_utils.dart';

/// Opens a stream URL in an external Android video player (VLC, MX Player…).
class ExternalPlayer {
  ExternalPlayer._();

  /// Returns true when a player app handled the stream.
  static Future<bool> launch(String url) async {
    final trimmed = url.trim();
    if (trimmed.isEmpty) return false;
    try {
      return await TvUtils.openExternalStream(trimmed);
    } catch (_) {
      return false;
    }
  }
}

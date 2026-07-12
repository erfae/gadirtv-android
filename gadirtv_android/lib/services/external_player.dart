import 'package:url_launcher/url_launcher.dart';

/// Opens a stream URL in an external Android video player via VIEW intent.
class ExternalPlayer {
  ExternalPlayer._();

  static Future<bool> launch(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    try {
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      return launched;
    } catch (_) {
      return false;
    }
  }
}

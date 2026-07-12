import 'package:flutter/material.dart';

import '../models/trailer_info.dart';
import '../screens/trailer_screen.dart';
import '../utils/tv_utils.dart';
import 'package:url_launcher/url_launcher.dart';

/// Opens YouTube trailers in-app (embedded WebView). Prefers Spanish when the
/// panel provides it; otherwise plays the original — no user dialog.
class TrailerLauncher {
  TrailerLauncher._();

  static final _youtubeHosts = {'www.youtube.com', 'youtube.com', 'm.youtube.com', 'youtu.be'};

  static String? extractYoutubeId(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;

    if (!trimmed.contains('/') && !trimmed.contains('.')) {
      return trimmed.length >= 8 ? trimmed : null;
    }

    final uri = Uri.tryParse(trimmed.startsWith('http') ? trimmed : 'https://$trimmed');
    if (uri == null) return null;

    if (uri.host == 'youtu.be') {
      final id = uri.pathSegments.isNotEmpty ? uri.pathSegments.first : '';
      return id.isEmpty ? null : id;
    }

    if (_youtubeHosts.contains(uri.host)) {
      if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'watch') {
        final id = uri.queryParameters['v'];
        if (id != null && id.isNotEmpty) return id;
      }
      if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'embed') {
        return uri.pathSegments.length > 1 ? uri.pathSegments[1] : null;
      }
      if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'shorts') {
        return uri.pathSegments.length > 1 ? uri.pathSegments[1] : null;
      }
    }

    return null;
  }

  /// Auto-pick Spanish trailer when available, else original. No language picker.
  static Future<bool> openFromInfo(
    BuildContext context,
    TrailerInfo info, {
    String title = 'Tráiler',
  }) async {
    if (!info.hasAny) return false;
    final url = info.preferredUrl;
    if (url == null) return false;
    return open(context, url, title: title, spanish: info.preferSpanishEmbed);
  }

  static Future<bool> open(
    BuildContext context,
    String url, {
    String title = 'Tráiler',
    bool spanish = false,
  }) async {
    final videoId = extractYoutubeId(url);
    if (videoId != null) {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => TrailerScreen(
            videoId: videoId,
            title: title,
            spanish: spanish,
          ),
          fullscreenDialog: true,
        ),
      );
      return true;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) return false;

    try {
      final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (launched) return true;
    } catch (_) {}

    final fallback = await TvUtils.openExternalUrl(uri.toString());
    if (!fallback && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No se pudo abrir el tráiler.'),
          duration: Duration(seconds: 4),
        ),
      );
    }
    return fallback;
  }
}

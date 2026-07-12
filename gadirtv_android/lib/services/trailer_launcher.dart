import 'package:flutter/material.dart';

import '../models/trailer_info.dart';
import '../screens/trailer_screen.dart';
import '../theme.dart';
import '../utils/tv_utils.dart';
import '../widgets/gtv_focusable.dart';
import 'package:url_launcher/url_launcher.dart';

/// Opens YouTube trailers in-app (embedded WebView). Falls back to external
/// player only for non-YouTube URLs.
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

  /// Shows Español / Versión original when both URLs exist; otherwise plays directly.
  static Future<bool> openFromInfo(
    BuildContext context,
    TrailerInfo info, {
    String title = 'Tráiler',
  }) async {
    if (!info.hasAny) return false;

    if (info.hasLanguageChoice) {
      final spanish = await _pickLanguage(context, title: title);
      if (spanish == null || !context.mounted) return false;
      final url = info.urlFor(spanish: spanish);
      if (url == null) return false;
      return open(context, url, title: title, spanish: spanish);
    }

    final url = info.originalUrl ?? info.spanishUrl;
    if (url == null) return false;

    // Single URL — still let user pick audio preference (same video, different embed params).
    final spanish = await _pickLanguage(context, title: title, singleVideo: true);
    if (spanish == null || !context.mounted) return false;
    return open(context, url, title: title, spanish: spanish);
  }

  static Future<bool?> _pickLanguage(
    BuildContext context, {
    required String title,
    bool singleVideo = false,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: GtvTheme.surface,
        title: Text(
          singleVideo ? 'Tráiler — idioma' : 'Elegir tráiler',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        content: Text(
          singleVideo
              ? 'Elige cómo reproducir el tráiler de «$title».'
              : 'Hay tráiler en español y en versión original.',
          style: const TextStyle(color: GtvTheme.textDim),
        ),
        actions: [
          GtvFocusable(
            autofocus: true,
            onTap: () => Navigator.of(ctx).pop(true),
            child: TextButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: const Text('ESPAÑOL', style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
          GtvFocusable(
            onTap: () => Navigator.of(ctx).pop(false),
            child: TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: const Text('VERSIÓN ORIGINAL', style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
        ],
      ),
    );
  }

  static Future<bool> open(
    BuildContext context,
    String url, {
    String title = 'Tráiler',
    bool spanish = true,
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

/// Shared helpers for Xtream API field variance across panels.

/// Strip simple HTML tags some panels embed in plot fields.
String stripHtml(String raw) {
  if (raw.isEmpty) return raw;
  return raw
      .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n')
      .replaceAll(RegExp(r'<[^>]+>'), '')
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&amp;', '&')
      .replaceAll('&quot;', '"')
      .trim();
}

String extractPlot(
  Map<String, dynamic> info, {
  Map<String, dynamic>? extra,
  String fallback = '',
}) {
  final sources = [info, if (extra != null) extra];
  for (final map in sources) {
    for (final key in [
      'plot',
      'description',
      'overview',
      'synopsis',
      'bio',
      'storyline',
      'summary',
    ]) {
      final v = stripHtml((map[key] ?? '').toString().trim());
      if (v.isNotEmpty) return v;
    }
  }
  return stripHtml(fallback.trim());
}

/// Vod stream id for playback — some panels return a different id in movie_data.
dynamic movieStreamId(Map<String, dynamic> vodInfo, dynamic listId) {
  final md = vodInfo['movie_data'];
  if (md is Map) {
    final sid = md['stream_id'] ?? md['id'];
    if (sid != null && sid.toString().isNotEmpty) return sid;
  }
  return listId;
}

String pickContainerExt(
  Map<String, dynamic>? primary,
  Map<String, dynamic>? secondary, {
  String fallback = 'mp4',
}) {
  for (final map in [primary, secondary]) {
    if (map == null) continue;
    final v = (map['container_extension'] ?? map['target_container'] ?? '')
        .toString()
        .trim();
    if (v.isNotEmpty) return v;
  }
  final fb = fallback.trim();
  return fb.isNotEmpty ? fb : 'mkv';
}

String episodeStreamId(Map<String, dynamic> episode) {
  final id = (episode['id'] ?? episode['stream_id'] ?? episode['episode_id'] ?? '')
      .toString()
      .trim();
  return id;
}

/// Best backdrop / fanart URL for hero screens (falls back to poster/cover).
String extractBackdrop(
  Map<String, dynamic> info, {
  String fallback = '',
}) {
  for (final key in [
    'backdrop_path',
    'movie_image',
    'cover_big',
    'backdrop',
    'fanart',
    'stream_icon',
    'cover',
  ]) {
    final v = (info[key] ?? '').toString().trim();
    if (v.isNotEmpty) return v;
  }
  return fallback.trim();
}

String? extractTrailer(Map<String, dynamic> meta) {
  for (final key in ['youtube_trailer', 'trailer', 'youtube_id']) {
    final v = (meta[key] ?? '').toString().trim();
    if (v.isEmpty) continue;
    if (v.startsWith('http')) return v;
    if (v.length >= 8) return 'https://www.youtube.com/watch?v=$v';
  }
  return null;
}

/// Shared helpers for Xtream API field variance across panels.

import '../models/trailer_info.dart';

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
  final info = extractTrailerInfo(meta);
  return info.originalUrl ?? info.spanishUrl;
}

String? _readTrailerField(Map<String, dynamic> meta, List<String> keys) {
  for (final key in keys) {
    final v = (meta[key] ?? '').toString().trim();
    if (v.isEmpty) continue;
    if (v.startsWith('http')) return v;
    if (v.length >= 8) return 'https://www.youtube.com/watch?v=$v';
  }
  return null;
}

TrailerInfo extractTrailerInfo(Map<String, dynamic> meta) {
  final spanish = _readTrailerField(meta, [
    'youtube_trailer_es',
    'trailer_es',
    'trailer_spanish',
    'trailer_latino',
    'trailer_doblado',
    'trailer_castellano',
  ]);
  final original = _readTrailerField(meta, [
    'youtube_trailer',
    'trailer',
    'youtube_id',
    'trailer_en',
    'trailer_original',
    'trailer_vo',
  ]);
  return TrailerInfo(
    originalUrl: original ?? spanish,
    spanishUrl: spanish ?? original,
  );
}

int parseSeasonNumber(String key) {
  final match = RegExp(r'\d+').firstMatch(key);
  return int.tryParse(match?.group(0) ?? '') ?? 0;
}

/// Sorted season keys from Xtream `episodes` map (handles "1", "Season 1", etc.).
List<String> parseSeasonKeys(Map<String, dynamic> info) {
  final ep = info['episodes'];
  if (ep is! Map) return const [];
  final keys = ep.keys.map((k) => k.toString()).toList();
  keys.sort((a, b) => parseSeasonNumber(a).compareTo(parseSeasonNumber(b)));
  return keys;
}

List<Map<String, dynamic>> episodesForSeason(Map<String, dynamic> info, String season) {
  final ep = info['episodes'];
  if (ep is! Map) return const [];
  dynamic list = ep[season];
  if (list == null) {
    final n = int.tryParse(season);
    if (n != null) list = ep[n];
  }
  if (list is! List) return const [];
  return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
}

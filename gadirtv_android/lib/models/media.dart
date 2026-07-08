/// Xtream data models — thin, JSON-forgiving wrappers around the raw API
/// responses. Every field defaults to a safe empty value because gadir.co
/// occasionally returns nulls or strings where numbers are expected.

class Category {
  final String id;
  final String name;

  const Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> j) => Category(
        id: (j['category_id'] ?? '').toString(),
        name: (j['category_name'] ?? '').toString(),
      );
}

class LiveChannel {
  final int streamId;
  final String name;
  final String icon;
  final String categoryId;
  final int addedTs;
  final String epgChannelId;

  const LiveChannel({
    required this.streamId,
    required this.name,
    required this.icon,
    required this.categoryId,
    required this.addedTs,
    required this.epgChannelId,
  });

  factory LiveChannel.fromJson(Map<String, dynamic> j) => LiveChannel(
        streamId: _int(j['stream_id']),
        name: (j['name'] ?? '').toString(),
        icon: (j['stream_icon'] ?? '').toString(),
        categoryId: (j['category_id'] ?? '').toString(),
        addedTs: _int(j['added']),
        epgChannelId: (j['epg_channel_id'] ?? '').toString(),
      );
}

class Movie {
  final int streamId;
  final String name;
  final String icon;
  final String categoryId;
  final int addedTs;
  final double rating;
  final String containerExt;

  const Movie({
    required this.streamId,
    required this.name,
    required this.icon,
    required this.categoryId,
    required this.addedTs,
    required this.rating,
    required this.containerExt,
  });

  factory Movie.fromJson(Map<String, dynamic> j) => Movie(
        streamId: _int(j['stream_id']),
        name: (j['name'] ?? '').toString(),
        icon: (j['stream_icon'] ?? '').toString(),
        categoryId: (j['category_id'] ?? '').toString(),
        addedTs: _int(j['added']),
        rating: _double(j['rating_5based'] ?? j['rating']),
        containerExt: (j['container_extension'] ?? 'mp4').toString(),
      );
}

class Series {
  final int seriesId;
  final String name;
  final String cover;
  final String categoryId;
  final int lastModifiedTs;
  final double rating;
  final String plot;

  const Series({
    required this.seriesId,
    required this.name,
    required this.cover,
    required this.categoryId,
    required this.lastModifiedTs,
    required this.rating,
    required this.plot,
  });

  factory Series.fromJson(Map<String, dynamic> j) => Series(
        seriesId: _int(j['series_id']),
        name: (j['name'] ?? '').toString(),
        cover: (j['cover'] ?? '').toString(),
        categoryId: (j['category_id'] ?? '').toString(),
        lastModifiedTs: _int(j['last_modified']),
        rating: _double(j['rating_5based'] ?? j['rating']),
        plot: (j['plot'] ?? '').toString(),
      );
}

int _int(dynamic v) {
  if (v == null) return 0;
  if (v is int) return v;
  if (v is double) return v.toInt();
  return int.tryParse(v.toString()) ?? 0;
}

double _double(dynamic v) {
  if (v == null) return 0;
  if (v is num) return v.toDouble();
  return double.tryParse(v.toString()) ?? 0;
}

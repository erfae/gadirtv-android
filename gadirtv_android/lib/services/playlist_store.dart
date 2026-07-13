import '../models/media.dart';
import '../models/profile.dart';
import 'api_service.dart';

/// In-memory Xtream playlist — loaded once at bootstrap, read by all tabs.
class PlaylistStore {
  PlaylistStore._();

  static final PlaylistStore instance = PlaylistStore._();

  String? _profileId;
  bool _ready = false;

  List<Category> liveCategories = const [];
  List<LiveChannel> liveStreams = const [];
  List<Category> vodCategories = const [];
  List<Movie> vodStreams = const [];
  List<Category> seriesCategories = const [];
  List<Series> seriesList = const [];

  bool get isReady => _ready;
  String? get profileId => _profileId;

  bool isLoadedFor(Profile profile) => _ready && _profileId == profile.id;

  void clear() {
    _profileId = null;
    _ready = false;
    liveCategories = const [];
    liveStreams = const [];
    vodCategories = const [];
    vodStreams = const [];
    seriesCategories = const [];
    seriesList = const [];
  }

  /// Preload the full playlist in parallel batches.
  Future<void> preload(
    Profile profile, {
    void Function(String message, double progress)? onProgress,
  }) async {
    if (profile.isM3U) {
      _profileId = profile.id;
      _ready = true;
      onProgress?.call('Playlist M3U lista', 1);
      return;
    }

    if (isLoadedFor(profile)) {
      onProgress?.call('Contenido listo', 1);
      return;
    }

    clear();
    final api = ApiService();

    onProgress?.call('Cargando TV en vivo…', 0.05);
    final liveBatch = await Future.wait([
      api.liveCategories(profile),
      api.liveStreams(profile),
    ]);

    onProgress?.call('Cargando películas…', 0.35);
    final vodBatch = await Future.wait([
      api.vodCategories(profile),
      api.vodStreams(profile),
    ]);

    onProgress?.call('Cargando series…', 0.65);
    final seriesBatch = await Future.wait([
      api.seriesCategories(profile),
      api.seriesList(profile),
    ]);

    liveCategories = (liveBatch[0] as List)
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList();
    liveStreams = (liveBatch[1] as List)
        .map((e) => LiveChannel.fromJson(e as Map<String, dynamic>))
        .toList();

    vodCategories = (vodBatch[0] as List)
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList();
    vodStreams = (vodBatch[1] as List)
        .map((e) => Movie.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.addedTs.compareTo(a.addedTs));

    seriesCategories = (seriesBatch[0] as List)
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList();
    seriesList = (seriesBatch[1] as List)
        .map((e) => Series.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.lastModifiedTs.compareTo(a.lastModifiedTs));

    _profileId = profile.id;
    _ready = true;
    onProgress?.call('¡Listo!', 1);
  }

  List<LiveChannel> liveForCategory(String? categoryId) {
    if (categoryId == null) return liveStreams;
    return liveStreams.where((c) => c.categoryId == categoryId).toList();
  }

  List<Movie> moviesForCategory(String? categoryId) {
    if (categoryId == null) return vodStreams;
    return vodStreams.where((m) => m.categoryId == categoryId).toList();
  }

  List<Series> seriesForCategory(String? categoryId) {
    if (categoryId == null) return seriesList;
    return seriesList.where((s) => s.categoryId == categoryId).toList();
  }
}

import 'package:flutter/material.dart';

import '../../i18n/strings.dart';
import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../widgets/category_list_rail.dart';
import '../../widgets/poster_card.dart';

/// Movies (VOD) tab — categories on top, portrait poster grid below.
///
/// Adds a "★ Favoritos" chip and a star toggle on every poster (identical
/// UX to Live TV).
class MoviesTab extends StatefulWidget {
  const MoviesTab({
    super.key,
    required this.profile,
    required this.onOpen,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpen;

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab> {
  static const _favoritesId = '__favorites__';
  static const _allId = '__all__';

  final _api = ApiService();
  final _favs = FavoritesStore();

  List<Category> _categories = const [];
  List<Movie> _movies = const [];
  List<Movie> _allMovies = const [];
  Set<int> _favoriteIds = <int>{};

  String _selected = _allId;
  bool _loadingCats = true;
  bool _loading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _boot();
  }

  Future<void> _boot() async {
    try {
      final results = await Future.wait([
        _api.vodCategories(widget.profile),
        _favs.loadAll(FavoritesStore.kindMovie),
      ]);
      if (!mounted) return;
      setState(() {
        _categories = (results[0] as List)
            .map((e) => Category.fromJson(e as Map<String, dynamic>))
            .toList();
        _favoriteIds = results[1] as Set<int>;
        _loadingCats = false;
      });
      await _load(_allId);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loadingCats = false;
        _error = 'No se pudieron cargar las categorías';
      });
    }
  }

  Future<void> _load(String id) async {
    setState(() {
      _selected = id;
      _loading = true;
      _error = null;
    });

    if (id == _favoritesId) {
      final list = _allMovies.where((m) => _favoriteIds.contains(m.streamId)).toList();
      if (!mounted) return;
      setState(() {
        _movies = list;
        _loading = false;
      });
      return;
    }

    try {
      final raw = await _api.vodStreams(
        widget.profile,
        categoryId: id == _allId ? null : id,
      );
      if (!mounted) return;
      final list = raw.map(Movie.fromJson).toList()
        ..sort((a, b) => b.addedTs.compareTo(a.addedTs));
      setState(() {
        _movies = list;
        _loading = false;
        if (id == _allId) _allMovies = list;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = 'No se pudieron cargar las películas';
      });
    }
  }

  Future<void> _toggleFavorite(Movie m) async {
    final nowFav = await _favs.toggle(FavoritesStore.kindMovie, m.streamId);
    if (!mounted) return;
    setState(() {
      if (nowFav) {
        _favoriteIds.add(m.streamId);
      } else {
        _favoriteIds.remove(m.streamId);
        if (_selected == _favoritesId) {
          _movies = _movies.where((x) => x.streamId != m.streamId).toList();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingCats) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }

    final chips = <(String, String)>[
      (_allId, AppI18n.of(context).categoryAll),
      (_favoritesId, AppI18n.of(context).categoryFavorites),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return Row(
      children: [
        SizedBox(
          width: 150,
          child: CategoryListRail(
            categories: chips,
            selectedId: _selected,
            onSelected: _load,
          ),
        ),
        const VerticalDivider(width: 1, color: GtvTheme.border),
        Expanded(child: _buildGrid()),
      ],
    );
  }

  Widget _buildGrid() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_movies.isEmpty) {
      final msg = _selected == _favoritesId
          ? 'Todavía no has marcado ninguna película como favorita.\nToca la estrella de una película para añadirla.'
          : 'No hay películas en esta categoría';
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(msg, textAlign: TextAlign.center, style: const TextStyle(color: GtvTheme.textDim, height: 1.5)),
        ),
      );
    }

    return LayoutBuilder(builder: (context, constraints) {
      final w = constraints.maxWidth;
      final cols = w >= 1400 ? 8 : w >= 1100 ? 7 : w >= 850 ? 6 : w >= 640 ? 5 : w >= 480 ? 4 : 3;
      return GridView.builder(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: cols,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.58,
        ),
        itemCount: _movies.length,
        itemBuilder: (_, i) {
          final m = _movies[i];
          return PosterCard(
            title: m.name,
            imageUrl: m.icon,
            rating: m.rating,
            onTap: () => widget.onOpen(m),
            isFavorite: _favoriteIds.contains(m.streamId),
            onToggleFavorite: () => _toggleFavorite(m),
          );
        },
      );
    });
  }
}

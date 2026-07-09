import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
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
      (_allId, 'Todas'),
      (_favoritesId, '★ Favoritos'),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return Column(
      children: [
        const SizedBox(height: 12),
        CategoryStrip(labels: chips, selectedId: _selected, onSelected: _load),
        const SizedBox(height: 16),
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

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
      itemCount: _movies.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (_, i) {
        final m = _movies[i];
        return _MovieRow(
          movie: m,
          isFavorite: _favoriteIds.contains(m.streamId),
          onTap: () => widget.onOpen(m),
          onToggleFavorite: () => _toggleFavorite(m),
        );
      },
    );
  }
}

class _MovieRow extends StatelessWidget {
  const _MovieRow({
    required this.movie,
    required this.isFavorite,
    required this.onTap,
    required this.onToggleFavorite,
  });

  final Movie movie;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: GtvTheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: GtvTheme.border),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 60,
                height: 84,
                child: movie.icon.isNotEmpty
                    ? Image.network(movie.icon, fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Container(
                            color: GtvTheme.bg,
                            child: const Icon(Icons.movie_rounded, color: GtvTheme.textDim)))
                    : Container(color: GtvTheme.bg, child: const Icon(Icons.movie_rounded, color: GtvTheme.textDim)),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.name,
                      style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 6),
                  if (movie.rating > 0)
                    Row(children: [
                      const Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(movie.rating.toStringAsFixed(1), style: const TextStyle(color: Colors.white70, fontSize: 12)),
                    ]),
                ],
              ),
            ),
            IconButton(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: isFavorite ? GtvTheme.red : Colors.white54),
              onPressed: onToggleFavorite,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
import '../../widgets/poster_card.dart';

/// Series tab — categories on top, portrait cover grid below.
///
/// Adds "★ Favoritos" chip and a star toggle on every poster (same UX
/// as Live TV and Películas).
class SeriesTab extends StatefulWidget {
  const SeriesTab({
    super.key,
    required this.profile,
    required this.onOpen,
  });

  final Profile profile;
  final ValueChanged<Series> onOpen;

  @override
  State<SeriesTab> createState() => _SeriesTabState();
}

class _SeriesTabState extends State<SeriesTab> {
  static const _favoritesId = '__favorites__';
  static const _allId = '__all__';

  final _api = ApiService();
  final _favs = FavoritesStore();

  List<Category> _categories = const [];
  List<Series> _series = const [];
  List<Series> _allSeries = const [];
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
        _api.seriesCategories(widget.profile),
        _favs.loadAll(FavoritesStore.kindSeries),
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
      final list = _allSeries.where((s) => _favoriteIds.contains(s.seriesId)).toList();
      if (!mounted) return;
      setState(() {
        _series = list;
        _loading = false;
      });
      return;
    }

    try {
      final raw = await _api.seriesList(
        widget.profile,
        categoryId: id == _allId ? null : id,
      );
      if (!mounted) return;
      final list = raw.map(Series.fromJson).toList()
        ..sort((a, b) => b.lastModifiedTs.compareTo(a.lastModifiedTs));
      setState(() {
        _series = list;
        _loading = false;
        if (id == _allId) _allSeries = list;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = 'No se pudieron cargar las series';
      });
    }
  }

  Future<void> _toggleFavorite(Series s) async {
    final nowFav = await _favs.toggle(FavoritesStore.kindSeries, s.seriesId);
    if (!mounted) return;
    setState(() {
      if (nowFav) {
        _favoriteIds.add(s.seriesId);
      } else {
        _favoriteIds.remove(s.seriesId);
        if (_selected == _favoritesId) {
          _series = _series.where((x) => x.seriesId != s.seriesId).toList();
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
    if (_series.isEmpty) {
      final msg = _selected == _favoritesId
          ? 'Todavía no has marcado ninguna serie como favorita.\nToca la estrella de una serie para añadirla.'
          : 'No hay series en esta categoría';
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(msg, textAlign: TextAlign.center, style: const TextStyle(color: GtvTheme.textDim, height: 1.5)),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
      itemCount: _series.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (_, i) {
        final s = _series[i];
        return _SeriesRow(
          series: s,
          isFavorite: _favoriteIds.contains(s.seriesId),
          onTap: () => widget.onOpen(s),
          onToggleFavorite: () => _toggleFavorite(s),
        );
      },
    );
  }
}

class _SeriesRow extends StatelessWidget {
  const _SeriesRow({
    required this.series,
    required this.isFavorite,
    required this.onTap,
    required this.onToggleFavorite,
  });

  final Series series;
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
                child: series.cover.isNotEmpty
                    ? Image.network(series.cover, fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Container(
                            color: GtvTheme.bg,
                            child: const Icon(Icons.tv_rounded, color: GtvTheme.textDim)))
                    : Container(color: GtvTheme.bg, child: const Icon(Icons.tv_rounded, color: GtvTheme.textDim)),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(series.name,
                      style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 6),
                  if (series.rating.isNotEmpty)
                    Row(children: [
                      const Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(series.rating, style: const TextStyle(color: Colors.white70, fontSize: 12)),
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

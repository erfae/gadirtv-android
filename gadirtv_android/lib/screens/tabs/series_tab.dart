import 'package:flutter/material.dart';

import '../../i18n/strings.dart';
import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../widgets/category_list_rail.dart';
import '../../widgets/poster_card.dart';
import '../../widgets/poster_grid_focus.dart';

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

  final _railKey = GlobalKey<CategoryListRailState>();
  final _gridFocus = PosterGridFocus();

  @override
  void initState() {
    super.initState();
    _boot();
  }

  @override
  void dispose() {
    _gridFocus.dispose();
    super.dispose();
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
      _gridFocus.rebuild(list.length);
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
      _gridFocus.rebuild(list.length);
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
      (_allId, AppI18n.of(context).categoryAll),
      (_favoritesId, AppI18n.of(context).categoryFavorites),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Row(
      children: [
        FocusTraversalOrder(
          order: const NumericFocusOrder(1),
          child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SizedBox(
          width: TvLayout.categoryRailWidth(context),
          child: CategoryListRail(
            key: _railKey,
            categories: chips,
            selectedId: _selected,
            onSelected: _load,
            onMoveRight: () => _gridFocus.focus(0),
          ),
        ),
        ),
        ),
        const VerticalDivider(width: 1, color: GtvTheme.border),
        FocusTraversalOrder(
          order: const NumericFocusOrder(2),
          child: Expanded(child: _buildGrid()),
        ),
      ],
    ),
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

    return LayoutBuilder(builder: (context, constraints) {
      final w = constraints.maxWidth;
      final cols = w >= 1400 ? 8 : w >= 1100 ? 7 : w >= 850 ? 6 : w >= 640 ? 5 : w >= 480 ? 4 : 3;
      _gridFocus.cols = cols;
      if (_gridFocus.nodes.length != _series.length) {
        _gridFocus.rebuild(_series.length);
      }
      return GridView.builder(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: cols,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.58,
        ),
        itemCount: _series.length,
        itemBuilder: (_, i) {
          final s = _series[i];
          final node = i < _gridFocus.nodes.length ? _gridFocus.nodes[i] : null;
          return PosterCard(
            focusNode: node,
            autofocus: i == 0,
            title: s.name,
            imageUrl: s.cover,
            rating: s.rating,
            onTap: () => widget.onOpen(s),
            isFavorite: _favoriteIds.contains(s.seriesId),
            onToggleFavorite: () => _toggleFavorite(s),
            onMoveLeft: () => _gridFocus.move(i, -1, 0, onLeaveLeft: () => _railKey.currentState?.focusSelected()),
            onMoveRight: () => _gridFocus.move(i, 1, 0),
            onMoveUp: () => _gridFocus.move(i, 0, -1),
            onMoveDown: () => _gridFocus.move(i, 0, 1),
          );
        },
      );
    });
  }
}

import 'package:flutter/material.dart';

import '../../i18n/strings.dart';
import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/favorites_store.dart';
import '../../services/gtv_tv_focus_registry.dart';
import '../../services/playlist_store.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../widgets/category_list_rail.dart';
import '../../widgets/poster_card.dart';
import '../../widgets/poster_grid_focus.dart';

/// Movies (VOD) tab — categories on top, portrait poster grid below.
class MoviesTab extends StatefulWidget {
  const MoviesTab({
    super.key,
    required this.profile,
    required this.onOpen,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpen;

  @override
  State<MoviesTab> createState() => MoviesTabState();
}

class MoviesTabState extends State<MoviesTab> with AutomaticKeepAliveClientMixin {
  static const _favoritesId = '__favorites__';
  static const _allId = '__all__';

  final _favs = FavoritesStore();

  List<Category> _categories = const [];
  List<Movie> _movies = const [];
  List<Movie> _allMovies = const [];
  Set<int> _favoriteIds = <int>{};

  String _selected = _allId;
  bool _loadingCats = true;
  bool _loading = false;
  String? _error;

  final _railKey = GlobalKey<CategoryListRailState>();
  final _gridFocus = PosterGridFocus();

  @override
  bool get wantKeepAlive => true;

  void focusInitial() {
    _railKey.currentState?.focusSelected();
  }

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
      final store = PlaylistStore.instance;
      final favs = await _favs.loadAll(FavoritesStore.kindMovie);
      if (!mounted) return;
      if (!store.isLoadedFor(widget.profile)) {
        setState(() {
          _loadingCats = false;
          _error = 'Contenido no cargado. Reinicia la app.';
        });
        return;
      }
      setState(() {
        _categories = store.vodCategories;
        _allMovies = store.vodStreams;
        _favoriteIds = favs;
        _loadingCats = false;
      });
      await _load(_allId);
      if (mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _railKey.currentState?.focusSelected();
        });
      }
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
      _gridFocus.rebuild(list.length);
      return;
    }

    final list = PlaylistStore.instance.moviesForCategory(id == _allId ? null : id);
    if (!mounted) return;
    setState(() {
      _movies = list;
      _loading = false;
    });
    _gridFocus.rebuild(list.length);
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
    if (_selected == _favoritesId) {
      _gridFocus.rebuild(_movies.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                  onMoveDown: GtvTvFocusRegistry.focusBottomNav,
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
      _gridFocus.cols = cols;
      final lastRow = _movies.isEmpty ? 0 : (_movies.length - 1) ~/ cols;
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
          final node = i < _gridFocus.nodes.length ? _gridFocus.nodes[i] : null;
          return PosterCard(
            focusNode: node,
            title: m.name,
            imageUrl: m.icon,
            rating: m.rating,
            onTap: () => widget.onOpen(m),
            isFavorite: _favoriteIds.contains(m.streamId),
            onToggleFavorite: () => _toggleFavorite(m),
            onMoveLeft: () => _gridFocus.move(i, -1, 0, onLeaveLeft: () => _railKey.currentState?.focusSelected()),
            onMoveRight: () => _gridFocus.move(i, 1, 0),
            onMoveUp: () => _gridFocus.move(i, 0, -1),
            onMoveDown: () {
              final row = i ~/ cols;
              if (row >= lastRow) {
                GtvTvFocusRegistry.focusBottomNav();
              } else {
                _gridFocus.move(i, 0, 1);
              }
            },
          );
        },
      );
    });
  }
}

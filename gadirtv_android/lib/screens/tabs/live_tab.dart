import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
import '../../widgets/poster_card.dart';

/// Live TV tab — category chips on top, grid of channel logos below.
///
/// Adds a "★ Favoritos" chip pinned right after "Todos". Every channel poster
/// carries a small star: tap it to move the channel in and out of favorites.
/// When the Favoritos chip is selected, only starred channels are shown.
class LiveTab extends StatefulWidget {
  const LiveTab({
    super.key,
    required this.profile,
    required this.onPlay,
  });

  final Profile profile;
  final ValueChanged<LiveChannel> onPlay;

  @override
  State<LiveTab> createState() => _LiveTabState();
}

class _LiveTabState extends State<LiveTab> {
  static const _favoritesId = '__favorites__';
  static const _allId = '__all__';

  final _api = ApiService();
  final _favs = FavoritesStore();

  List<Category> _categories = const [];
  List<LiveChannel> _channels = const []; // channels in current view
  List<LiveChannel> _allChannels = const []; // full unfiltered cache
  Set<int> _favoriteIds = <int>{};

  String _selected = _allId;
  bool _loadingCats = true;
  bool _loadingChans = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _boot();
  }

  Future<void> _boot() async {
    try {
      final results = await Future.wait([
        _api.liveCategories(widget.profile),
        _favs.loadAll(FavoritesStore.kindLive),
      ]);
      if (!mounted) return;
      setState(() {
        _categories = (results[0] as List)
            .map((e) => Category.fromJson(e as Map<String, dynamic>))
            .toList();
        _favoriteIds = results[1] as Set<int>;
        _loadingCats = false;
      });
      await _loadChannels(_allId);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loadingCats = false;
        _error = 'No se pudieron cargar las categorías';
      });
    }
  }

  Future<void> _loadChannels(String id) async {
    setState(() {
      _selected = id;
      _loadingChans = true;
      _error = null;
    });

    // Favoritos view: filter the in-memory `_allChannels` — no network hit.
    if (id == _favoritesId) {
      final list = _allChannels.where((c) => _favoriteIds.contains(c.streamId)).toList();
      if (!mounted) return;
      setState(() {
        _channels = list;
        _loadingChans = false;
      });
      return;
    }

    try {
      final raw = await _api.liveStreams(
        widget.profile,
        categoryId: id == _allId ? null : id,
      );
      if (!mounted) return;
      final parsed = raw.map(LiveChannel.fromJson).toList();
      setState(() {
        _channels = parsed;
        _loadingChans = false;
        if (id == _allId) _allChannels = parsed;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loadingChans = false;
        _error = 'No se pudieron cargar los canales';
      });
    }
  }

  Future<void> _toggleFavorite(LiveChannel c) async {
    final nowFav = await _favs.toggle(FavoritesStore.kindLive, c.streamId);
    if (!mounted) return;
    setState(() {
      if (nowFav) {
        _favoriteIds.add(c.streamId);
      } else {
        _favoriteIds.remove(c.streamId);
        // If we're inside Favoritos and just unstarred, drop the tile too.
        if (_selected == _favoritesId) {
          _channels = _channels.where((x) => x.streamId != c.streamId).toList();
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
      (_allId, 'Todos'),
      (_favoritesId, '★ Favoritos'),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return Column(
      children: [
        const SizedBox(height: 12),
        CategoryStrip(
          labels: chips,
          selectedId: _selected,
          onSelected: _loadChannels,
        ),
        const SizedBox(height: 16),
        Expanded(child: _buildGrid()),
      ],
    );
  }

  Widget _buildGrid() {
    if (_loadingChans) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_channels.isEmpty) {
      final msg = _selected == _favoritesId
          ? 'Todavía no has marcado ningún canal como favorito.\nToca la estrella de un canal para añadirlo.'
          : 'No hay canales en esta categoría';
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            msg,
            textAlign: TextAlign.center,
            style: const TextStyle(color: GtvTheme.textDim, height: 1.5),
          ),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 32),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 16 / 11,
      ),
      itemCount: _channels.length,
      itemBuilder: (_, i) {
        final c = _channels[i];
        return PosterCard(
          title: c.name,
          imageUrl: c.icon,
          aspectRatio: 16 / 9,
          onTap: () => widget.onPlay(c),
          autofocus: i == 0,
          isFavorite: _favoriteIds.contains(c.streamId),
          onToggleFavorite: () => _toggleFavorite(c),
        );
      },
    );
  }
}

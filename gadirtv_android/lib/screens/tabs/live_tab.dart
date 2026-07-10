import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../theme.dart';
import '../../widgets/category_list_rail.dart';

/// Live TV tab — split view:
///   ┌─ Mini player (with mute + fullscreen buttons) ─┐
///   │                                                 │
///   ├─ EPG (Ahora / Después) ────────────────────────┤
///   │  Groups list  │  Channels list                  │
///   └───────────────┴────────────────────────────────┘
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
  List<LiveChannel> _channels = const [];
  List<LiveChannel> _allChannels = const [];
  Set<int> _favoriteIds = <int>{};

  String _selected = _allId;
  bool _loadingCats = true;
  bool _loadingChans = false;
  String? _error;

  LiveChannel? _current;
  String? _epgNow;
  String? _epgNext;

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
        if (_selected == _favoritesId) {
          _channels = _channels.where((x) => x.streamId != c.streamId).toList();
        }
      }
    });
  }

  Future<void> _preview(LiveChannel c) async {
    setState(() {
      _current = c;
      _epgNow = null;
      _epgNext = null;
    });
    try {
      final ep = await _api.shortEpg(widget.profile, c.streamId, limit: 2);
      if (!mounted) return;
      setState(() {
        _epgNow = ep.isNotEmpty ? _decodeTitle(ep[0]['title']) : null;
        _epgNext = ep.length > 1 ? _decodeTitle(ep[1]['title']) : null;
      });
    } catch (_) {
      // ignore
    }
  }

  String? _decodeTitle(dynamic raw) {
    final s = (raw ?? '').toString();
    if (s.isEmpty) return null;
    try {
      return utf8.decode(base64.decode(s));
    } catch (_) {
      return s;
    }
  }

  void _fullscreen() {
    if (_current == null) return;
    widget.onPlay(_current!);
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingCats) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }

    final categories = <(String, String)>[
      (_allId, 'Todos'),
      (_favoritesId, '★ Favoritos'),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    final streamUrl = _current == null
        ? null
        : _api.streamUrl(widget.profile,
            kind: 'live', streamId: _current!.streamId, ext: 'ts');

    return Column(
      children: [
        _MiniPlayer(
          key: ValueKey(_current?.streamId ?? -1),
          streamUrl: streamUrl,
          title: _current?.name ?? 'Selecciona un canal para previsualizar',
          onFullscreen: _fullscreen,
        ),
        _EpgBar(now: _epgNow, next: _epgNext),
        const Divider(height: 1, color: GtvTheme.border),
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: CategoryListRail(
                  categories: categories,
                  selectedId: _selected,
                  onSelected: _loadChannels,
                ),
              ),
              const VerticalDivider(width: 1, color: GtvTheme.border),
              Expanded(child: _buildChannels()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChannels() {
    if (_loadingChans) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_channels.isEmpty) {
      final msg = _selected == _favoritesId
          ? 'Todavía no has marcado ningún canal como favorito.'
          : 'No hay canales en esta categoría';
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(msg, textAlign: TextAlign.center, style: const TextStyle(color: GtvTheme.textDim, height: 1.5)),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
      itemCount: _channels.length,
      separatorBuilder: (_, __) => const SizedBox(height: 6),
      itemBuilder: (_, i) {
        final c = _channels[i];
        final selected = _current?.streamId == c.streamId;
        return _ChannelRow(
          channel: c,
          isFavorite: _favoriteIds.contains(c.streamId),
          selected: selected,
          onTap: () => _preview(c),
          onDoubleTap: () => widget.onPlay(c),
          onToggleFavorite: () => _toggleFavorite(c),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────

class _MiniPlayer extends StatefulWidget {
  const _MiniPlayer({
    super.key,
    required this.streamUrl,
    required this.title,
    required this.onFullscreen,
  });

  final String? streamUrl;
  final String title;
  final VoidCallback onFullscreen;

  @override
  State<_MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<_MiniPlayer> {
  late final Player _player = Player();
  late final VideoController _controller = VideoController(_player);
  bool _muted = false;
  bool _buffering = false;

  @override
  void initState() {
    super.initState();
    _player.stream.buffering.listen((b) {
      if (mounted) setState(() => _buffering = b);
    });
    _open();
  }

  @override
  void didUpdateWidget(covariant _MiniPlayer old) {
    super.didUpdateWidget(old);
    if (old.streamUrl != widget.streamUrl) _open();
  }

  Future<void> _open() async {
    if (widget.streamUrl == null || widget.streamUrl!.isEmpty) {
      await _player.stop();
      return;
    }
    await _player.open(Media(widget.streamUrl!), play: true);
    await _player.setVolume(_muted ? 0 : 100);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _toggleMute() {
    setState(() => _muted = !_muted);
    _player.setVolume(_muted ? 0 : 100);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.black,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (widget.streamUrl != null)
              Video(
                controller: _controller,
                controls: NoVideoControls,
                fit: BoxFit.contain,
              )
            else
              const Center(
                child: Icon(Icons.live_tv_rounded, color: GtvTheme.textDim, size: 48),
              ),
            if (_buffering && widget.streamUrl != null)
              const Center(child: CircularProgressIndicator(color: GtvTheme.red, strokeWidth: 2)),
            // Top gradient + title
            Positioned(
              left: 0, right: 0, top: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 8, 8, 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(widget.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            ),
            // Bottom controls
            Positioned(
              right: 8, bottom: 8,
              child: Row(
                children: [
                  _MiniBtn(
                    icon: _muted ? Icons.volume_off_rounded : Icons.volume_up_rounded,
                    tooltip: _muted ? 'Activar audio' : 'Silenciar',
                    onTap: _toggleMute,
                  ),
                  const SizedBox(width: 8),
                  _MiniBtn(
                    icon: Icons.fullscreen_rounded,
                    tooltip: 'Pantalla completa',
                    onTap: widget.onFullscreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MiniBtn extends StatelessWidget {
  const _MiniBtn({required this.icon, required this.onTap, required this.tooltip});

  final IconData icon;
  final VoidCallback onTap;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Colors.black.withOpacity(0.55),
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Container(
            width: 36, height: 36,
            alignment: Alignment.center,
            child: Icon(icon, color: Colors.white, size: 20),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────

class _EpgBar extends StatelessWidget {
  const _EpgBar({required this.now, required this.next});

  final String? now;
  final String? next;

  @override
  Widget build(BuildContext context) {
    if (now == null && next == null) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        color: GtvTheme.surface,
        child: const Row(
          children: [
            Icon(Icons.event_note_rounded, color: GtvTheme.textDim, size: 14),
            SizedBox(width: 8),
            Text('EPG no disponible',
                style: TextStyle(color: GtvTheme.textDim, fontSize: 12)),
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      color: GtvTheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (now != null)
            Row(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(color: GtvTheme.red, borderRadius: BorderRadius.circular(3)),
                child: const Text('AHORA',
                    style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w800, letterSpacing: 0.6)),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(now!, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
              ),
            ]),
          if (next != null) ...[
            const SizedBox(height: 3),
            Text('Después: ${next!}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: GtvTheme.textDim, fontSize: 11)),
          ],
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────

class _ChannelRow extends StatelessWidget {
  const _ChannelRow({
    required this.channel,
    required this.isFavorite,
    required this.selected,
    required this.onTap,
    required this.onDoubleTap,
    required this.onToggleFavorite,
  });

  final LiveChannel channel;
  final bool isFavorite;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  final VoidCallback onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? GtvTheme.red.withOpacity(0.12) : GtvTheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: selected ? GtvTheme.red : GtvTheme.border),
        ),
        child: Row(
          children: [
            Container(
              width: 34, height: 34,
              decoration: BoxDecoration(
                color: GtvTheme.bg,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: GtvTheme.border),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.live_tv_rounded, color: selected ? GtvTheme.red : GtvTheme.textDim, size: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(channel.name,
                  style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            ),
            InkWell(
              onTap: onToggleFavorite,
              borderRadius: BorderRadius.circular(999),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? GtvTheme.red : Colors.white54, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────


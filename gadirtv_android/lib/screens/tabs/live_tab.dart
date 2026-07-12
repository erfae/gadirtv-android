import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import '../../i18n/strings.dart';
import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/favorites_store.dart';
import '../../services/player_constants.dart';
import '../../services/vlc_bootstrap.dart';
import '../../services/vlc_device_profile.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../widgets/category_list_rail.dart';
import '../../widgets/gtv_focusable.dart';
import '../../widgets/no_signal_test_card.dart';

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
    this.active = true,
  });

  final Profile profile;
  final ValueChanged<LiveChannel> onPlay;
  final bool active;

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
        _error = AppI18n.of(context).categoriesLoadError;
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
        _error = AppI18n.of(context).channelsLoadError;
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

  @override
  void didUpdateWidget(covariant LiveTab old) {
    super.didUpdateWidget(old);
    // Pause the mini player whenever this tab stops being the active one
    // in the parent IndexedStack.
    if (old.active && !widget.active) {
      _miniKey.currentState?.pause();
    }
  }

  final _miniKey = GlobalKey<_MiniPlayerState>();
  final _miniFocus = FocusNode();

  Future<void> _preview(LiveChannel c) async {
    setState(() {
      _current = c;
      _epgNow = null;
      _epgNext = null;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _miniFocus.requestFocus();
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

  Future<void> _fullscreen() async {
    if (_current == null) return;
    await _miniKey.currentState?.pause();
    widget.onPlay(_current!);
  }

  @override
  void dispose() {
    _miniFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    if (_loadingCats) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }

    final categories = <(String, String)>[
      (_allId, t.categoryAll),
      (_favoritesId, t.categoryFavorites),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    final streamUrl = _current == null
        ? null
        : _api.streamUrl(widget.profile,
            kind: 'live', streamId: _current!.streamId, ext: 'ts');

    return LayoutBuilder(builder: (context, constraints) {
      final wide = constraints.maxWidth >= 700;

      final miniBox = _MiniPlayer(
        key: _miniKey,
        focusNode: _miniFocus,
        streamUrl: streamUrl,
        title: _current?.name ?? t.selectChannel,
        onFullscreen: _fullscreen,
      );
      final epgBox = _EpgBar(now: _epgNow, next: _epgNext);

      if (wide) {
        // ── 3 columns: Groups | Channels | (Mini + EPG) ──
        final rightW = constraints.maxWidth * 0.44; // bigger preview panel
        final miniH = rightW * 9 / 16;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: TvLayout.categoryRailWidth(context),
              child: CategoryListRail(
                categories: categories,
                selectedId: _selected,
                onSelected: _loadChannels,
              ),
            ),
            const VerticalDivider(width: 1, color: GtvTheme.border),
            Expanded(child: _buildChannels()),
            const VerticalDivider(width: 1, color: GtvTheme.border),
            SizedBox(
              width: rightW,
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: miniH,
                    width: rightW,
                    child: miniBox,
                  ),
                  const Divider(height: 1, color: GtvTheme.border),
                  epgBox,
                  const Divider(height: 1, color: GtvTheme.border),
                  const Expanded(child: SizedBox.shrink()),
                ],
              ),
            ),
          ],
        );
      }

      // ── Narrow (phone portrait): mini on top, categories+channels below ──
      final natural = constraints.maxWidth * 9 / 16;
      final capped = constraints.maxHeight * 0.35;
      final h = natural > capped ? capped : natural;
      final w = h * 16 / 9;
      return Column(
        children: [
          Container(
            width: constraints.maxWidth,
            alignment: Alignment.center,
            color: Colors.black,
            child: SizedBox(
              width: w > constraints.maxWidth ? constraints.maxWidth : w,
              height: h,
              child: miniBox,
            ),
          ),
          epgBox,
          const Divider(height: 1, color: GtvTheme.border),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: TvLayout.categoryRailWidth(context),
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
    });
  }

  Widget _buildChannels() {
    final t = AppI18n.of(context);
    if (_loadingChans) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_channels.isEmpty) {
      final msg = _selected == _favoritesId ? t.noFavoritesYet : t.channelsNotFound;
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
    this.focusNode,
    required this.streamUrl,
    required this.title,
    required this.onFullscreen,
  });

  final FocusNode? focusNode;
  final String? streamUrl;
  final String title;
  final VoidCallback onFullscreen;

  @override
  State<_MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<_MiniPlayer> with WidgetsBindingObserver {
  VlcPlayerController? _controller;
  bool _muted = false;
  bool _buffering = false;
  bool _opening = false;
  bool _noSignal = false;
  Duration _lastPos = Duration.zero;
  Timer? _noSignalTimer;
  String? _openedUrl;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final url = widget.streamUrl;
    if (url != null && url.isNotEmpty) {
      _initController(url);
    }
  }

  void _initController(String url) async {
    try {
      await VlcBootstrap.ensureReady();
    } catch (_) {
      if (mounted) setState(() => _noSignal = true);
      return;
    }
    if (!mounted) return;
    _controller = VlcPlayerController.network(
      url,
      hwAcc: VlcDeviceProfile.hwAcc,
      autoPlay: true,
      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          VlcAdvancedOptions.networkCaching(PlayerConstants.vlcLiveCacheMs),
          VlcAdvancedOptions.liveCaching(PlayerConstants.vlcLiveCacheMs),
        ]),
        http: VlcHttpOptions([
          VlcHttpOptions.httpReconnect(true),
          VlcHttpOptions.httpUserAgent(ApiService.activeUserAgent),
        ]),
        extras: VlcDeviceProfile.vlcExtras,
      ),
    );
    _controller!.addListener(_onControllerUpdate);
    _openedUrl = url;
    _armNoSignalTimer();
  }

  void _onControllerUpdate() {
    if (!mounted || _controller == null) return;
    final value = _controller!.value;
    final isBuf = value.playingState == PlayingState.buffering;
    if (isBuf != _buffering) {
      setState(() => _buffering = isBuf);
    }
    final p = value.position;
    if (p - _lastPos > const Duration(milliseconds: 500)) {
      _lastPos = p;
      if (_noSignal) setState(() => _noSignal = false);
    }
  }

  void _armNoSignalTimer() {
    _noSignalTimer?.cancel();
    final startPos = _lastPos;
    _noSignalTimer = Timer(PlayerConstants.noSignalDelay, () {
      if (!mounted) return;
      if (_lastPos - startPos < const Duration(seconds: 1) &&
          widget.streamUrl != null) {
        setState(() => _noSignal = true);
      }
    });
  }

  @override
  void didUpdateWidget(covariant _MiniPlayer old) {
    super.didUpdateWidget(old);
    if (old.streamUrl != widget.streamUrl) _scheduleOpen();
  }

  /// Debounce rapid channel taps — otherwise every tap queues an
  /// [_open] which each stop/start VLC, and 5 taps in a second can lock
  /// the native audio thread on some devices.
  void _scheduleOpen() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 250), _open);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Pause when the app goes to background so audio doesn't keep leaking
    // out of the mini player.
    if (state != AppLifecycleState.resumed) {
      _controller?.pause().catchError((_) {});
    }
  }

  Future<void> _open() async {
    // Serialize open calls — VLC can lock up if two setMediaFromNetwork
    // calls run in parallel (rapid channel taps used to freeze the app).
    if (_opening) return;
    _opening = true;
    // Reset per-channel state so a previous "no signal" card doesn't
    // leak onto a fresh channel while it's still opening.
    if (mounted) {
      setState(() {
        _noSignal = false;
        _lastPos = Duration.zero;
      });
    }
    try {
      final url = widget.streamUrl;
      if (url == null || url.isEmpty) {
        try {
          await _controller?.stop().timeout(const Duration(seconds: 3),
              onTimeout: () {});
        } catch (_) {}
        _openedUrl = null;
        return;
      }

      if (_controller == null) {
        // First-time init.
        _initController(url);
        if (mounted) setState(() {});
        return;
      }

      // Swap media on the existing controller. VLC handles the
      // stop → open sequence internally, we just call the API.
      _openedUrl = url;
      await _controller!
          .setMediaFromNetwork(url, hwAcc: VlcDeviceProfile.hwAcc)
          .timeout(const Duration(seconds: 8), onTimeout: () {});
      await _controller!.setVolume(_muted ? 0 : 100);
      _armNoSignalTimer();
    } catch (_) {
      // Swallow — the parent will restart on next channel tap.
    } finally {
      _opening = false;
    }
  }

  /// Called by the parent tab when navigating to full-screen playback so
  /// the mini stops before the big player starts. We silence the audio
  /// track first (instant) and then stop the underlying VLC player.
  Future<void> pause() async {
    try {
      await _controller?.setVolume(0);
    } catch (_) {}
    try {
      await _controller?.pause();
    } catch (_) {}
    try {
      await _controller?.stop();
    } catch (_) {}
    _openedUrl = null;
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _noSignalTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    _controller?.removeListener(_onControllerUpdate);
    _controller?.stopRendererScanning().catchError((_) {});
    _controller?.dispose();
    super.dispose();
  }

  void _toggleMute() {
    setState(() => _muted = !_muted);
    _controller?.setVolume(_muted ? 0 : 100);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return GtvFocusable(
      focusNode: widget.focusNode,
      onTap: widget.streamUrl != null ? widget.onFullscreen : null,
      enabled: widget.streamUrl != null,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.black,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (widget.streamUrl != null && _controller != null)
              VlcPlayer(
                controller: _controller!,
                aspectRatio: 16 / 9,
                placeholder: const SizedBox.shrink(),
              )
            else
              const Center(
                child: Icon(Icons.live_tv_rounded, color: GtvTheme.textDim, size: 48),
              ),
            if (_noSignal && widget.streamUrl != null)
              Positioned.fill(
                child: NoSignalTestCard(channelName: widget.title),
              ),
            if (_buffering && widget.streamUrl != null && !_noSignal)
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
                    tooltip: _muted ? t.unmute : t.mute,
                    onTap: _toggleMute,
                  ),
                  const SizedBox(width: 8),
                  _MiniBtn(
                    icon: Icons.fullscreen_rounded,
                    tooltip: t.fullscreen,
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
    return GtvFocusable(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Tooltip(
        message: tooltip,
        child: Material(
          color: Colors.black.withOpacity(0.55),
          shape: const CircleBorder(),
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
    final t = AppI18n.of(context);
    if (now == null && next == null) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        color: GtvTheme.surface,
        child: Row(
          children: [
            const Icon(Icons.event_note_rounded, color: GtvTheme.textDim, size: 14),
            const SizedBox(width: 8),
            Text(t.epgUnavailable,
                style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
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
                child: Text(t.now,
                    style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w800, letterSpacing: 0.6)),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(now!, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
              ),
            ]),
          if (next != null) ...[
            const SizedBox(height: 3),
            Text('${t.next}: ${next!}',
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

class _ChannelRow extends StatefulWidget {
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
  State<_ChannelRow> createState() => _ChannelRowState();
}

class _ChannelRowState extends State<_ChannelRow> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _focused = v),
      mouseCursor: SystemMouseCursors.click,
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            // TV remote: first OK previews, second OK on same channel → fullscreen.
            if (widget.selected) {
              widget.onDoubleTap();
            } else {
              widget.onTap();
            }
            return null;
          },
        ),
      },
      child: GestureDetector(
        onTap: widget.onTap,
        onDoubleTap: widget.onDoubleTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: widget.selected ? GtvTheme.red.withOpacity(0.12) : GtvTheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _focused ? GtvTheme.red : (widget.selected ? GtvTheme.red : GtvTheme.border),
              width: _focused ? 2 : 1,
            ),
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
                child: Icon(Icons.live_tv_rounded, color: widget.selected ? GtvTheme.red : GtvTheme.textDim, size: 18),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.channel.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: TvLayout.labelFont(context, 14),
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                    if (widget.selected)
                      Text(
                        'Pulsa OK de nuevo → pantalla completa',
                        style: TextStyle(
                          color: GtvTheme.redHi,
                          fontSize: TvLayout.labelFont(context, 10),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
              GtvFocusable(
                borderRadius: BorderRadius.circular(999),
                padding: const EdgeInsets.all(6),
                onTap: widget.onToggleFavorite,
                child: Icon(widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: widget.isFavorite ? GtvTheme.red : Colors.white54, size: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────


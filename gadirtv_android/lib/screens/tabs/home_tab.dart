import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/trailer_info.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/playlist_store.dart';
import '../../services/resume_store.dart';
import '../../services/trailer_launcher.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../utils/xtream_utils.dart';
import '../../widgets/detail_hero_widgets.dart';
import '../../widgets/gtv_focusable.dart';
import '../../widgets/poster_card.dart';
import '../../widgets/poster_rail_focus.dart';

/// Home tab — Google TV hero + focusable content rails.
class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
    required this.profile,
    required this.onOpenMovie,
    required this.onOpenSeries,
    this.onPlayMovie,
    this.onPlaySeries,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpenMovie;
  final ValueChanged<Series> onOpenSeries;
  final ValueChanged<Movie>? onPlayMovie;
  final ValueChanged<Series>? onPlaySeries;

  @override
  State<HomeTab> createState() => HomeTabState();
}

class HomeTabState extends State<HomeTab> with AutomaticKeepAliveClientMixin {
  final _api = ApiService();
  final _resumeStore = ResumeStore();
  final _playFocus = FocusNode(debugLabel: 'hero-play');
  final _trailerFocus = FocusNode(debugLabel: 'hero-trailer');
  final _resumeFocus = PosterRailFocus();
  final _moviesFocus = PosterRailFocus();
  final _seriesFocus = PosterRailFocus();
  final _rng = Random();

  List<Movie> _recentMovies = const [];
  List<Series> _recentSeries = const [];
  List<_ResumeItem> _resume = const [];
  List<_HeroItem> _heroPool = const [];

  bool _loading = true;
  String? _error;
  int _heroIndex = 0;
  Timer? _heroTimer;

  String _heroPlot = '';
  String _heroBackdrop = '';
  String _heroPoster = '';
  TrailerInfo _heroTrailer = const TrailerInfo();
  bool _heroMetaLoading = false;
  final _heroMetaCache = <String, _CachedHeroMeta>{};

  @override
  bool get wantKeepAlive => true;

  void focusInitial() {
    _playFocus.requestFocus();
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _heroTimer?.cancel();
    _playFocus.dispose();
    _trailerFocus.dispose();
    _resumeFocus.dispose();
    _moviesFocus.dispose();
    _seriesFocus.dispose();
    super.dispose();
  }

  void _focusFirstRailBelowHero() {
    if (_resume.isNotEmpty && _resumeFocus.nodes.isNotEmpty) {
      _resumeFocus.focus(0);
    } else if (_moviesFocus.nodes.isNotEmpty) {
      _moviesFocus.focus(0);
    } else if (_seriesFocus.nodes.isNotEmpty) {
      _seriesFocus.focus(0);
    }
  }

  Future<void> _load() async {
    final store = PlaylistStore.instance;
    if (!store.isLoadedFor(widget.profile)) {
      setState(() {
        _loading = true;
        _error = 'Contenido no cargado. Reinicia la app.';
      });
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final movies = store.vodStreams;
      final series = store.seriesList;
      final resumeMap = await _resumeStore.loadAll();

      final movieById = {for (final m in movies) m.streamId.toString(): m};
      final resumeItems = <_ResumeItem>[];
      final entries = resumeMap.entries.toList()
        ..sort((a, b) => b.value.updatedAt.compareTo(a.value.updatedAt));
      for (final e in entries) {
        if (e.key.startsWith('movie:')) {
          final id = e.key.substring(6);
          final m = movieById[id];
          if (m != null) {
            resumeItems.add(_ResumeItem(
              title: m.name,
              image: m.icon,
              progress: e.value.progress.clamp(0, 1),
              onTap: () => widget.onOpenMovie(m),
            ));
          }
        }
      }

      final recentMovies = movies.take(24).toList();
      final poolMovies = movies.take(12).toList();

      if (!mounted) return;
      setState(() {
        _recentMovies = recentMovies;
        _resume = resumeItems.take(8).toList();
        _loading = false;
      });

      _resumeFocus.rebuild(_resume.length);
      _moviesFocus.rebuild(recentMovies.length);

      final recentSeries = series.take(24).toList();
      final pool = <_HeroItem>[
        ...poolMovies.map((m) => _HeroItem(
              title: m.name,
              imageUrl: m.icon,
              badge: 'PELÍCULA',
              rating: m.rating,
              isMovie: true,
              movie: m,
              onPlay: () {
                if (widget.onPlayMovie != null) {
                  widget.onPlayMovie!(m);
                } else {
                  widget.onOpenMovie(m);
                }
              },
              onOpen: () => widget.onOpenMovie(m),
            )),
        ...series.take(12).map((s) => _HeroItem(
              title: s.name,
              imageUrl: s.cover,
              badge: 'SERIE',
              rating: s.rating,
              isMovie: false,
              series: s,
              onPlay: () {
                if (widget.onPlaySeries != null) {
                  widget.onPlaySeries!(s);
                } else {
                  widget.onOpenSeries(s);
                }
              },
              onOpen: () => widget.onOpenSeries(s),
            )),
      ]..shuffle(_rng);

      setState(() {
        _recentSeries = recentSeries;
        _heroPool = pool.take(20).toList();
        _heroIndex = 0;
      });

      _seriesFocus.rebuild(recentSeries.length);
      _applyHeroMetaFromCache(0);
      _startHeroRotation();
      _loadHeroMeta(0);
      _prefetchHeroMeta();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _playFocus.requestFocus();
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = 'No se pudo cargar el contenido: $e';
      });
    }
  }

  void _applyHeroMetaFromCache(int index) {
    if (_heroPool.isEmpty) return;
    final item = _heroPool[index % _heroPool.length];
    final cached = _heroMetaCache[_heroCacheKey(item)];
    if (cached != null) {
      setState(() {
        _heroPlot = cached.plot;
        _heroBackdrop = cached.backdrop;
        _heroPoster = cached.poster;
        _heroTrailer = cached.trailer;
        _heroMetaLoading = false;
      });
    } else {
      setState(() {
        _heroMetaLoading = true;
        _heroPlot = item.isMovie ? '' : (item.series?.plot ?? '');
        _heroBackdrop = item.imageUrl;
        _heroPoster = item.imageUrl;
        _heroTrailer = const TrailerInfo();
      });
    }
  }

  Future<void> _prefetchHeroMeta() async {
    for (var i = 0; i < _heroPool.length && i < 8; i++) {
      if (!mounted) return;
      final key = _heroCacheKey(_heroPool[i]);
      if (_heroMetaCache.containsKey(key)) continue;
      await _loadHeroMeta(i, prefetch: true);
    }
  }

  void _startHeroRotation() {
    _heroTimer?.cancel();
    if (_heroPool.length <= 1) return;
    _heroTimer = Timer.periodic(const Duration(seconds: 15), (_) => _shiftHeroRandom());
  }

  void _shiftHeroRandom() {
    if (_heroPool.isEmpty) return;
    var next = _rng.nextInt(_heroPool.length);
    if (_heroPool.length > 1) {
      while (next == _heroIndex) {
        next = _rng.nextInt(_heroPool.length);
      }
    }
    setState(() => _heroIndex = next);
    _applyHeroMetaFromCache(next);
    _loadHeroMeta(next);
    if (_playFocus.hasFocus || _trailerFocus.hasFocus) {
      _playFocus.requestFocus();
    }
  }

  Future<void> _loadHeroMeta(int index, {bool prefetch = false}) async {
    if (_heroPool.isEmpty) return;
    final item = _heroPool[index % _heroPool.length];
    final cacheKey = _heroCacheKey(item);
    final cached = _heroMetaCache[cacheKey];
    if (cached != null) {
      if (!mounted || (!prefetch && _heroIndex % _heroPool.length != index)) return;
      if (!prefetch) {
        setState(() {
          _heroPlot = cached.plot;
          _heroBackdrop = cached.backdrop;
          _heroPoster = cached.poster;
          _heroTrailer = cached.trailer;
          _heroMetaLoading = false;
        });
      }
      return;
    }

    if (!prefetch) {
      setState(() {
        _heroMetaLoading = true;
        _heroPlot = item.isMovie ? '' : (item.series?.plot ?? '');
        _heroBackdrop = item.imageUrl;
        _heroPoster = item.imageUrl;
      });
    }

    try {
      if (item.isMovie && item.movie != null) {
        final info = await _api.vodInfo(widget.profile, item.movie!.streamId);
        if (!mounted || (!prefetch && _heroIndex % _heroPool.length != index)) return;
        final meta = info['info'] is Map
            ? Map<String, dynamic>.from(info['info'] as Map)
            : <String, dynamic>{};
        final md = info['movie_data'] is Map
            ? Map<String, dynamic>.from(info['movie_data'] as Map)
            : <String, dynamic>{};
        final plot = extractPlot(meta, extra: md);
        final backdrop = extractBackdrop(meta, fallback: item.imageUrl);
        final poster = (meta['cover'] ?? meta['cover_big'] ?? meta['movie_image'] ?? item.imageUrl).toString();
        final trailer = extractTrailerInfo(meta);
        _heroMetaCache[cacheKey] = _CachedHeroMeta(
          plot: plot,
          backdrop: backdrop.isNotEmpty ? backdrop : item.imageUrl,
          poster: poster.isNotEmpty ? poster : item.imageUrl,
          trailer: trailer,
        );
        if (!prefetch) {
          setState(() {
            _heroPlot = plot;
            _heroBackdrop = backdrop.isNotEmpty ? backdrop : item.imageUrl;
            _heroPoster = poster.isNotEmpty ? poster : item.imageUrl;
            _heroTrailer = trailer;
            _heroMetaLoading = false;
          });
        }
      } else if (item.series != null) {
        final info = await _api.seriesInfo(widget.profile, item.series!.seriesId);
        if (!mounted || (!prefetch && _heroIndex % _heroPool.length != index)) return;
        final meta = info['info'] is Map
            ? Map<String, dynamic>.from(info['info'] as Map)
            : <String, dynamic>{};
        final plot = extractPlot(meta, fallback: item.series!.plot);
        final backdrop = extractBackdrop(meta, fallback: item.imageUrl);
        final poster = (meta['cover'] ?? meta['cover_big'] ?? item.imageUrl).toString();
        final trailer = extractTrailerInfo(meta);
        _heroMetaCache[cacheKey] = _CachedHeroMeta(
          plot: plot,
          backdrop: backdrop.isNotEmpty ? backdrop : item.imageUrl,
          poster: poster.isNotEmpty ? poster : item.imageUrl,
          trailer: trailer,
        );
        if (!prefetch) {
          setState(() {
            _heroPlot = plot;
            _heroBackdrop = backdrop.isNotEmpty ? backdrop : item.imageUrl;
            _heroPoster = poster.isNotEmpty ? poster : item.imageUrl;
            _heroTrailer = trailer;
            _heroMetaLoading = false;
          });
        }
      } else if (mounted && !prefetch) {
        setState(() => _heroMetaLoading = false);
      }
    } catch (_) {
      if (mounted && !prefetch) setState(() => _heroMetaLoading = false);
    }
  }

  String _heroCacheKey(_HeroItem item) {
    if (item.isMovie && item.movie != null) return 'm:${item.movie!.streamId}';
    if (item.series != null) return 's:${item.series!.seriesId}';
    return 'x:${item.title}';
  }

  Future<void> _openTrailer() async {
    if (!_heroTrailer.hasAny) return;
    final item = _heroPool[_heroIndex % _heroPool.length];
    await TrailerLauncher.openFromInfo(context, _heroTrailer, title: item.title);
  }

  void _shiftHero(int delta) {
    if (_heroPool.isEmpty) return;
    _heroTimer?.cancel();
    final next = (_heroIndex + delta) % _heroPool.length;
    setState(() => _heroIndex = next < 0 ? _heroPool.length + next : next);
    _applyHeroMetaFromCache(_heroIndex);
    _loadHeroMeta(_heroIndex);
    _startHeroRotation();
    if (_playFocus.hasFocus || _trailerFocus.hasFocus) {
      _playFocus.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final railH = TvLayout.compactRailBlockHeight(context, maxHeight: constraints.maxHeight) * 0.88;
        final heroH = constraints.maxHeight;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _buildGoogleTvHero(context),
            ),
            SizedBox(
              height: railH * 2.2,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (_resume.isNotEmpty) ...[
                      SizedBox(height: railH * 0.72, child: _buildResumeRail(railH * 0.72)),
                      const SizedBox(height: 6),
                    ],
                    SizedBox(
                      height: railH,
                      child: _buildMoviesRail(railH),
                    ),
                    SizedBox(
                      height: railH,
                      child: _buildSeriesRail(railH),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildGoogleTvHero(BuildContext context) {
    if (_heroPool.isEmpty) {
      return Container(color: GtvTheme.surface);
    }
    final idx = _heroIndex % _heroPool.length;
    final item = _heroPool[idx];
    final poster = _heroPoster.isNotEmpty ? _heroPoster : item.imageUrl;
    final backdrop = _heroBackdrop.isNotEmpty ? _heroBackdrop : '';
    final hasTrailer = _heroTrailer.hasAny;

    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: KeyedSubtree(
            key: ValueKey('$idx-$backdrop-$poster'),
            child: GtvAndroidTvHeroLayout(
              badge: item.badge,
              title: item.title,
              rating: item.rating,
              synopsis: _heroPlot.isNotEmpty ? _heroPlot : 'Sinopsis no disponible.',
              synopsisLoading: _heroMetaLoading,
              synopsisSide: GtvHeroSynopsisSide.left,
              posterUrl: poster,
              backdropUrl: backdrop.isNotEmpty ? backdrop : poster,
              actions: Row(
                children: [
                  GtvHeroActionButton(
                    focusNode: _playFocus,
                    autofocus: true,
                    label: 'REPRODUCIR',
                    icon: Icons.play_arrow_rounded,
                    onTap: item.onPlay,
                    onMoveDown: _focusFirstRailBelowHero,
                    onMoveRight: hasTrailer ? () => _trailerFocus.requestFocus() : null,
                  ),
                  if (hasTrailer) ...[
                    const SizedBox(width: 12),
                    GtvHeroActionButton(
                      focusNode: _trailerFocus,
                      label: 'TRÁILER',
                      icon: Icons.ondemand_video_rounded,
                      onTap: _openTrailer,
                      onMoveDown: _focusFirstRailBelowHero,
                      onMoveLeft: () => _playFocus.requestFocus(),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 8,
          top: 0,
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _HeroArrow(icon: Icons.chevron_left_rounded, onTap: () => _shiftHero(-1)),
              const SizedBox(height: 8),
              _HeroArrow(icon: Icons.chevron_right_rounded, onTap: () => _shiftHero(1)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildResumeRail(double height) {
    final cardW = TvLayout.compactPosterWidth(context);
    final innerH = height - 28;
    if (_resumeFocus.nodes.length != _resume.length) {
      _resumeFocus.rebuild(_resume.length);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            'Continuar viendo',
            style: TextStyle(
              color: Colors.white,
              fontSize: TvLayout.sp(context, 17),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: innerH,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 36),
            itemCount: _resume.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) {
              final r = _resume[i];
              final node = i < _resumeFocus.nodes.length ? _resumeFocus.nodes[i] : null;
              return SizedBox(
                width: cardW,
                child: PosterCard(
                  focusNode: node,
                  title: r.title,
                  imageUrl: r.image,
                  onTap: r.onTap,
                  onMoveLeft: () => _resumeFocus.moveHorizontal(i, -1),
                  onMoveRight: () => _resumeFocus.moveHorizontal(i, 1),
                  onMoveUp: () => _playFocus.requestFocus(),
                  onMoveDown: () => _moviesFocus.focus(0),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMoviesRail(double blockHeight) {
    if (_recentMovies.isEmpty) return const SizedBox.shrink();
    if (_moviesFocus.nodes.length != _recentMovies.length) {
      _moviesFocus.rebuild(_recentMovies.length);
    }
    return _buildCompactRail(
      title: 'Recientes Películas',
      blockHeight: blockHeight,
      focus: _moviesFocus,
      onMoveUp: () {
        if (_resume.isNotEmpty) {
          _resumeFocus.focus(0);
        } else {
          _playFocus.requestFocus();
        }
      },
      onMoveDown: () => _seriesFocus.focus(0),
      builder: (i) {
        final m = _recentMovies[i];
        return PosterCard(
          focusNode: _moviesFocus.nodes[i],
          title: m.name,
          imageUrl: m.icon,
          rating: m.rating,
          onTap: () => widget.onOpenMovie(m),
          onMoveLeft: () => _moviesFocus.moveHorizontal(i, -1),
          onMoveRight: () => _moviesFocus.moveHorizontal(i, 1),
          onMoveUp: () {
            if (_resume.isNotEmpty) {
              _resumeFocus.focus(0);
            } else {
              _playFocus.requestFocus();
            }
          },
          onMoveDown: () => _seriesFocus.focus(0),
        );
      },
    );
  }

  Widget _buildSeriesRail(double blockHeight) {
    if (_recentSeries.isEmpty) return const SizedBox.shrink();
    if (_seriesFocus.nodes.length != _recentSeries.length) {
      _seriesFocus.rebuild(_recentSeries.length);
    }
    return _buildCompactRail(
      title: 'Recientes Series',
      blockHeight: blockHeight,
      focus: _seriesFocus,
      onMoveUp: () => _moviesFocus.focus(0),
      builder: (i) {
        final s = _recentSeries[i];
        return PosterCard(
          focusNode: _seriesFocus.nodes[i],
          title: s.name,
          imageUrl: s.cover,
          rating: s.rating,
          onTap: () => widget.onOpenSeries(s),
          onMoveLeft: () => _seriesFocus.moveHorizontal(i, -1),
          onMoveRight: () => _seriesFocus.moveHorizontal(i, 1),
          onMoveUp: () => _moviesFocus.focus(0),
        );
      },
    );
  }

  Widget _buildCompactRail({
    required String title,
    required double blockHeight,
    required PosterRailFocus focus,
    required Widget Function(int index) builder,
    VoidCallback? onMoveUp,
    VoidCallback? onMoveDown,
  }) {
    final count = focus.nodes.length;
    if (count == 0) return const SizedBox.shrink();
    final cardW = TvLayout.compactPosterWidth(context);
    final listH = blockHeight - 30;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: TvLayout.sp(context, 17),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: listH,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 36),
            itemCount: count,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) => SizedBox(width: cardW, child: builder(i)),
          ),
        ),
      ],
    );
  }
}

class _CachedHeroMeta {
  const _CachedHeroMeta({
    required this.plot,
    required this.backdrop,
    required this.poster,
    required this.trailer,
  });

  final String plot;
  final String backdrop;
  final String poster;
  final TrailerInfo trailer;
}

class _HeroItem {
  const _HeroItem({
    required this.title,
    required this.imageUrl,
    required this.badge,
    required this.rating,
    required this.isMovie,
    required this.onPlay,
    required this.onOpen,
    this.movie,
    this.series,
  });

  final String title;
  final String imageUrl;
  final String badge;
  final double rating;
  final bool isMovie;
  final Movie? movie;
  final Series? series;
  final VoidCallback onPlay;
  final VoidCallback onOpen;
}

class _ResumeItem {
  const _ResumeItem({
    required this.title,
    required this.image,
    required this.progress,
    required this.onTap,
  });

  final String title;
  final String image;
  final double progress;
  final VoidCallback onTap;
}

class _HeroArrow extends StatelessWidget {
  const _HeroArrow({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Material(
        color: Colors.black.withOpacity(0.5),
        shape: const CircleBorder(),
        child: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white24),
          ),
          child: Icon(icon, color: Colors.white, size: 26),
        ),
      ),
    );
  }
}

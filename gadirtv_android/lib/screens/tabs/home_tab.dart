import 'dart:async';

import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/resume_store.dart';
import '../../services/trailer_launcher.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../utils/xtream_utils.dart';
import '../../widgets/detail_hero_widgets.dart';
import '../../widgets/gtv_focusable.dart';
import '../../widgets/poster_card.dart';

/// Home tab — Google TV hero (full-bleed backdrop + synopsis right) + rails.
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
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final _api = ApiService();
  final _resumeStore = ResumeStore();
  final _playFocus = FocusNode();

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
  String? _heroTrailer;
  bool _heroMetaLoading = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _heroTimer?.cancel();
    _playFocus.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final results = await Future.wait([
        _api.vodStreams(widget.profile),
        _api.seriesList(widget.profile),
        _resumeStore.loadAll(),
      ]);

      final movies = (results[0] as List).map((e) => Movie.fromJson(e as Map<String, dynamic>)).toList()
        ..sort((a, b) => b.addedTs.compareTo(a.addedTs));
      final series = (results[1] as List).map((e) => Series.fromJson(e as Map<String, dynamic>)).toList()
        ..sort((a, b) => b.lastModifiedTs.compareTo(a.lastModifiedTs));
      final resumeMap = results[2] as Map<String, ResumeEntry>;

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

      final pool = <_HeroItem>[
        ...movies.take(6).map((m) => _HeroItem(
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
        ...series.take(6).map((s) => _HeroItem(
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
      ];

      if (!mounted) return;
      setState(() {
        _recentMovies = movies.take(24).toList();
        _recentSeries = series.take(24).toList();
        _resume = resumeItems.take(8).toList();
        _heroPool = pool;
        _loading = false;
      });

      _startHeroRotation();
      _loadHeroMeta(_heroIndex);
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

  void _startHeroRotation() {
    _heroTimer?.cancel();
    if (_heroPool.length <= 1) return;
    _heroTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (!mounted) return;
      final next = (_heroIndex + 1) % _heroPool.length;
      setState(() => _heroIndex = next);
      _loadHeroMeta(next);
    });
  }

  Future<void> _loadHeroMeta(int index) async {
    if (_heroPool.isEmpty) return;
    final item = _heroPool[index % _heroPool.length];
    setState(() {
      _heroMetaLoading = true;
      _heroPlot = item.isMovie ? '' : (item.series?.plot ?? '');
      _heroBackdrop = item.imageUrl;
      _heroTrailer = null;
    });

    try {
      if (item.isMovie && item.movie != null) {
        final info = await _api.vodInfo(widget.profile, item.movie!.streamId);
        if (!mounted || _heroIndex % _heroPool.length != index) return;
        final meta = info['info'] is Map
            ? Map<String, dynamic>.from(info['info'] as Map)
            : <String, dynamic>{};
        final md = info['movie_data'] is Map
            ? Map<String, dynamic>.from(info['movie_data'] as Map)
            : <String, dynamic>{};
        setState(() {
          _heroPlot = extractPlot(meta, extra: md);
          _heroBackdrop = extractBackdrop(meta, fallback: item.imageUrl);
          _heroTrailer = extractTrailer(meta);
          _heroMetaLoading = false;
        });
      } else if (item.series != null) {
        final info = await _api.seriesInfo(widget.profile, item.series!.seriesId);
        if (!mounted || _heroIndex % _heroPool.length != index) return;
        final meta = info['info'] is Map
            ? Map<String, dynamic>.from(info['info'] as Map)
            : <String, dynamic>{};
        setState(() {
          _heroPlot = extractPlot(meta, fallback: item.series!.plot);
          _heroBackdrop = extractBackdrop(meta, fallback: item.imageUrl);
          _heroTrailer = extractTrailer(meta);
          _heroMetaLoading = false;
        });
      } else if (mounted) {
        setState(() => _heroMetaLoading = false);
      }
    } catch (_) {
      if (mounted) setState(() => _heroMetaLoading = false);
    }
  }

  Future<void> _openTrailer() async {
    final url = _heroTrailer;
    if (url == null) return;
    await TrailerLauncher.open(context, url);
  }

  void _shiftHero(int delta) {
    if (_heroPool.isEmpty) return;
    _heroTimer?.cancel();
    final next = (_heroIndex + delta) % _heroPool.length;
    setState(() => _heroIndex = next < 0 ? _heroPool.length + next : next);
    _loadHeroMeta(_heroIndex);
    _startHeroRotation();
    _playFocus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
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
        final resumeExtra = _resume.isEmpty ? 0.0 : railH * 0.75;
        final heroH = (constraints.maxHeight * 0.58) - resumeExtra * 0.3;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: heroH.clamp(280.0, constraints.maxHeight * 0.78),
              child: _buildGoogleTvHero(context),
            ),
            if (_resume.isNotEmpty) ...[
              SizedBox(height: railH * 0.72, child: _buildResumeRail(railH * 0.72)),
              const SizedBox(height: 4),
            ],
            SizedBox(
              height: railH,
              child: _buildCompactRail(
                title: 'Recientes Películas',
                count: _recentMovies.length,
                blockHeight: railH,
                builder: (i) {
                  final m = _recentMovies[i];
                  return PosterCard(
                    title: m.name,
                    imageUrl: m.icon,
                    rating: m.rating,
                    onTap: () => widget.onOpenMovie(m),
                  );
                },
              ),
            ),
            SizedBox(
              height: railH,
              child: _buildCompactRail(
                title: 'Recientes Series',
                count: _recentSeries.length,
                blockHeight: railH,
                builder: (i) {
                  final s = _recentSeries[i];
                  return PosterCard(
                    title: s.name,
                    imageUrl: s.cover,
                    rating: s.rating,
                    onTap: () => widget.onOpenSeries(s),
                  );
                },
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
    final backdrop = _heroBackdrop.isNotEmpty ? _heroBackdrop : item.imageUrl;

    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child: KeyedSubtree(
            key: ValueKey('$idx-$backdrop'),
            child: GtvHeroBackdrop(imageUrl: backdrop),
          ),
        ),
        const GtvHeroGradients(),
        Positioned(
          right: 12,
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
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 20, 64, 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      item.badge,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: TvLayout.sp(context, 13),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TvLayout.sp(context, 34),
                        fontWeight: FontWeight.w800,
                        height: 1.05,
                        shadows: const [Shadow(color: Colors.black54, blurRadius: 12)],
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (item.rating > 0)
                      Text(
                        '★ ${item.rating.toStringAsFixed(1)}',
                        style: TextStyle(
                          color: const Color(0xFFFACC15),
                          fontSize: TvLayout.sp(context, 15),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        GtvHeroActionButton(
                          focusNode: _playFocus,
                          autofocus: true,
                          label: 'REPRODUCIR',
                          icon: Icons.play_arrow_rounded,
                          onTap: item.onPlay,
                        ),
                        if (_heroTrailer != null) ...[
                          const SizedBox(width: 12),
                          GtvHeroActionButton(
                            label: 'TRÁILER',
                            icon: Icons.ondemand_video_rounded,
                            onTap: _openTrailer,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 4,
                child: GtvSynopsisPanel(
                  title: 'Sinopsis',
                  text: _heroPlot.isNotEmpty ? _heroPlot : 'Sinopsis no disponible.',
                  loading: _heroMetaLoading,
                  padding: const EdgeInsets.only(left: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildResumeRail(double height) {
    final cardW = TvLayout.compactPosterWidth(context);
    final innerH = height - 28;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
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
            padding: const EdgeInsets.symmetric(horizontal: 28),
            itemCount: _resume.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) {
              final r = _resume[i];
              return SizedBox(
                width: cardW,
                child: PosterCard(
                  title: r.title,
                  imageUrl: r.image,
                  onTap: r.onTap,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCompactRail({
    required String title,
    required int count,
    required double blockHeight,
    required Widget Function(int index) builder,
  }) {
    if (count == 0) return const SizedBox.shrink();
    final cardW = TvLayout.compactPosterWidth(context);
    final listH = blockHeight - 30;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
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
            padding: const EdgeInsets.symmetric(horizontal: 28),
            itemCount: count,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) => SizedBox(width: cardW, child: builder(i)),
          ),
        ),
      ],
    );
  }
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

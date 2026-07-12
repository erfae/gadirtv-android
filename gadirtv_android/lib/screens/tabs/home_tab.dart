import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/resume_store.dart';
import '../../theme.dart';
import '../../utils/tv_layout.dart';
import '../../utils/xtream_utils.dart';
import '../../widgets/gtv_focusable.dart';
import '../../widgets/poster_card.dart';

/// Home tab — Netflix-style hero + compact content rails.
class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
    required this.profile,
    required this.onOpenMovie,
    required this.onOpenSeries,
    this.onPlayMovie,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpenMovie;
  final ValueChanged<Series> onOpenSeries;
  final ValueChanged<Movie>? onPlayMovie;

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
              onPlay: () => widget.onOpenSeries(s),
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
    _heroTimer = Timer.periodic(const Duration(seconds: 8), (_) {
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
          _heroTrailer = _pickTrailer(meta);
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
          _heroTrailer = _pickTrailer(meta);
          _heroMetaLoading = false;
        });
      } else if (mounted) {
        setState(() => _heroMetaLoading = false);
      }
    } catch (_) {
      if (mounted) setState(() => _heroMetaLoading = false);
    }
  }

  String? _pickTrailer(Map<String, dynamic> meta) {
    for (final key in ['youtube_trailer', 'trailer', 'youtube_id']) {
      final v = (meta[key] ?? '').toString().trim();
      if (v.isEmpty) continue;
      if (v.startsWith('http')) return v;
      if (v.length >= 8) return 'https://www.youtube.com/watch?v=$v';
    }
    return null;
  }

  Future<void> _openTrailer() async {
    final url = _heroTrailer;
    if (url == null) return;
    final uri = Uri.tryParse(url);
    if (uri == null) return;
    try {
      final can = await canLaunchUrl(uri);
      if (!can) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No se encontró una app para abrir el tráiler (YouTube o navegador)'),
            duration: Duration(seconds: 4),
          ),
        );
        return;
      }
      final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!ok && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo abrir el tráiler')),
        );
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al abrir tráiler: $e')),
      );
    }
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
        final railH = TvLayout.compactRailBlockHeight(context, maxHeight: constraints.maxHeight);
        final heroH = constraints.maxHeight - railH * 2 - (_resume.isEmpty ? 0 : railH * 0.85) - 8;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: heroH.clamp(200.0, constraints.maxHeight * 0.56),
              child: _buildNetflixHero(context),
            ),
            if (_resume.isNotEmpty) ...[
              SizedBox(height: railH * 0.75, child: _buildResumeRail(railH * 0.75)),
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

  Widget _buildNetflixHero(BuildContext context) {
    if (_heroPool.isEmpty) {
      return Container(color: GtvTheme.surface);
    }
    final idx = _heroIndex % _heroPool.length;
    final item = _heroPool[idx];

    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: KeyedSubtree(
            key: ValueKey(idx),
            child: item.imageUrl.isEmpty
                ? Container(color: GtvTheme.surface)
                : CachedNetworkImage(
                    imageUrl: item.imageUrl,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    errorWidget: (_, __, ___) => Container(color: GtvTheme.surface),
                  ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.35),
                Colors.transparent,
                GtvTheme.bg.withOpacity(0.92),
              ],
              stops: const [0, 0.35, 1],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                GtvTheme.bg.withOpacity(0.88),
                GtvTheme.bg.withOpacity(0.45),
                Colors.transparent,
              ],
              stops: const [0, 0.35, 0.72],
            ),
          ),
        ),
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
          padding: const EdgeInsets.fromLTRB(28, 16, 56, 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: GtvTheme.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        item.badge,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TvLayout.sp(context, 26),
                        fontWeight: FontWeight.w900,
                        height: 1.05,
                      ),
                    ),
                    if (item.rating > 0) ...[
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star_rounded, color: Color(0xFFFACC15), size: 18),
                          const SizedBox(width: 4),
                          Text(item.rating.toStringAsFixed(1),
                              style: const TextStyle(color: Colors.white, fontSize: 13)),
                        ],
                      ),
                    ],
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        GtvFocusable(
                          focusNode: _playFocus,
                          autofocus: true,
                          onTap: item.onPlay,
                          borderRadius: BorderRadius.circular(999),
                          child: ElevatedButton.icon(
                            onPressed: item.onPlay,
                            icon: const Icon(Icons.play_arrow_rounded, size: 22),
                            label: Text(item.isMovie ? 'REPRODUCIR' : 'VER SERIE'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GtvFocusable(
                          onTap: item.onOpen,
                          borderRadius: BorderRadius.circular(999),
                          child: OutlinedButton.icon(
                            onPressed: item.onOpen,
                            icon: const Icon(Icons.info_outline_rounded, size: 18, color: Colors.white),
                            label: const Text('MÁS INFO', style: TextStyle(color: Colors.white)),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white54),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                            ),
                          ),
                        ),
                        if (_heroTrailer != null) ...[
                          const SizedBox(width: 10),
                          GtvFocusable(
                            onTap: _openTrailer,
                            borderRadius: BorderRadius.circular(999),
                            child: OutlinedButton.icon(
                              onPressed: _openTrailer,
                              icon: const Icon(Icons.ondemand_video_rounded,
                                  size: 18, color: Colors.white),
                              label: const Text('TRÁILER', style: TextStyle(color: Colors.white)),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.white54),
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                              ),
                            ),
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
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Sinopsis',
                        style: TextStyle(
                          color: GtvTheme.redHi,
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (_heroMetaLoading)
                        const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: GtvTheme.red),
                        )
                      else
                        Text(
                          _heroPlot.isEmpty
                              ? 'Sinopsis no disponible para este título.'
                              : _heroPlot,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            height: 1.55,
                          ),
                        ),
                    ],
                  ),
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Text(
            'Continuar viendo',
            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
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
            style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
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

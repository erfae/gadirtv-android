import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../services/resume_store.dart';
import '../../theme.dart';
import '../../widgets/poster_card.dart';

/// Home tab — mirrors the Windows client:
///  - rotating hero showing recently-added movies/series
///  - "Recientes Películas" rail (top-added VOD)
///  - "Recientes Series" rail (top-added series)
class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
    required this.profile,
    required this.onOpenMovie,
    required this.onOpenSeries,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpenMovie;
  final ValueChanged<Series> onOpenSeries;

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final _api = ApiService();
  final _resumeStore = ResumeStore();

  List<Movie> _recentMovies = const [];
  List<Series> _recentSeries = const [];
  List<_ResumeItem> _resume = const [];
  bool _loading = true;
  String? _error;

  int _heroIndex = 0;
  Timer? _heroTimer;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _heroTimer?.cancel();
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

      // Match resume entries against known items so we can render posters.
      final movieById = {for (final m in movies) m.streamId.toString(): m};
      final seriesResumeIds = <String>{};
      for (final e in resumeMap.keys) {
        if (e.startsWith('series:')) seriesResumeIds.add(e.substring(7));
      }

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

      if (!mounted) return;
      setState(() {
        _recentMovies = movies.take(24).toList();
        _recentSeries = series.take(24).toList();
        _resume = resumeItems.take(12).toList();
        _loading = false;
      });

      _startHeroRotation();
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
    final total = _recentMovies.length + _recentSeries.length;
    if (total <= 1) return;
    _heroTimer = Timer.periodic(const Duration(seconds: 6), (_) {
      if (!mounted) return;
      setState(() => _heroIndex = (_heroIndex + 1) % 8.clamp(1, total));
    });
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

    return ListView(
      padding: const EdgeInsets.only(bottom: 40),
      children: [
        _buildHero(),
        const SizedBox(height: 28),
        if (_resume.isNotEmpty) ...[
          _buildResumeRail(),
          const SizedBox(height: 24),
        ],
        _buildRail(
          title: 'Recientes Películas',
          count: _recentMovies.length,
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
        const SizedBox(height: 24),
        _buildRail(
          title: 'Recientes Series',
          count: _recentSeries.length,
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
      ],
    );
  }

  Widget _buildHero() {
    final movies = _recentMovies.take(4).toList();
    final series = _recentSeries.take(4).toList();
    final pool = <(String, String, String, double, VoidCallback)>[
      ...movies.map((m) => (m.name, m.icon, 'PELÍCULA', m.rating, () => widget.onOpenMovie(m))),
      ...series.map((s) => (s.name, s.cover, 'SERIE', s.rating, () => widget.onOpenSeries(s))),
    ];
    if (pool.isEmpty) return const SizedBox(height: 200);
    final idx = _heroIndex % pool.length;
    final (name, image, badge, rating, onTap) = pool[idx];

    return SizedBox(
      height: 260,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: KeyedSubtree(
              key: ValueKey(idx),
              child: image.isEmpty
                  ? Container(color: GtvTheme.surface)
                  : CachedNetworkImage(
                      imageUrl: image,
                      fit: BoxFit.cover,
                      errorWidget: (_, __, ___) => Container(color: GtvTheme.surface),
                    ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  GtvTheme.bg,
                  GtvTheme.bg.withOpacity(0.85),
                  GtvTheme.bg.withOpacity(0.3),
                  Colors.transparent,
                ],
                stops: const [0, 0.25, 0.6, 1],
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 24),
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
                      badge,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 480,
                    child: Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                      ),
                    ),
                  ),
                  if (rating > 0) ...[
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.star_rounded, color: Color(0xFFFACC15), size: 18),
                        const SizedBox(width: 4),
                        Text(
                          rating.toStringAsFixed(1),
                          style: const TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 14),
                  ElevatedButton.icon(
                    onPressed: onTap,
                    icon: const Icon(Icons.play_arrow_rounded, size: 20),
                    label: const Text('VER AHORA'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResumeRail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Continuar viendo',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            itemCount: _resume.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (_, i) {
              final r = _resume[i];
              return SizedBox(
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: PosterCard(
                        title: r.title,
                        imageUrl: r.image,
                        onTap: r.onTap,
                      ),
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: LinearProgressIndicator(
                        value: r.progress,
                        minHeight: 3,
                        backgroundColor: Colors.white12,
                        color: GtvTheme.red,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRail({
    required String title,
    required int count,
    required Widget Function(int index) builder,
  }) {
    if (count == 0) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            itemCount: count,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (_, i) => SizedBox(width: 130, child: builder(i)),
          ),
        ),
      ],
    );
  }
}

/// Materialized resume entry — pairs a resume position with poster metadata
/// we already loaded from `vodStreams` so we can render without extra fetches.
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


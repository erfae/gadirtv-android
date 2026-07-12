import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../i18n/strings.dart';
import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../theme.dart';
import '../utils/xtream_utils.dart';
import '../widgets/gtv_focusable.dart';
import '../services/playback_launcher.dart';

/// Series detail — mobile-first stacked layout.
///
/// Flow:
///  1. Overview screen: backdrop + poster + synopsis + season chips row.
///  2. When user taps a season chip → SeasonEpisodesScreen opens showing
///     the season artwork on top and the full episode list underneath.
class SeriesDetailScreen extends StatefulWidget {
  const SeriesDetailScreen({super.key, required this.profile, required this.series});

  final Profile profile;
  final Series series;

  @override
  State<SeriesDetailScreen> createState() => _SeriesDetailScreenState();
}

class _SeriesDetailScreenState extends State<SeriesDetailScreen> {
  final _api = ApiService();
  final _resume = ResumeStore();

  Map<String, dynamic> _info = const {};
  List<String> _seasons = const [];
  Map<String, ResumeEntry> _resumeMap = {};

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final results = await Future.wait([
      _api.seriesInfo(widget.profile, widget.series.seriesId),
      _resume.loadAll(),
    ]);
    if (!mounted) return;
    final info = results[0] as Map<String, dynamic>;
    final ep = info['episodes'];
    final seasons = <String>[];
    if (ep is Map) {
      seasons.addAll(ep.keys.cast<String>());
      seasons.sort((a, b) =>
          (int.tryParse(a) ?? 0).compareTo(int.tryParse(b) ?? 0));
    }
    setState(() {
      _info = info;
      _seasons = seasons;
      _resumeMap = results[1] as Map<String, ResumeEntry>;
      _loading = false;
    });
  }

  List<Map<String, dynamic>> _episodesFor(String season) {
    final ep = _info['episodes'];
    if (ep is! Map) return const [];
    final list = ep[season];
    if (list is! List) return const [];
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  void _openSeason(String season) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => SeasonEpisodesScreen(
        series: widget.series,
        profile: widget.profile,
        season: season,
        episodes: _episodesFor(season),
        resumeMap: _resumeMap,
      ),
    )).then((_) => _load()); // refresh resume progress on return
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        backgroundColor: GtvTheme.bg,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const Center(child: CircularProgressIndicator(color: GtvTheme.red)),
      );
    }

    final info = _info['info'] is Map
        ? Map<String, dynamic>.from(_info['info'] as Map)
        : <String, dynamic>{};
    final plot = extractPlot(info, fallback: widget.series.plot);
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final genre = (info['genre'] ?? '').toString();
    final year = (info['releaseDate'] ?? info['releasedate'] ?? '').toString();
    final rating = widget.series.rating;

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      appBar: AppBar(
        backgroundColor: GtvTheme.bg,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(widget.series.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
      body: LayoutBuilder(builder: (context, cons) {
        final t = AppI18n.of(context);

        Widget synopsisBlock() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t.synopsis,
                    style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800)),
                const SizedBox(height: 8),
                Text(plot.isEmpty ? t.noSynopsis : plot,
                    style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.6)),
              ],
            );

        Widget leftBlock() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 165,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: widget.series.cover.isEmpty
                            ? Container(
                                color: GtvTheme.surface,
                                child: const Icon(Icons.tv, color: GtvTheme.textDim, size: 40))
                            : CachedNetworkImage(imageUrl: widget.series.cover, fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: GtvTheme.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text('SERIE',
                                style: TextStyle(color: Colors.white, fontSize: 9, letterSpacing: 1.1, fontWeight: FontWeight.w800)),
                          ),
                          const SizedBox(height: 8),
                          Text(widget.series.name,
                              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900, height: 1.15)),
                          const SizedBox(height: 8),
                          if (rating > 0)
                            Row(children: [
                              _stars(rating),
                              const SizedBox(width: 6),
                              Text(rating.toStringAsFixed(1),
                                  style: const TextStyle(color: Colors.white, fontSize: 12)),
                            ]),
                          const SizedBox(height: 6),
                          Wrap(spacing: 8, runSpacing: 4, children: [
                            if (year.isNotEmpty)
                              Text(year, style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                            if (genre.isNotEmpty)
                              Text(genre,
                                  style: const TextStyle(color: GtvTheme.textDim, fontSize: 12),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
                if (cast.isNotEmpty) ...[
                  const SizedBox(height: 14),
                  _labelValue(t.cast, cast),
                ],
                if (director.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  _labelValue(t.director, director),
                ],
                const SizedBox(height: 22),
                synopsisBlock(),
                const SizedBox(height: 20),
                Text(t.seasons,
                    style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800)),
                const SizedBox(height: 10),
                if (_seasons.isEmpty)
                  Text(t.noSeasons,
                      style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                ..._seasons.map((s) => _SeasonRow(
                      season: s,
                      episodeCount: _episodesFor(s).length,
                      onTap: () => _openSeason(s),
                    )),
              ],
            );

        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: leftBlock(),
        );
      }),
    );
  }

  String _firstBackdropUnused(Map<String, dynamic> info) => '';

  Widget _stars(double rating) {
    return Row(mainAxisSize: MainAxisSize.min, children: List.generate(5, (i) {
      final v = rating - i;
      final icon = v >= 1
          ? Icons.star_rounded
          : (v >= 0.5 ? Icons.star_half_rounded : Icons.star_outline_rounded);
      return Icon(icon, color: const Color(0xFFFACC15), size: 14);
    }));
  }

  Widget _labelValue(String label, String value) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: GtvTheme.textDim, fontSize: 12, height: 1.4),
        children: [
          TextSpan(text: '$label: ', style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.white)),
          TextSpan(text: value),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────

class _SeasonRow extends StatelessWidget {
  const _SeasonRow({
    required this.season,
    required this.episodeCount,
    required this.onTap,
  });

  final String season;
  final int episodeCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GtvFocusable(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          decoration: BoxDecoration(
            color: GtvTheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: GtvTheme.border),
          ),
          child: Row(children: [
            Container(
              width: 42, height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GtvTheme.red.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(season,
                  style: const TextStyle(color: GtvTheme.red, fontWeight: FontWeight.w900, fontSize: 18)),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${t.season} $season',
                      style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 2),
                  Text('$episodeCount ${t.episodes}',
                      style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded, color: Colors.white54, size: 26),
          ]),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────

/// Screen shown after tapping a season row. Big cover on top + full
/// episode list below.
class SeasonEpisodesScreen extends StatefulWidget {
  const SeasonEpisodesScreen({
    super.key,
    required this.series,
    required this.profile,
    required this.season,
    required this.episodes,
    required this.resumeMap,
  });

  final Series series;
  final Profile profile;
  final String season;
  final List<Map<String, dynamic>> episodes;
  final Map<String, ResumeEntry> resumeMap;

  @override
  State<SeasonEpisodesScreen> createState() => _SeasonEpisodesScreenState();
}

class _SeasonEpisodesScreenState extends State<SeasonEpisodesScreen> {
  final _api = ApiService();

  Future<void> _play(Map<String, dynamic> episode) async {
    final id = episodeStreamId(episode);
    if (id.isEmpty) return;
    final ext = pickContainerExt(episode, null, fallback: 'mp4');
    final title = (episode['title'] ?? episode['name'] ?? '').toString();
    final epNum = (episode['episode_num'] ?? '').toString();
    final url = _api.streamUrl(
      widget.profile,
      kind: 'series',
      streamId: id,
      ext: ext,
    );
    final resumeMs = widget.resumeMap['series:$id']?.positionMs ?? 0;
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'series',
        id: id,
        title: '${widget.series.name} · T${widget.season} E$epNum',
        subtitle: title,
        url: url,
        initialPositionMs: resumeMs,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: SafeArea(
        child: Column(
          children: [
            // ── Header: back arrow + poster + title ──
            Container(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 12),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: GtvTheme.border)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(width: 4),
                  SizedBox(
                    width: 60,
                    height: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: widget.series.cover.isEmpty
                          ? Container(color: GtvTheme.surface, child: const Icon(Icons.tv, color: GtvTheme.textDim))
                          : CachedNetworkImage(imageUrl: widget.series.cover, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${t.season} ${widget.season}',
                            style: const TextStyle(color: GtvTheme.red, fontSize: 12, fontWeight: FontWeight.w800, letterSpacing: 0.6)),
                        const SizedBox(height: 3),
                        Text(widget.series.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800, height: 1.15)),
                        const SizedBox(height: 4),
                        Text('${widget.episodes.length} ${t.episodes}',
                            style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ── Episode list ──
            Expanded(
              child: widget.episodes.isEmpty
                  ? Center(
                      child: Text(t.noEpisodes,
                          style: const TextStyle(color: GtvTheme.textDim)))
                  : ListView.separated(
                      padding: const EdgeInsets.all(14),
                      itemCount: widget.episodes.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (_, i) => _EpisodeTile(
                        episode: widget.episodes[i],
                        resume: widget.resumeMap['series:${episodeStreamId(widget.episodes[i])}'],
                        onTap: () => _play(widget.episodes[i]),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────

class _EpisodeTile extends StatelessWidget {
  const _EpisodeTile({required this.episode, required this.onTap, this.resume});

  final Map<String, dynamic> episode;
  final VoidCallback onTap;
  final ResumeEntry? resume;

  @override
  Widget build(BuildContext context) {
    final e = episode;
    final num = (e['episode_num'] ?? '').toString();
    final title = (e['title'] ?? e['name'] ?? 'Episodio $num').toString();
    final info = e['info'] is Map ? Map<String, dynamic>.from(e['info'] as Map) : <String, dynamic>{};
    final plot = extractPlot(info);
    final progress = resume?.progress ?? 0;

    return GtvFocusable(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: GtvTheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GtvTheme.border),
        ),
        child: Row(
          children: [
            Container(
              width: 40, height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GtvTheme.red.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(num,
                  style: const TextStyle(color: GtvTheme.red, fontWeight: FontWeight.w800)),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                  if (plot.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(plot,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                  ],
                  if (progress > 0 && progress < 1) ...[
                    const SizedBox(height: 6),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 3,
                        backgroundColor: Colors.white12,
                        color: GtvTheme.red,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 26),
          ],
        ),
      ),
    );
  }
}

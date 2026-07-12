import 'package:flutter/material.dart';

import '../i18n/strings.dart';
import '../models/media.dart';
import '../models/trailer_info.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/playback_launcher.dart';
import '../services/resume_store.dart';
import '../services/trailer_launcher.dart';
import '../theme.dart';
import '../utils/tv_layout.dart';
import '../utils/xtream_utils.dart';
import '../widgets/detail_hero_widgets.dart';
import '../widgets/gtv_dpad_focus.dart';

/// Series detail — Google TV layout with season chips + inline episodes.
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
  final _playFocus = FocusNode();
  final _backFocus = FocusNode();
  final _trailerFocus = FocusNode();
  final _seasonFocusNodes = <FocusNode>[];
  final _episodeFocusNodes = <FocusNode>[];

  Map<String, dynamic> _info = const {};
  List<String> _seasons = const [];
  Map<String, ResumeEntry> _resumeMap = {};
  int _selectedSeason = 0;
  TrailerInfo _trailerInfo = const TrailerInfo();
  String _backdrop = '';
  String _poster = '';

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _playFocus.dispose();
    _backFocus.dispose();
    _trailerFocus.dispose();
    for (final n in _seasonFocusNodes) {
      n.dispose();
    }
    for (final n in _episodeFocusNodes) {
      n.dispose();
    }
    super.dispose();
  }

  void _rebuildFocusNodes() {
    for (final n in _seasonFocusNodes) {
      n.dispose();
    }
    for (final n in _episodeFocusNodes) {
      n.dispose();
    }
    _seasonFocusNodes
      ..clear()
      ..addAll(List.generate(_seasons.length, (i) => FocusNode(debugLabel: 'season-$i')));

    final eps = _episodesFor(_currentSeason);
    _episodeFocusNodes
      ..clear()
      ..addAll(List.generate(eps.length, (i) => FocusNode(debugLabel: 'episode-$i')));
  }

  Future<void> _load() async {
    final results = await Future.wait([
      _api.seriesInfo(widget.profile, widget.series.seriesId),
      _resume.loadAll(),
    ]);
    if (!mounted) return;
    final info = results[0] as Map<String, dynamic>;
    final seasons = parseSeasonKeys(info);
    final meta = info['info'] is Map
        ? Map<String, dynamic>.from(info['info'] as Map)
        : <String, dynamic>{};

    setState(() {
      _info = info;
      _seasons = seasons;
      _resumeMap = results[1] as Map<String, ResumeEntry>;
      _selectedSeason = 0;
      _trailerInfo = extractTrailerInfo(meta);
      _backdrop = extractBackdrop(meta, fallback: widget.series.cover);
      _poster = (meta['cover'] ?? meta['cover_big'] ?? widget.series.cover).toString();
      if (_poster.isEmpty) _poster = widget.series.cover;
      _loading = false;
    });

    _rebuildFocusNodes();
    setState(() {});

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _playFocus.requestFocus();
    });
  }

  List<Map<String, dynamic>> _episodesFor(String season) =>
      episodesForSeason(_info, season);

  String get _currentSeason =>
      _seasons.isEmpty ? '' : _seasons[_selectedSeason.clamp(0, _seasons.length - 1)];

  Future<void> _playEpisode(Map<String, dynamic> episode) async {
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
    final resumeMs = _resumeMap['series:$id']?.positionMs ?? 0;
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'series',
        id: id,
        title: '${widget.series.name} · T$_currentSeason E$epNum',
        subtitle: title,
        url: url,
        initialPositionMs: resumeMs,
      ),
    );
    if (!mounted) return;
    _load();
  }

  Future<void> _playFirstEpisode() async {
    final eps = _episodesFor(_currentSeason);
    if (eps.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No hay episodios en esta temporada')),
      );
      return;
    }
    await _playEpisode(eps.first);
  }

  Future<void> _openTrailer() async {
    if (!_trailerInfo.hasAny) return;
    await TrailerLauncher.openFromInfo(context, _trailerInfo, title: widget.series.name);
  }

  void _selectSeason(int index) {
    if (index < 0 || index >= _seasons.length) return;
    setState(() => _selectedSeason = index);
    _rebuildFocusNodes();
    setState(() {});
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && index < _seasonFocusNodes.length) {
        _seasonFocusNodes[index].requestFocus();
      }
    });
  }

  void _focusFirstEpisode() {
    if (_episodeFocusNodes.isEmpty) return;
    _episodeFocusNodes.first.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        backgroundColor: GtvTheme.bg,
        body: const Center(child: CircularProgressIndicator(color: GtvTheme.red)),
      );
    }

    final t = AppI18n.of(context);
    final info = _info['info'] is Map
        ? Map<String, dynamic>.from(_info['info'] as Map)
        : <String, dynamic>{};
    final plot = extractPlot(info, fallback: widget.series.plot);
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final genre = (info['genre'] ?? '').toString();
    final year = (info['releaseDate'] ?? info['releasedate'] ?? '').toString();
    final rating = widget.series.rating;
    final episodes = _episodesFor(_currentSeason);

    final metaLine = [if (year.isNotEmpty) year, if (genre.isNotEmpty) genre].join(' · ');

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.sizeOf(context).height * 0.44).clamp(240.0, 360.0),
            child: SafeArea(
              bottom: false,
              child: GtvAndroidTvHeroLayout(
                badge: 'SERIE',
                title: widget.series.name,
                rating: rating,
                subtitle: metaLine.isEmpty ? null : metaLine,
                synopsis: plot.isEmpty ? t.noSynopsis : plot,
                synopsisTitle: t.synopsis,
                posterUrl: _poster,
                backdropUrl: _backdrop,
                backButton: GtvDpadFocus(
                  focusNode: _backFocus,
                  onTap: () => Navigator.of(context).pop(),
                  onMoveDown: () => _playFocus.requestFocus(),
                  borderRadius: BorderRadius.circular(999),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 28),
                  ),
                ),
                actions: Row(
                  children: [
                    GtvHeroActionButton(
                      focusNode: _playFocus,
                      autofocus: true,
                      label: 'REPRODUCIR',
                      icon: Icons.play_arrow_rounded,
                      onTap: _playFirstEpisode,
                      onMoveUp: () => _backFocus.requestFocus(),
                      onMoveDown: _seasons.isNotEmpty && _seasonFocusNodes.isNotEmpty
                          ? () => _seasonFocusNodes[_selectedSeason].requestFocus()
                          : null,
                      onMoveRight: _trailerInfo.hasAny ? () => _trailerFocus.requestFocus() : null,
                    ),
                    if (_trailerInfo.hasAny) ...[
                      const SizedBox(width: 10),
                      GtvHeroActionButton(
                        focusNode: _trailerFocus,
                        label: 'TRÁILER',
                        icon: Icons.ondemand_video_rounded,
                        onTap: _openTrailer,
                        onMoveLeft: () => _playFocus.requestFocus(),
                        onMoveDown: _seasons.isNotEmpty && _seasonFocusNodes.isNotEmpty
                            ? () => _seasonFocusNodes[_selectedSeason].requestFocus()
                            : null,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          if (cast.isNotEmpty || director.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                children: [
                  if (cast.isNotEmpty)
                    Expanded(child: _labelValue(t.cast, cast)),
                  if (director.isNotEmpty)
                    Expanded(child: _labelValue(t.director, director)),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 20, 8),
            child: Row(
              children: [
                Text(t.seasons,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: TvLayout.sp(context, 16),
                      fontWeight: FontWeight.w800,
                    )),
                const SizedBox(width: 12),
                Expanded(
                  child: _seasons.isEmpty
                      ? Text(t.noSeasons, style: const TextStyle(color: GtvTheme.textDim))
                      : SizedBox(
                          height: 48,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: _seasons.length,
                            separatorBuilder: (_, __) => const SizedBox(width: 8),
                            itemBuilder: (_, i) => _SeasonChip(
                              focusNode: _seasonFocusNodes[i],
                              season: _seasons[i],
                              selected: i == _selectedSeason,
                              onTap: () => _selectSeason(i),
                              onMoveUp: () => _playFocus.requestFocus(),
                              onMoveLeft: i > 0 ? () => _selectSeason(i - 1) : null,
                              onMoveRight: i < _seasons.length - 1 ? () => _selectSeason(i + 1) : null,
                              onMoveDown: _focusFirstEpisode,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
          Expanded(
            child: episodes.isEmpty
                ? Center(child: Text(t.noEpisodes, style: const TextStyle(color: GtvTheme.textDim)))
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 20),
                    itemCount: episodes.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (_, i) => _EpisodeTile(
                      focusNode: i < _episodeFocusNodes.length ? _episodeFocusNodes[i] : null,
                      episode: episodes[i],
                      resume: _resumeMap['series:${episodeStreamId(episodes[i])}'],
                      onTap: () => _playEpisode(episodes[i]),
                      onMoveUp: () {
                        if (i > 0) {
                          _episodeFocusNodes[i - 1].requestFocus();
                        } else if (_seasonFocusNodes.isNotEmpty) {
                          _seasonFocusNodes[_selectedSeason].requestFocus();
                        }
                      },
                      onMoveDown: i < episodes.length - 1
                          ? () => _episodeFocusNodes[i + 1].requestFocus()
                          : null,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _labelValue(String label, String value) {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
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

class _SeasonChip extends StatelessWidget {
  const _SeasonChip({
    required this.focusNode,
    required this.season,
    required this.selected,
    required this.onTap,
    this.onMoveLeft,
    this.onMoveRight,
    this.onMoveUp,
    this.onMoveDown,
  });

  final FocusNode focusNode;
  final String season;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return GtvDpadFocus(
      focusNode: focusNode,
      onTap: onTap,
      onMoveLeft: onMoveLeft,
      onMoveRight: onMoveRight,
      onMoveUp: onMoveUp,
      onMoveDown: onMoveDown,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? GtvTheme.red : GtvTheme.surface,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(
            color: selected ? GtvTheme.redHi : GtvTheme.border,
          ),
        ),
        child: Text(
          '${t.season} $season',
          style: TextStyle(
            color: selected ? Colors.white : Colors.white70,
            fontSize: TvLayout.sp(context, 14),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _EpisodeTile extends StatelessWidget {
  const _EpisodeTile({
    required this.episode,
    required this.onTap,
    this.focusNode,
    this.resume,
    this.onMoveUp,
    this.onMoveDown,
  });

  final Map<String, dynamic> episode;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final ResumeEntry? resume;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;

  @override
  Widget build(BuildContext context) {
    final e = episode;
    final num = (e['episode_num'] ?? '').toString();
    final title = (e['title'] ?? e['name'] ?? 'Episodio $num').toString();
    final info = e['info'] is Map ? Map<String, dynamic>.from(e['info'] as Map) : <String, dynamic>{};
    final plot = extractPlot(info);
    final progress = resume?.progress ?? 0;

    return GtvDpadFocus(
      focusNode: focusNode,
      onTap: onTap,
      onMoveUp: onMoveUp,
      onMoveDown: onMoveDown,
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
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GtvTheme.red.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(num, style: const TextStyle(color: GtvTheme.red, fontWeight: FontWeight.w800)),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TvLayout.sp(context, 15),
                        fontWeight: FontWeight.w700,
                      )),
                  if (plot.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(plot,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: GtvTheme.textDim, fontSize: TvLayout.sp(context, 12))),
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

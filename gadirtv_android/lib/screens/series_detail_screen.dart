import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../i18n/strings.dart';
import '../models/media.dart';
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
  final _seasonFocusNodes = <FocusNode>[];
  final _episodeFocusNodes = <FocusNode>[];

  Map<String, dynamic> _info = const {};
  List<String> _seasons = const [];
  Map<String, ResumeEntry> _resumeMap = {};
  int _selectedSeason = 0;
  String? _trailer;
  String _backdrop = '';

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _playFocus.dispose();
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
      _trailer = extractTrailer(meta);
      _backdrop = extractBackdrop(meta, fallback: widget.series.cover);
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
    final url = _trailer;
    if (url == null) return;
    await TrailerLauncher.open(context, url, title: widget.series.name);
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

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.sizeOf(context).height * 0.38).clamp(200.0, 320.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                GtvHeroBackdrop(imageUrl: _backdrop),
                const GtvHeroGradients(),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 20, 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text('SERIE',
                                  style: TextStyle(
                                      color: GtvTheme.redHi,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 1)),
                              const SizedBox(height: 6),
                              Text(widget.series.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: TvLayout.sp(context, 26),
                                    fontWeight: FontWeight.w800,
                                    height: 1.1,
                                  )),
                              const SizedBox(height: 8),
                              Wrap(
                                spacing: 10,
                                runSpacing: 4,
                                children: [
                                  if (rating > 0)
                                    Text('★ ${rating.toStringAsFixed(1)}',
                                        style: const TextStyle(color: Color(0xFFFACC15), fontWeight: FontWeight.w700)),
                                  if (year.isNotEmpty)
                                    Text(year, style: const TextStyle(color: GtvTheme.textDim)),
                                  if (genre.isNotEmpty)
                                    Text(genre,
                                        style: const TextStyle(color: GtvTheme.textDim),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  GtvHeroActionButton(
                                    focusNode: _playFocus,
                                    autofocus: true,
                                    label: 'REPRODUCIR',
                                    icon: Icons.play_arrow_rounded,
                                    onTap: _playFirstEpisode,
                                  ),
                                  if (_trailer != null) ...[
                                    const SizedBox(width: 10),
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
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 4,
                          child: GtvSynopsisPanel(
                            title: t.synopsis,
                            text: plot.isEmpty ? t.noSynopsis : plot,
                            padding: const EdgeInsets.only(left: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
                      onMoveUp: i == 0 && _seasonFocusNodes.isNotEmpty
                          ? () => _seasonFocusNodes[_selectedSeason].requestFocus()
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

class _SeasonChip extends StatefulWidget {
  const _SeasonChip({
    required this.focusNode,
    required this.season,
    required this.selected,
    required this.onTap,
    this.onMoveLeft,
    this.onMoveRight,
    this.onMoveDown,
  });

  final FocusNode focusNode;
  final String season;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveDown;

  @override
  State<_SeasonChip> createState() => _SeasonChipState();
}

class _SeasonChipState extends State<_SeasonChip> {
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocus);
  }

  @override
  void didUpdateWidget(covariant _SeasonChip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      oldWidget.focusNode.removeListener(_onFocus);
      widget.focusNode.addListener(_onFocus);
    }
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocus);
    super.dispose();
  }

  void _onFocus() {
    if (mounted) setState(() => _focused = widget.focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return Focus(
      focusNode: widget.focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && widget.onMoveLeft != null) {
          widget.onMoveLeft!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight && widget.onMoveRight != null) {
          widget.onMoveRight!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown && widget.onMoveDown != null) {
          widget.onMoveDown!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter) {
          widget.onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: widget.selected ? GtvTheme.red : GtvTheme.surface,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: _focused
                  ? GtvTheme.redHi
                  : (widget.selected ? GtvTheme.redHi : GtvTheme.border),
              width: _focused ? 2 : 1,
            ),
            boxShadow: _focused
                ? [BoxShadow(color: GtvTheme.red.withOpacity(0.35), blurRadius: 12)]
                : null,
          ),
          child: Text(
            '${t.season} ${widget.season}',
            style: TextStyle(
              color: widget.selected || _focused ? Colors.white : Colors.white70,
              fontSize: TvLayout.sp(context, 14),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class _EpisodeTile extends StatefulWidget {
  const _EpisodeTile({
    required this.episode,
    required this.onTap,
    this.focusNode,
    this.resume,
    this.onMoveUp,
  });

  final Map<String, dynamic> episode;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final ResumeEntry? resume;
  final VoidCallback? onMoveUp;

  @override
  State<_EpisodeTile> createState() => _EpisodeTileState();
}

class _EpisodeTileState extends State<_EpisodeTile> {
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(_onFocus);
  }

  @override
  void didUpdateWidget(covariant _EpisodeTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      oldWidget.focusNode?.removeListener(_onFocus);
      widget.focusNode?.addListener(_onFocus);
    }
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(_onFocus);
    super.dispose();
  }

  void _onFocus() {
    if (mounted) setState(() => _focused = widget.focusNode?.hasFocus ?? false);
  }

  @override
  Widget build(BuildContext context) {
    final e = widget.episode;
    final num = (e['episode_num'] ?? '').toString();
    final title = (e['title'] ?? e['name'] ?? 'Episodio $num').toString();
    final info = e['info'] is Map ? Map<String, dynamic>.from(e['info'] as Map) : <String, dynamic>{};
    final plot = extractPlot(info);
    final progress = widget.resume?.progress ?? 0;

    return Focus(
      focusNode: widget.focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowUp && widget.onMoveUp != null) {
          widget.onMoveUp!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter) {
          widget.onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: GtvTheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _focused ? GtvTheme.red : GtvTheme.border,
              width: _focused ? 2 : 1,
            ),
            boxShadow: _focused
                ? [BoxShadow(color: GtvTheme.red.withOpacity(0.3), blurRadius: 10)]
                : null,
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
      ),
    );
  }
}

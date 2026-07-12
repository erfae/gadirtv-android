import 'package:cached_network_image/cached_network_image.dart';
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
import '../widgets/gtv_focusable.dart';

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
    super.dispose();
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
      seasons.sort((a, b) => (int.tryParse(a) ?? 0).compareTo(int.tryParse(b) ?? 0));
    }
    final meta = info['info'] is Map
        ? Map<String, dynamic>.from(info['info'] as Map)
        : <String, dynamic>{};

    for (final n in _seasonFocusNodes) {
      n.dispose();
    }
    _seasonFocusNodes
      ..clear()
      ..addAll(List.generate(seasons.length, (i) => FocusNode(debugLabel: 'season-$i')));

    setState(() {
      _info = info;
      _seasons = seasons;
      _resumeMap = results[1] as Map<String, ResumeEntry>;
      _selectedSeason = 0;
      _trailer = extractTrailer(meta);
      _backdrop = extractBackdrop(meta, fallback: widget.series.cover);
      _loading = false;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _seasonFocusNodes.isNotEmpty) {
        _seasonFocusNodes[_selectedSeason.clamp(0, _seasonFocusNodes.length - 1)].requestFocus();
      }
    });
  }

  List<Map<String, dynamic>> _episodesFor(String season) {
    final ep = _info['episodes'];
    if (ep is! Map) return const [];
    final list = ep[season];
    if (list is! List) return const [];
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

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
    await TrailerLauncher.open(context, url);
  }

  void _selectSeason(int index) {
    if (index < 0 || index >= _seasons.length) return;
    setState(() => _selectedSeason = index);
    _seasonFocusNodes[index].requestFocus();
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
                if (_backdrop.isNotEmpty)
                  CachedNetworkImage(imageUrl: _backdrop, fit: BoxFit.cover)
                else
                  Container(color: GtvTheme.surface),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black.withOpacity(0.88),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.35),
                      ],
                    ),
                  ),
                ),
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
                                  GtvFocusable(
                                    focusNode: _playFocus,
                                    autofocus: true,
                                    onTap: _playFirstEpisode,
                                    borderRadius: BorderRadius.circular(999),
                                    child: ElevatedButton.icon(
                                      onPressed: _playFirstEpisode,
                                      icon: const Icon(Icons.play_arrow_rounded, size: 22),
                                      label: const Text('REPRODUCIR'),
                                    ),
                                  ),
                                  if (_trailer != null) ...[
                                    const SizedBox(width: 10),
                                    GtvFocusable(
                                      onTap: _openTrailer,
                                      borderRadius: BorderRadius.circular(999),
                                      child: OutlinedButton.icon(
                                        onPressed: _openTrailer,
                                        icon: const Icon(Icons.ondemand_video_rounded, color: Colors.white, size: 18),
                                        label: const Text('TRÁILER', style: TextStyle(color: Colors.white)),
                                        style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.white54)),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(t.synopsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: TvLayout.sp(context, 14),
                                    fontWeight: FontWeight.w800,
                                  )),
                              const SizedBox(height: 8),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Text(
                                    plot.isEmpty ? t.noSynopsis : plot,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: TvLayout.sp(context, 13),
                                      height: 1.55,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                          height: 44,
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
                      episode: episodes[i],
                      resume: _resumeMap['series:${episodeStreamId(episodes[i])}'],
                      onTap: () => _playEpisode(episodes[i]),
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
  });

  final FocusNode focusNode;
  final String season;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && onMoveLeft != null) {
          onMoveLeft!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight && onMoveRight != null) {
          onMoveRight!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter) {
          onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GtvFocusable(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: selected ? GtvTheme.red : GtvTheme.surface,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: selected ? GtvTheme.redHi : GtvTheme.border),
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
      ),
    );
  }
}

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

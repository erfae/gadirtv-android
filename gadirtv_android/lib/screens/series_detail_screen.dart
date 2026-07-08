import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../theme.dart';
import 'player_screen.dart';

/// Series detail — poster + synopsis + season selector + episode list.
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
  String _selected = '';
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
      seasons.sort((a, b) => int.tryParse(a)?.compareTo(int.tryParse(b) ?? 0) ?? 0);
    }
    setState(() {
      _info = info;
      _seasons = seasons;
      _selected = seasons.isNotEmpty ? seasons.first : '';
      _resumeMap = results[1] as Map<String, ResumeEntry>;
      _loading = false;
    });
  }

  List<Map<String, dynamic>> _episodesForSelected() {
    final ep = _info['episodes'];
    if (ep is! Map || _selected.isEmpty) return const [];
    final list = ep[_selected];
    if (list is! List) return const [];
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  void _play(Map<String, dynamic> episode) {
    final id = (episode['id'] ?? '').toString();
    final ext = (episode['container_extension'] ?? 'mp4').toString();
    final title = (episode['title'] ?? episode['name'] ?? '').toString();
    final epNum = (episode['episode_num'] ?? '').toString();
    final url = _api.streamUrl(
      widget.profile,
      kind: 'series',
      streamId: id,
      ext: ext,
    );
    final resumeMs = _resumeMap['series:$id']?.positionMs ?? 0;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PlayerScreen(
          playable: Playable(
            kind: 'series',
            id: id,
            title: '${widget.series.name} · T$_selected E$epNum',
            subtitle: title,
            url: url,
            initialPositionMs: resumeMs,
          ),
        ),
      ),
    ).then((_) => _load());
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(color: GtvTheme.red)));
    }

    final info = _info['info'] is Map ? Map<String, dynamic>.from(_info['info'] as Map) : <String, dynamic>{};
    final plot = (info['plot'] ?? widget.series.plot).toString();
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final rating = widget.series.rating;
    final episodes = _episodesForSelected();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: widget.series.cover.isEmpty
                          ? Container(color: GtvTheme.surface, child: const Icon(Icons.movie, color: GtvTheme.textDim, size: 48))
                          : CachedNetworkImage(imageUrl: widget.series.cover, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _backBtn(),
                ],
              ),
              const SizedBox(width: 32),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(color: GtvTheme.red, borderRadius: BorderRadius.circular(6)),
                          child: const Text('SERIE', style: TextStyle(color: Colors.white, fontSize: 10, letterSpacing: 1.2, fontWeight: FontWeight.w800)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(widget.series.name,
                        style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900, height: 1.05)),
                    const SizedBox(height: 8),
                    if (rating > 0) Row(children: [_stars(rating), const SizedBox(width: 6), Text(rating.toStringAsFixed(1), style: const TextStyle(color: Colors.white, fontSize: 13))]),
                    const SizedBox(height: 16),
                    if (plot.isNotEmpty) Text(plot, style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.5), maxLines: 4, overflow: TextOverflow.ellipsis),
                    if (cast.isNotEmpty) ...[
                      const SizedBox(height: 12),
                      _labelValue('Reparto', cast),
                    ],
                    if (director.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      _labelValue('Dirección', director),
                    ],
                    const SizedBox(height: 20),
                    if (_seasons.isNotEmpty) _buildSeasonStrip(),
                    const SizedBox(height: 12),
                    Expanded(
                      child: episodes.isEmpty
                          ? const Center(child: Text('No hay episodios en esta temporada', style: TextStyle(color: GtvTheme.textDim)))
                          : ListView.separated(
                              itemCount: episodes.length,
                              separatorBuilder: (_, __) => const SizedBox(height: 8),
                              itemBuilder: (_, i) => _EpisodeTile(
                                episode: episodes[i],
                                resume: _resumeMap['series:${episodes[i]['id']}'],
                                onTap: () => _play(episodes[i]),
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
    );
  }

  Widget _buildSeasonStrip() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _seasons.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, i) {
          final s = _seasons[i];
          final selected = s == _selected;
          return GestureDetector(
            onTap: () => setState(() => _selected = s),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: selected ? GtvTheme.red : GtvTheme.surface,
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: selected ? GtvTheme.red : GtvTheme.border),
              ),
              child: Text('Temporada $s',
                  style: TextStyle(color: selected ? Colors.white : GtvTheme.textDim, fontWeight: FontWeight.w600, fontSize: 12)),
            ),
          );
        },
      ),
    );
  }

  Widget _backBtn() {
    return TextButton.icon(
      onPressed: () => Navigator.of(context).maybePop(),
      icon: const Icon(Icons.arrow_back_rounded, size: 18, color: Colors.white),
      label: const Text('Volver', style: TextStyle(color: Colors.white)),
    );
  }

  Widget _stars(double rating) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final v = rating - i;
        final icon = v >= 1 ? Icons.star_rounded : (v >= 0.5 ? Icons.star_half_rounded : Icons.star_outline_rounded);
        return Icon(icon, color: const Color(0xFFFACC15), size: 16);
      }),
    );
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

class _EpisodeTile extends StatefulWidget {
  const _EpisodeTile({required this.episode, required this.onTap, this.resume});

  final Map<String, dynamic> episode;
  final VoidCallback onTap;
  final ResumeEntry? resume;

  @override
  State<_EpisodeTile> createState() => _EpisodeTileState();
}

class _EpisodeTileState extends State<_EpisodeTile> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final e = widget.episode;
    final num = (e['episode_num'] ?? '').toString();
    final title = (e['title'] ?? e['name'] ?? 'Episodio $num').toString();
    final info = e['info'] is Map ? Map<String, dynamic>.from(e['info'] as Map) : <String, dynamic>{};
    final plot = (info['plot'] ?? info['overview'] ?? '').toString();
    final progress = widget.resume?.progress ?? 0;

    return FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _focused = v),
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            widget.onTap();
            return null;
          },
        ),
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: GtvTheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: _focused ? GtvTheme.red : GtvTheme.border, width: _focused ? 2 : 1),
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
                    Text(title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                    if (plot.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(plot, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
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
              const SizedBox(width: 12),
              const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 26),
            ],
          ),
        ),
      ),
    );
  }
}

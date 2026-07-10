import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../theme.dart';
import 'player_screen.dart';

/// Movie detail — mobile-first: backdrop hero + poster overlay + synopsis +
/// PLAY / CONTINUAR button.
class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key, required this.profile, required this.movie});

  final Profile profile;
  final Movie movie;

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  final _api = ApiService();
  final _resume = ResumeStore();

  Map<String, dynamic> _info = const {};
  Map<String, dynamic> _mvInfo = const {};
  ResumeEntry? _resumeEntry;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final results = await Future.wait([
      _api.vodInfo(widget.profile, widget.movie.streamId),
      _resume.get('movie', widget.movie.streamId.toString()),
    ]);
    if (!mounted) return;
    final info = results[0] as Map<String, dynamic>;
    setState(() {
      _info = info;
      _mvInfo = (info['movie_data'] is Map ? Map<String, dynamic>.from(info['movie_data'] as Map) : <String, dynamic>{});
      _resumeEntry = results[1] as ResumeEntry?;
      _loading = false;
    });
  }

  void _play({bool fromStart = false}) {
    final meta = _info['info'] is Map ? Map<String, dynamic>.from(_info['info'] as Map) : <String, dynamic>{};
    final ext = (_mvInfo['container_extension'] ?? widget.movie.containerExt).toString();
    final url = _api.streamUrl(
      widget.profile,
      kind: 'movie',
      streamId: widget.movie.streamId,
      ext: ext,
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PlayerScreen(
          playable: Playable(
            kind: 'movie',
            id: widget.movie.streamId.toString(),
            title: widget.movie.name,
            subtitle: (meta['genre'] ?? '').toString(),
            url: url,
            initialPositionMs: fromStart ? 0 : (_resumeEntry?.positionMs ?? 0),
          ),
        ),
      ),
    ).then((_) => _load());
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
    final plot = (info['plot'] ?? info['description'] ?? '').toString();
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final genre = (info['genre'] ?? '').toString();
    final year = (info['releasedate'] ?? info['year'] ?? '').toString();
    final rating = widget.movie.rating;
    final backdrop = _firstBackdrop(info);
    final hasResume = _resumeEntry != null && !_resumeEntry!.progress.isNaN;

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 260,
            backgroundColor: GtvTheme.bg,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(widget.movie.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(fit: StackFit.expand, children: [
                if (backdrop.isNotEmpty)
                  CachedNetworkImage(imageUrl: backdrop, fit: BoxFit.cover)
                else if (widget.movie.icon.isNotEmpty)
                  CachedNetworkImage(imageUrl: widget.movie.icon, fit: BoxFit.cover)
                else
                  Container(color: GtvTheme.surface),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.55),
                        Colors.transparent,
                        GtvTheme.bg,
                      ],
                      stops: const [0, 0.4, 1],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
              child: Column(
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
                          child: widget.movie.icon.isEmpty
                              ? Container(
                                  color: GtvTheme.surface,
                                  child: const Icon(Icons.movie, color: GtvTheme.textDim, size: 40))
                              : CachedNetworkImage(imageUrl: widget.movie.icon, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(color: GtvTheme.red, borderRadius: BorderRadius.circular(4)),
                              child: const Text('PELÍCULA',
                                  style: TextStyle(color: Colors.white, fontSize: 9, letterSpacing: 1.1, fontWeight: FontWeight.w800)),
                            ),
                            const SizedBox(height: 8),
                            Text(widget.movie.name,
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
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () => _play(fromStart: !hasResume),
                          icon: const Icon(Icons.play_arrow_rounded, size: 22),
                          label: Text(hasResume ? 'CONTINUAR' : 'VER AHORA'),
                        ),
                      ),
                      if (hasResume) ...[
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => _play(fromStart: true),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: GtvTheme.border),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                          ),
                          child: const Icon(Icons.replay_rounded, size: 20, color: Colors.white),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 22),
                  if (plot.isNotEmpty) ...[
                    const Text('Sinopsis',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 6),
                    Text(plot,
                        style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.5)),
                  ],
                  if (cast.isNotEmpty) ...[
                    const SizedBox(height: 14),
                    _labelValue('Reparto', cast),
                  ],
                  if (director.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    _labelValue('Dirección', director),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _firstBackdrop(Map<String, dynamic> info) {
    final list = info['backdrop_path'];
    if (list is List && list.isNotEmpty) return list.first.toString();
    if (list is String) return list;
    return '';
  }

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

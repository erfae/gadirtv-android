import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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

/// Movie detail — Google TV layout: backdrop hero, synopsis right, play + trailer.
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
  final _playFocus = FocusNode();

  Map<String, dynamic> _info = const {};
  Map<String, dynamic> _mvInfo = const {};
  ResumeEntry? _resumeEntry;
  String _backdrop = '';
  String? _trailer;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _playFocus.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final results = await Future.wait([
      _api.vodInfo(widget.profile, widget.movie.streamId),
      _resume.get('movie', widget.movie.streamId.toString()),
    ]);
    if (!mounted) return;
    final info = results[0] as Map<String, dynamic>;
    final meta = info['info'] is Map
        ? Map<String, dynamic>.from(info['info'] as Map)
        : <String, dynamic>{};
    final md = info['movie_data'] is Map
        ? Map<String, dynamic>.from(info['movie_data'] as Map)
        : <String, dynamic>{};
    setState(() {
      _info = info;
      _mvInfo = md;
      _resumeEntry = results[1] as ResumeEntry?;
      _backdrop = extractBackdrop(meta, fallback: widget.movie.icon);
      _trailer = extractTrailer(meta);
      _loading = false;
    });
  }

  Future<void> _play({bool fromStart = false}) async {
    final meta = _info['info'] is Map ? Map<String, dynamic>.from(_info['info'] as Map) : <String, dynamic>{};
    final ext = pickContainerExt(_mvInfo, meta, fallback: widget.movie.containerExt);
    final sid = movieStreamId(_info, widget.movie.streamId);
    final url = _api.streamUrl(
      widget.profile,
      kind: 'movie',
      streamId: sid,
      ext: ext,
    );
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'movie',
        id: sid.toString(),
        title: widget.movie.name,
        subtitle: (meta['genre'] ?? '').toString(),
        url: url,
        initialPositionMs: fromStart ? 0 : (_resumeEntry?.positionMs ?? 0),
      ),
    );
    if (!mounted) return;
    _load();
  }

  Future<void> _openTrailer() async {
    final url = _trailer;
    if (url == null) return;
    await TrailerLauncher.open(context, url);
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
    final plot = extractPlot(info, extra: _mvInfo);
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final genre = (info['genre'] ?? '').toString();
    final year = (info['releasedate'] ?? info['year'] ?? '').toString();
    final rating = widget.movie.rating;
    final hasResume = _resumeEntry != null && !_resumeEntry!.progress.isNaN;

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.sizeOf(context).height * 0.42).clamp(220.0, 340.0),
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
                              Text(t.movie.toUpperCase(),
                                  style: const TextStyle(
                                    color: GtvTheme.redHi,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  )),
                              const SizedBox(height: 6),
                              Text(widget.movie.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: TvLayout.sp(context, 28),
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
                                    onTap: () => _play(fromStart: !hasResume),
                                    borderRadius: BorderRadius.circular(999),
                                    child: ElevatedButton.icon(
                                      onPressed: () => _play(fromStart: !hasResume),
                                      icon: const Icon(Icons.play_arrow_rounded, size: 22),
                                      label: Text(hasResume ? t.resume : t.watchNow),
                                    ),
                                  ),
                                  if (hasResume) ...[
                                    const SizedBox(width: 10),
                                    GtvFocusable(
                                      onTap: () => _play(fromStart: true),
                                      borderRadius: BorderRadius.circular(999),
                                      child: OutlinedButton(
                                        onPressed: () => _play(fromStart: true),
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(color: GtvTheme.border),
                                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                                        ),
                                        child: const Icon(Icons.replay_rounded, size: 20, color: Colors.white),
                                      ),
                                    ),
                                  ],
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
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (cast.isNotEmpty) _labelValue(t.cast, cast),
                  if (director.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    _labelValue(t.director, director),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _labelValue(String label, String value) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: GtvTheme.textDim, fontSize: 13, height: 1.4),
        children: [
          TextSpan(text: '$label: ', style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.white)),
          TextSpan(text: value),
        ],
      ),
    );
  }
}

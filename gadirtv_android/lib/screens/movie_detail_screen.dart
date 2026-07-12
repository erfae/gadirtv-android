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
import '../utils/xtream_utils.dart';
import '../widgets/gtv_dpad_focus.dart';
import '../widgets/detail_hero_widgets.dart';

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
  final _backFocus = FocusNode();
  final _trailerFocus = FocusNode();

  Map<String, dynamic> _info = const {};
  Map<String, dynamic> _mvInfo = const {};
  ResumeEntry? _resumeEntry;
  String _backdrop = '';
  String _poster = '';
  TrailerInfo _trailerInfo = const TrailerInfo();
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
      _poster = (meta['cover'] ?? meta['cover_big'] ?? meta['movie_image'] ?? widget.movie.icon).toString();
      if (_poster.isEmpty) _poster = widget.movie.icon;
      _trailerInfo = extractTrailerInfo(meta);
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
    if (!_trailerInfo.hasAny) return;
    await TrailerLauncher.openFromInfo(context, _trailerInfo, title: widget.movie.name);
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

    final metaLine = [if (year.isNotEmpty) year, if (genre.isNotEmpty) genre].join(' · ');

    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.sizeOf(context).height * 0.48).clamp(260.0, 380.0),
            child: SafeArea(
              bottom: false,
              child: GtvAndroidTvHeroLayout(
                badge: t.movie.toUpperCase(),
                title: widget.movie.name,
                rating: rating,
                subtitle: metaLine.isEmpty ? null : metaLine,
                synopsis: plot.isEmpty ? t.noSynopsis : plot,
                synopsisTitle: t.synopsis,
                synopsisSide: GtvHeroSynopsisSide.right,
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
                      label: hasResume ? t.resume : t.watchNow,
                      icon: Icons.play_arrow_rounded,
                      onTap: () => _play(fromStart: !hasResume),
                      onMoveUp: () => _backFocus.requestFocus(),
                      onMoveRight: _trailerInfo.hasAny ? () => _trailerFocus.requestFocus() : null,
                    ),
                    if (hasResume) ...[
                      const SizedBox(width: 10),
                      GtvHeroActionButton(
                        label: t.watchNow,
                        icon: Icons.replay_rounded,
                        onTap: () => _play(fromStart: true),
                      ),
                    ],
                    if (_trailerInfo.hasAny) ...[
                      const SizedBox(width: 10),
                      GtvHeroActionButton(
                        focusNode: _trailerFocus,
                        label: 'TRÁILER',
                        icon: Icons.ondemand_video_rounded,
                        onTap: _openTrailer,
                        onMoveLeft: () => _playFocus.requestFocus(),
                        onMoveUp: () => _backFocus.requestFocus(),
                      ),
                    ],
                  ],
                ),
              ),
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

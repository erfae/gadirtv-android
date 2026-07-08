import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../theme.dart';
import 'player_screen.dart';

/// Movie detail — poster on the left, metadata on the right, big PLAY / RESUME
/// button. Loads synopsis, cast, director & rating on open.
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
      _mvInfo = (info['movie_data'] is Map ? Map<String, dynamic>.from(info['movie_data'] as Map) : {});
      _resumeEntry = results[1] as ResumeEntry?;
      _loading = false;
    });
  }

  void _play({bool fromStart = false}) {
    final meta = _info['info'] is Map ? Map<String, dynamic>.from(_info['info'] as Map) : {};
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
    ).then((_) => _load()); // refresh resume state on return
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(color: GtvTheme.red)));
    }

    final info = _info['info'] is Map ? Map<String, dynamic>.from(_info['info'] as Map) : {};
    final plot = (info['plot'] ?? info['description'] ?? '').toString();
    final cast = (info['cast'] ?? '').toString();
    final director = (info['director'] ?? '').toString();
    final genre = (info['genre'] ?? '').toString();
    final year = (info['releasedate'] ?? info['year'] ?? '').toString();
    final rating = widget.movie.rating;
    final poster = widget.movie.icon;
    final backdrop = _firstBackdrop(info);

    return Scaffold(
      body: Stack(
        children: [
          if (backdrop.isNotEmpty)
            Positioned.fill(
              child: Opacity(
                opacity: 0.25,
                child: CachedNetworkImage(imageUrl: backdrop, fit: BoxFit.cover),
              ),
            ),
          Container(color: GtvTheme.bg.withOpacity(0.85)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPoster(poster),
                  const SizedBox(width: 32),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _BackButton(onTap: () => Navigator.of(context).maybePop()),
                              const SizedBox(width: 12),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: GtvTheme.red,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text('PELÍCULA',
                                    style: TextStyle(color: Colors.white, fontSize: 10, letterSpacing: 1.2, fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            widget.movie.name,
                            style: const TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w900, height: 1.05),
                          ),
                          const SizedBox(height: 12),
                          _buildMetaRow(rating, year, genre),
                          const SizedBox(height: 20),
                          if (plot.isNotEmpty)
                            Text(
                              plot,
                              style: const TextStyle(color: Colors.white70, fontSize: 14, height: 1.5),
                            ),
                          if (cast.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            _labelValue('Reparto', cast),
                          ],
                          if (director.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            _labelValue('Dirección', director),
                          ],
                          const SizedBox(height: 24),
                          _buildActions(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPoster(String url) {
    return SizedBox(
      width: 220,
      height: 330,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: url.isEmpty
            ? Container(color: GtvTheme.surface, child: const Icon(Icons.movie, color: GtvTheme.textDim, size: 48))
            : CachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildMetaRow(double rating, String year, String genre) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (rating > 0)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _stars(rating),
              const SizedBox(width: 6),
              Text(rating.toStringAsFixed(1), style: const TextStyle(color: Colors.white, fontSize: 13)),
            ],
          ),
        if (year.isNotEmpty)
          Text(year, style: const TextStyle(color: GtvTheme.textDim, fontSize: 13)),
        if (genre.isNotEmpty)
          Text(genre, style: const TextStyle(color: GtvTheme.textDim, fontSize: 13)),
      ],
    );
  }

  Widget _stars(double rating) {
    // rating is 0..5 in the API. Round to nearest 0.5 for a friendlier look.
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final v = rating - i;
        final icon = v >= 1 ? Icons.star_rounded : (v >= 0.5 ? Icons.star_half_rounded : Icons.star_outline_rounded);
        return Icon(icon, color: const Color(0xFFFACC15), size: 18);
      }),
    );
  }

  Widget _labelValue(String label, String value) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: GtvTheme.textDim, fontSize: 13, height: 1.5),
        children: [
          TextSpan(text: '$label: ', style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.white)),
          TextSpan(text: value),
        ],
      ),
    );
  }

  Widget _buildActions() {
    final hasResume = _resumeEntry != null && !_resumeEntry!.progress.isNaN;
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () => _play(fromStart: !hasResume),
          icon: const Icon(Icons.play_arrow_rounded, size: 22),
          label: Text(hasResume ? 'CONTINUAR' : 'REPRODUCIR'),
        ),
        if (hasResume) ...[
          const SizedBox(width: 12),
          OutlinedButton.icon(
            onPressed: () => _play(fromStart: true),
            icon: const Icon(Icons.replay_rounded, size: 18, color: Colors.white),
            label: const Text('Empezar de nuevo', style: TextStyle(color: Colors.white)),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: GtvTheme.border),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              shape: const StadiumBorder(),
            ),
          ),
        ],
      ],
    );
  }

  String _firstBackdrop(Map<String, dynamic> info) {
    final list = info['backdrop_path'];
    if (list is List && list.isNotEmpty) return list.first.toString();
    if (list is String) return list;
    return '';
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: GtvTheme.surface,
          shape: BoxShape.circle,
          border: Border.all(color: GtvTheme.border),
        ),
        child: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 20),
      ),
    );
  }
}

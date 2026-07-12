import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../i18n/strings.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/player_constants.dart';
import '../services/resume_store.dart';
import '../theme.dart';
import 'player_screen.dart';
import '../widgets/gtv_focusable.dart';
import '../widgets/no_signal_test_card.dart';

/// Full-screen player using Android ExoPlayer (via [video_player]).
///
/// Default engine — better image quality and faster start than libVLC on
/// most TV boxes for H.264/AAC live and VOD streams.
class ExoPlayerScreen extends StatefulWidget {
  const ExoPlayerScreen({
    super.key,
    required this.playable,
    this.liveProfile,
    this.liveStreamId,
  });

  final Playable playable;
  final Profile? liveProfile;
  final int? liveStreamId;

  @override
  State<ExoPlayerScreen> createState() => _ExoPlayerScreenState();
}

class _ExoPlayerScreenState extends State<ExoPlayerScreen> {
  VideoPlayerController? _controller;
  final _resume = ResumeStore();

  bool _showOverlay = true;
  bool _buffering = true;
  bool _noSignal = false;
  bool _initialSeekDone = false;
  String? _fatalError;
  String? _epgNow;

  Timer? _hideTimer;
  Timer? _saveTimer;
  Timer? _noSignalTimer;
  Duration _lastGoodPosition = Duration.zero;

  @override
  void initState() {
    super.initState();
    _initPlayer();
    _armAutoHide();
    _loadEpg();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Future<void> _loadEpg() async {
    if (!widget.playable.isLive ||
        widget.liveProfile == null ||
        widget.liveStreamId == null) {
      return;
    }
    try {
      final ep = await ApiService()
          .shortEpg(widget.liveProfile!, widget.liveStreamId!, limit: 1);
      if (!mounted || ep.isEmpty) return;
      setState(() => _epgNow = (ep[0]['title'] ?? '').toString());
    } catch (_) {}
  }

  Future<void> _initPlayer() async {
    try {
      final uri = Uri.parse(widget.playable.url);
      final c = VideoPlayerController.networkUrl(
        uri,
        httpHeaders: {
          'User-Agent': ApiService.activeUserAgent,
          'Accept': '*/*',
          'Accept-Encoding': 'identity',
          'Connection': 'keep-alive',
          'Icy-MetaData': '1',
          'Referer': '${uri.scheme}://${uri.host}/',
        },
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: false),
      );
      _controller = c;
      c.addListener(_onUpdate);
      await c.initialize().timeout(const Duration(seconds: 20));
      if (!mounted) return;

      if (widget.playable.initialPositionMs > 0 && !widget.playable.isLive) {
        await c.seekTo(Duration(milliseconds: widget.playable.initialPositionMs));
      }
      await c.setVolume(1.0);
      await c.play();
      _armNoSignalTimer();
      _saveTimer = Timer.periodic(const Duration(seconds: 10), (_) => _saveResume());
      setState(() {
        _buffering = false;
        _fatalError = null;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _buffering = false;
        _fatalError = e.toString();
      });
      await Future<void>.delayed(const Duration(milliseconds: 400));
      if (!mounted) return;
      await _fallbackToVlc();
    }
  }

  Future<void> _fallbackToVlc() async {
    if (!mounted) return;
    final route = MaterialPageRoute(
      builder: (_) => PlayerScreen(
        playable: widget.playable,
        liveProfile: widget.liveProfile,
        liveStreamId: widget.liveStreamId,
      ),
    );
    await Navigator.of(context).pushReplacement(route);
  }

  void _onUpdate() {
    if (!mounted) return;
    final c = _controller;
    if (c == null) return;
    final v = c.value;
    final buf = v.isBuffering;
    if (buf != _buffering) setState(() => _buffering = buf);

    if (v.isPlaying && v.position - _lastGoodPosition > const Duration(milliseconds: 500)) {
      _lastGoodPosition = v.position;
      if (_noSignal) setState(() => _noSignal = false);
      _armNoSignalTimer();
    }
  }

  void _armNoSignalTimer() {
    _noSignalTimer?.cancel();
    final start = _lastGoodPosition;
    _noSignalTimer = Timer(PlayerConstants.noSignalDelay, () {
      if (!mounted) return;
      if (_lastGoodPosition - start < const Duration(seconds: 1)) {
        setState(() => _noSignal = true);
      }
    });
  }

  Future<void> _saveResume() async {
    final c = _controller;
    if (c == null || widget.playable.isLive) return;
    final pos = c.value.position;
    final dur = c.value.duration;
    if (dur.inMilliseconds <= 0) return;
    await _resume.save(
      widget.playable.kind,
      widget.playable.id,
      pos.inMilliseconds,
      dur.inMilliseconds,
    );
  }

  @override
  void dispose() {
    _saveResume();
    _hideTimer?.cancel();
    _saveTimer?.cancel();
    _noSignalTimer?.cancel();
    _controller?.removeListener(_onUpdate);
    _controller?.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.dispose();
  }

  void _armAutoHide() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(milliseconds: 3500), () {
      if (mounted) setState(() => _showOverlay = false);
    });
  }

  Future<void> _exit() async {
    await _saveResume();
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    final c = _controller;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _exit();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Focus(
          autofocus: true,
          onKeyEvent: (_, event) {
            if (event is KeyDownEvent &&
                (event.logicalKey == LogicalKeyboardKey.enter ||
                    event.logicalKey == LogicalKeyboardKey.select ||
                    event.logicalKey == LogicalKeyboardKey.space)) {
              setState(() => _showOverlay = !_showOverlay);
              if (_showOverlay) _armAutoHide();
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: GestureDetector(
            onTap: () {
              setState(() => _showOverlay = !_showOverlay);
              if (_showOverlay) _armAutoHide();
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (c != null && c.value.isInitialized)
                  Center(
                    child: AspectRatio(
                      aspectRatio: c.value.aspectRatio > 0 ? c.value.aspectRatio : 16 / 9,
                      child: VideoPlayer(c),
                    ),
                  )
                else if (_fatalError != null)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Error de reproducción',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _fatalError!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: GtvTheme.textDim, fontSize: 13),
                          ),
                          const SizedBox(height: 20),
                          GtvFocusable(
                            autofocus: true,
                            onTap: _fallbackToVlc,
                            borderRadius: BorderRadius.circular(999),
                            child: ElevatedButton.icon(
                              onPressed: _fallbackToVlc,
                              icon: const Icon(Icons.refresh_rounded),
                              label: const Text('Probar con libVLC'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: GtvTheme.red,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (_noSignal)
                  Positioned.fill(
                    child: NoSignalTestCard(channelName: widget.playable.title),
                  ),
                if (_buffering && _fatalError == null && !_noSignal)
                  const Center(
                      child: CircularProgressIndicator(color: GtvTheme.red)),
                AnimatedOpacity(
                  opacity: _showOverlay ? 1 : 0,
                  duration: const Duration(milliseconds: 220),
                  child: IgnorePointer(
                    ignoring: !_showOverlay,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.75),
                            Colors.transparent,
                            Colors.black.withOpacity(0.85),
                          ],
                          stops: const [0, 0.45, 1],
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 16, 0),
                              child: Row(
                                children: [
                                  GtvFocusable(
                                    onTap: _exit,
                                    borderRadius: BorderRadius.circular(999),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.arrow_back_rounded,
                                          color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widget.playable.title,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        if (_epgNow != null && _epgNow!.isNotEmpty)
                                          Text(_epgNow!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  color: GtvTheme.textDim,
                                                  fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            if (!widget.playable.isLive && c != null && c.value.isInitialized)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: VideoProgressIndicator(
                                  c,
                                  allowScrubbing: true,
                                  colors: const VideoProgressColors(
                                    playedColor: GtvTheme.red,
                                    bufferedColor: Colors.white24,
                                    backgroundColor: Colors.white12,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

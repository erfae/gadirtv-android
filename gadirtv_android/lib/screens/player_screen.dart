import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../theme.dart';

/// Full-screen media_kit player with a custom overlay.
///
///  - Overlay fades in on tap / D-pad and auto-hides after 3.5 s.
///  - Live streams hide the progress bar (they don't seek).
///  - VOD & series save their position on pause/exit so we can offer
///    "Continuar viendo" next time.
///  - Screen stays awake for the whole session and is released on dispose.
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key, required this.playable, this.liveProfile, this.liveStreamId});

  final Playable playable;

  /// When [playable.isLive] and both are supplied, the top bar fetches
  /// `get_short_epg` and shows the current programme name under the title.
  final Profile? liveProfile;
  final int? liveStreamId;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late final Player _player;
  late final VideoController _controller;
  final _resume = ResumeStore();
  final _api = ApiService();

  bool _showOverlay = true;
  bool _buffering = false;
  bool _ended = false;
  String? _fatalError;
  String? _epgNow;    // current programme name
  String? _epgNext;   // next programme name

  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _volume = 100;

  Timer? _hideTimer;
  Timer? _saveTimer;

  List<StreamSubscription> _subs = [];

  @override
  void initState() {
    super.initState();
    _initPlayer();
    _armAutoHide();
    WakelockPlus.enable();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Future<void> _initPlayer() async {
    _player = Player();
    _controller = VideoController(_player);

    _subs = [
      _player.stream.position.listen((p) {
        if (mounted) setState(() => _position = p);
      }),
      _player.stream.duration.listen((d) {
        if (mounted) setState(() => _duration = d);
      }),
      _player.stream.buffering.listen((b) {
        if (mounted) setState(() => _buffering = b);
      }),
      _player.stream.completed.listen((c) {
        if (c && mounted) setState(() => _ended = true);
      }),
      _player.stream.error.listen((e) {
        if (mounted) setState(() => _fatalError = e.toString());
      }),
    ];

    await _player.open(Media(widget.playable.url), play: true);

    if (widget.playable.initialPositionMs > 0 && !widget.playable.isLive) {
      // Wait a beat for the stream to open before seeking.
      Future.delayed(const Duration(milliseconds: 800), () async {
        if (!mounted) return;
        await _player.seek(Duration(milliseconds: widget.playable.initialPositionMs));
      });
    }

    // Save resume position every 10 s while playing.
    _saveTimer = Timer.periodic(const Duration(seconds: 10), (_) => _saveResume());
  }

  Future<void> _saveResume() async {
    if (widget.playable.isLive || _duration.inMilliseconds <= 0) return;
    await _resume.save(
      widget.playable.kind,
      widget.playable.id,
      _position.inMilliseconds,
      _duration.inMilliseconds,
    );
  }

  @override
  void dispose() {
    _saveResume();
    _hideTimer?.cancel();
    _saveTimer?.cancel();
    for (final s in _subs) {
      s.cancel();
    }
    _player.dispose();
    WakelockPlus.disable();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.dispose();
  }

  void _armAutoHide() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(milliseconds: 3500), () {
      if (mounted) setState(() => _showOverlay = false);
    });
  }

  void _toggleOverlay() {
    setState(() => _showOverlay = !_showOverlay);
    if (_showOverlay) _armAutoHide();
  }

  Future<void> _togglePlayPause() async {
    await _player.playOrPause();
    if (_showOverlay) _armAutoHide();
  }

  Future<void> _seekBy(Duration delta) async {
    final target = _position + delta;
    final clamped = target < Duration.zero
        ? Duration.zero
        : (target > _duration ? _duration : target);
    await _player.seek(clamped);
    if (_showOverlay) _armAutoHide();
  }

  Future<void> _setVolume(double v) async {
    setState(() => _volume = v);
    await _player.setVolume(v);
    if (_showOverlay) _armAutoHide();
  }

  KeyEventResult _onKey(FocusNode _, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    switch (event.logicalKey.keyLabel) {
      case 'Arrow Left':
        _seekBy(const Duration(seconds: -10));
        return KeyEventResult.handled;
      case 'Arrow Right':
        _seekBy(const Duration(seconds: 10));
        return KeyEventResult.handled;
      case 'Arrow Up':
        _setVolume((_volume + 10).clamp(0, 200));
        return KeyEventResult.handled;
      case 'Arrow Down':
        _setVolume((_volume - 10).clamp(0, 200));
        return KeyEventResult.handled;
      case ' ':
      case 'Enter':
      case 'Select':
        _togglePlayPause();
        return KeyEventResult.handled;
      default:
        return KeyEventResult.ignored;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Focus(
          autofocus: true,
          onKeyEvent: _onKey,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _toggleOverlay,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Video(
                  controller: _controller,
                  controls: NoVideoControls,
                  fit: BoxFit.contain,
                ),
                if (_buffering && _fatalError == null)
                  const Center(child: CircularProgressIndicator(color: GtvTheme.red)),
                if (_fatalError != null) _buildError(),
                if (_ended) _buildEnded(),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 220),
                  opacity: _showOverlay ? 1 : 0,
                  child: IgnorePointer(
                    ignoring: !_showOverlay,
                    child: _buildOverlay(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.55),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.75),
          ],
          stops: const [0, 0.25, 0.65, 1],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTopBar(),
          const Spacer(),
          _buildCenterControls(),
          const Spacer(),
          if (!widget.playable.isLive) _buildProgress(),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 28),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.playable.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
              ),
              if (widget.playable.subtitle.isNotEmpty)
                Text(
                  widget.playable.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: GtvTheme.textDim, fontSize: 12),
                ),
              if (_epgNow != null) ...[
                const SizedBox(height: 2),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: GtvTheme.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Text(
                        'AHORA',
                        style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w800, letterSpacing: 0.6),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _epgNow!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                if (_epgNext != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      'Después: ${_epgNext!}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: GtvTheme.textDim, fontSize: 11),
                    ),
                  ),
              ],
            ],
          ),
        ),
        if (widget.playable.isLive)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: GtvTheme.red,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'EN DIRECTO',
              style: TextStyle(color: Colors.white, fontSize: 10, letterSpacing: 1.2, fontWeight: FontWeight.w800),
            ),
          ),
      ],
    );
  }

  Widget _buildCenterControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!widget.playable.isLive)
          _CircleBtn(
            icon: Icons.replay_10_rounded,
            onTap: () => _seekBy(const Duration(seconds: -10)),
          ),
        const SizedBox(width: 32),
        _CircleBtn(
          icon: _player.state.playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
          big: true,
          onTap: _togglePlayPause,
        ),
        const SizedBox(width: 32),
        if (!widget.playable.isLive)
          _CircleBtn(
            icon: Icons.forward_10_rounded,
            onTap: () => _seekBy(const Duration(seconds: 10)),
          ),
      ],
    );
  }

  Widget _buildProgress() {
    final total = _duration.inMilliseconds.clamp(1, 1 << 31).toDouble();
    final current = _position.inMilliseconds.clamp(0, _duration.inMilliseconds).toDouble();
    return Row(
      children: [
        Text(_fmt(_position), style: const TextStyle(color: Colors.white, fontSize: 12)),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: GtvTheme.red,
              inactiveTrackColor: Colors.white24,
              thumbColor: GtvTheme.red,
              overlayColor: GtvTheme.red.withOpacity(0.2),
              trackHeight: 3,
            ),
            child: Slider(
              min: 0,
              max: total,
              value: current.clamp(0, total),
              onChanged: (v) => setState(() => _position = Duration(milliseconds: v.toInt())),
              onChangeEnd: (v) => _player.seek(Duration(milliseconds: v.toInt())),
            ),
          ),
        ),
        Text(_fmt(_duration), style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget _buildError() {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.wifi_off_rounded, color: GtvTheme.red, size: 48),
          const SizedBox(height: 12),
          const Text('SIN SEÑAL', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
          const SizedBox(height: 6),
          Text(_fatalError!, style: const TextStyle(color: GtvTheme.textDim, fontSize: 12), textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).maybePop(),
            icon: const Icon(Icons.arrow_back_rounded),
            label: const Text('VOLVER'),
          ),
        ],
      ),
    );
  }

  Widget _buildEnded() {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_circle_rounded, color: GtvTheme.red, size: 48),
          const SizedBox(height: 12),
          const Text('Reproducción finalizada', style: TextStyle(color: Colors.white, fontSize: 18)),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).maybePop(),
            icon: const Icon(Icons.arrow_back_rounded),
            label: const Text('VOLVER'),
          ),
        ],
      ),
    );
  }

  String _fmt(Duration d) {
    final h = d.inHours;
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return h > 0 ? '$h:$m:$s' : '$m:$s';
  }
}

class _CircleBtn extends StatefulWidget {
  const _CircleBtn({required this.icon, required this.onTap, this.big = false});

  final IconData icon;
  final VoidCallback onTap;
  final bool big;

  @override
  State<_CircleBtn> createState() => _CircleBtnState();
}

class _CircleBtnState extends State<_CircleBtn> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final size = widget.big ? 76.0 : 56.0;
    return FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _focused = v),
      mouseCursor: SystemMouseCursors.click,
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
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: _focused ? GtvTheme.red : Colors.black.withOpacity(0.55),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white.withOpacity(_focused ? 0.9 : 0.15), width: 2),
          ),
          child: Icon(widget.icon, color: Colors.white, size: widget.big ? 40 : 28),
        ),
      ),
    );
  }
}

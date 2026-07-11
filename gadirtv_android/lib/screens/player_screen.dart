import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/resume_store.dart';
import '../services/vlc_bootstrap.dart';
import '../services/vlc_device_profile.dart';
import '../theme.dart';
import '../widgets/no_signal_test_card.dart';
import '../i18n/strings.dart';

/// Full-screen libVLC player with a custom overlay.
///
///  - Overlay fades in on tap / D-pad and auto-hides after 3.5 s.
///  - Live streams hide the progress bar (they don't seek).
///  - VOD & series save their position on pause/exit so we can offer
///    "Continuar viendo" next time.
///  - Screen stays awake for the whole session and is released on dispose.
///
/// Migrated from `media_kit` (libmpv) to `flutter_vlc_player` (libVLC) —
/// libVLC is the same engine XCIPTV Player ships, which is verified to
/// run on the Xiaomi Amlogic TV boxes where libmpv silently crashed.
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
  VlcPlayerController? _controller;
  final _resume = ResumeStore();

  bool _showOverlay = true;
  bool _buffering = false;
  bool _ended = false;
  bool _noSignal = false;
  bool _isPlaying = false;
  bool _initialSeekDone = false;
  String? _fatalError;
  String? _epgNow;    // current programme name
  String? _epgNext;   // next programme name
  BoxFit _videoFit = BoxFit.contain; // toggled by fullscreen button
  Duration _lastGoodPosition = Duration.zero;

  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _volume = 100;

  Timer? _hideTimer;
  Timer? _saveTimer;
  Timer? _noSignalTimer;

  @override
  void initState() {
    super.initState();
    _initPlayer();
    _armAutoHide();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  void _initPlayer() async {
    try {
      await VlcBootstrap.ensureReady();
    } catch (e) {
      if (mounted) setState(() => _fatalError = e.toString());
      return;
    }
    if (!mounted) return;
    _controller = VlcPlayerController.network(
      widget.playable.url,
      hwAcc: VlcDeviceProfile.hwAcc,
      autoPlay: true,
      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          // 1500 ms of network cache — enough to smooth over Wi-Fi
          // hiccups on TV boxes without adding perceptible zap delay.
          VlcAdvancedOptions.networkCaching(1500),
          VlcAdvancedOptions.liveCaching(1500),
          VlcAdvancedOptions.fileCaching(1500),
        ]),
        http: VlcHttpOptions([
          VlcHttpOptions.httpReconnect(true),
          // Inject the rotating User-Agent that bypasses the upstream
          // 512 HTTP block. Same trick XCIPTV uses.
          VlcHttpOptions.httpUserAgent(ApiService.activeUserAgent),
        ]),
        extras: VlcDeviceProfile.vlcExtras,
      ),
    );

    _controller.addListener(_onControllerUpdate);

    // Start the no-signal watchdog. If we don't see any frames in 10 s
    // we display the test-pattern card so the user knows the stream is
    // dead instead of staring at a black screen.
    _armNoSignalTimer();

    // Save resume position every 10 s while playing.
    _saveTimer = Timer.periodic(const Duration(seconds: 10), (_) => _saveResume());
  }

  void _onControllerUpdate() {
    if (!mounted) return;
    final c = _controller;
    if (c == null) return;
    final value = c.value;

    final newPosition = value.position;
    final newDuration = value.duration;
    final newState = value.playingState;
    final newBuffering = newState == PlayingState.buffering;
    final newPlaying = newState == PlayingState.playing;
    // VLC does not expose a distinct "ended" state — it transitions to
    // `stopped` both on end-of-stream and on manual stop. Consider the
    // stream ended only when we have a known duration and playback
    // stopped at or near the end.
    final newEnded = newState == PlayingState.stopped &&
        !widget.playable.isLive &&
        newDuration.inMilliseconds > 0 &&
        newPosition.inMilliseconds >= newDuration.inMilliseconds - 2000;

      // Seek to resume point once the media is initialized (VOD/series only).
    if (!_initialSeekDone &&
        value.isInitialized &&
        widget.playable.initialPositionMs > 0 &&
        !widget.playable.isLive) {
      _initialSeekDone = true;
      Future.delayed(const Duration(milliseconds: 400), () async {
        if (!mounted) return;
        try {
          await c.seekTo(
            Duration(milliseconds: widget.playable.initialPositionMs),
          );
        } catch (_) {}
      });
    }

    // Detect fatal error but tolerate transient demux warnings.
    if (newState == PlayingState.error && _fatalError == null) {
      Future.delayed(const Duration(seconds: 4), () {
        if (!mounted) return;
        if (c.value.playingState == PlayingState.playing) return; // recovered
        if (c.value.position > Duration.zero) return; // showing frames
        setState(() {
          _fatalError = c.value.errorDescription.isNotEmpty
              ? c.value.errorDescription
              : 'Playback error';
        });
      });
    }

    setState(() {
      _position = newPosition;
      _duration = newDuration;
      _buffering = newBuffering;
      _isPlaying = newPlaying;
      _ended = newEnded;

      // If playback is progressing, clear any stale "SIN SEÑAL".
      if (newPosition > _lastGoodPosition) {
        _lastGoodPosition = newPosition;
        if (_fatalError != null) _fatalError = null;
        if (_noSignal) _noSignal = false;
        _armNoSignalTimer(); // reset — we're playing
      }

      // A playing event clears any stale error.
      if (newPlaying && _fatalError != null) {
        _fatalError = null;
      }
    });
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
    _noSignalTimer?.cancel();
    final c = _controller;
    if (c != null) {
      c.removeListener(_onControllerUpdate);
      c.stopRendererScanning().catchError((_) {});
      c.dispose();
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.dispose();
  }

  void _armNoSignalTimer() {
    _noSignalTimer?.cancel();
    // Snapshot the current position; if it hasn't meaningfully advanced
    // in 10 s the stream is stuck / buffering forever → show the test
    // card. Checking `_position <= 0` is not enough because libVLC
    // reports a few hundred ms of position while priming its demuxer,
    // even on dead streams.
    final startPos = _position;
    _noSignalTimer = Timer(const Duration(seconds: 10), () {
      if (!mounted) return;
      if (_position - startPos < const Duration(seconds: 1)) {
        setState(() => _noSignal = true);
      }
    });
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
    final c = _controller;
    if (c == null) return;
    if (_isPlaying) {
      await c.pause();
    } else {
      await c.play();
    }
    if (_showOverlay) _armAutoHide();
  }

  Future<void> _seekBy(Duration delta) async {
    final c = _controller;
    if (c == null) return;
    final target = _position + delta;
    final clamped = target < Duration.zero
        ? Duration.zero
        : (target > _duration ? _duration : target);
    await c.seekTo(clamped);
    if (_showOverlay) _armAutoHide();
  }

  Future<void> _setVolume(double v) async {
    final c = _controller;
    if (c == null) return;
    setState(() => _volume = v);
    // VLC expects int 0-100 for volume.
    await c.setVolume(v.round().clamp(0, 100));
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
        _setVolume((_volume + 10).clamp(0, 100));
        return KeyEventResult.handled;
      case 'Arrow Down':
        _setVolume((_volume - 10).clamp(0, 100));
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
                _buildVideoSurface(),
                if (_noSignal)
                  Positioned.fill(
                    child: NoSignalTestCard(channelName: widget.playable.title),
                  ),
                if (_buffering && _fatalError == null && !_noSignal)
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
                // Always-tappable back button (survives IgnorePointer hide).
                Positioned(
                  top: 8,
                  left: 8,
                  child: SafeArea(
                    child: Material(
                      color: Colors.black.withOpacity(0.5),
                      shape: const CircleBorder(),
                      child: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        customBorder: const CircleBorder(),
                        child: Container(
                          width: 44,
                          height: 44,
                          alignment: Alignment.center,
                          child: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 24),
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

  /// Fills the Stack with the VLC surface, honoring the current [BoxFit]
  /// (toggle between letterbox `contain` and fill-crop `cover`).
  Widget _buildVideoSurface() {
    final c = _controller;
    if (c == null) return const ColoredBox(color: Colors.black);

    // Native video aspect ratio, or 16:9 fallback if not yet known.
    final size = c.value.size;
    final videoAr = (size.width > 0 && size.height > 0)
        ? size.width / size.height
        : 16 / 9;

    return LayoutBuilder(
      builder: (ctx, cons) {
        final containerAr = cons.maxWidth / cons.maxHeight;
        // Compute the FittedBox child dimensions so the underlying
        // Texture stays at the correct AR regardless of screen shape.
        final double w, h;
        if (_videoFit == BoxFit.cover) {
          // Fill and crop overflow.
          if (containerAr > videoAr) {
            w = cons.maxWidth;
            h = cons.maxWidth / videoAr;
          } else {
            h = cons.maxHeight;
            w = cons.maxHeight * videoAr;
          }
        } else {
          // Letterbox (contain).
          if (containerAr > videoAr) {
            h = cons.maxHeight;
            w = cons.maxHeight * videoAr;
          } else {
            w = cons.maxWidth;
            h = cons.maxWidth / videoAr;
          }
        }

        return Center(
          child: SizedBox(
            width: w,
            height: h,
            child: VlcPlayer(
              controller: c,
              aspectRatio: videoAr,
              placeholder: const SizedBox.shrink(),
            ),
          ),
        );
      },
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
          _buildVolumeBar(),
          if (!widget.playable.isLive) ...[
            const SizedBox(height: 8),
            _buildProgress(),
          ],
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
            child: Text(
              AppI18n.of(context).live,
              style: const TextStyle(color: Colors.white, fontSize: 10, letterSpacing: 1.2, fontWeight: FontWeight.w800),
            ),
          ),
        const SizedBox(width: 8),
        IconButton(
          tooltip: AppI18n.of(context).fullscreen,
          onPressed: () {
            setState(() => _videoFit = _videoFit == BoxFit.contain ? BoxFit.cover : BoxFit.contain);
            if (_showOverlay) _armAutoHide();
          },
          icon: Icon(
            _videoFit == BoxFit.contain ? Icons.fullscreen_rounded : Icons.fullscreen_exit_rounded,
            color: Colors.white,
            size: 28,
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
          icon: _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
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

  Widget _buildVolumeBar() {
    return Row(
      children: [
        Icon(
          _volume <= 0 ? Icons.volume_off_rounded : (_volume < 60 ? Icons.volume_down_rounded : Icons.volume_up_rounded),
          color: Colors.white,
          size: 22,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white24,
              thumbColor: Colors.white,
              overlayColor: Colors.white.withOpacity(0.2),
              trackHeight: 2,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            ),
            child: Slider(
              min: 0,
              max: 100,
              value: _volume.clamp(0, 100),
              onChanged: _setVolume,
            ),
          ),
        ),
        SizedBox(
          width: 34,
          child: Text('${_volume.round()}',
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white70, fontSize: 12)),
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
              onChangeEnd: (v) => _controller?.seekTo(Duration(milliseconds: v.toInt())),
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

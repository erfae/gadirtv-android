/// Diagnostic stub for the v0.3.35 no-player build. Emits the same class
/// names / signatures as `package:media_kit` and `package:media_kit_video`
/// so we can remove libmpv from the APK without rewriting the whole
/// player logic.
///
/// Every operation is a no-op; the screens that would otherwise show
/// video display a placeholder container instead. Once we confirm the
/// Xiaomi TV Box crash is caused by libmpv, this stub is deleted and
/// the real player is either restored or replaced with `flutter_vlc_player`.
library media_kit_stub;

import 'dart:async';

import 'package:flutter/material.dart';

class Player {
  final _positionCtrl = StreamController<Duration>.broadcast();
  final _durationCtrl = StreamController<Duration>.broadcast();
  final _bufferingCtrl = StreamController<bool>.broadcast();
  final _completedCtrl = StreamController<bool>.broadcast();
  final _playingCtrl = StreamController<bool>.broadcast();
  final _errorCtrl = StreamController<String>.broadcast();

  late final _Streams stream = _Streams(
    position: _positionCtrl.stream,
    duration: _durationCtrl.stream,
    buffering: _bufferingCtrl.stream,
    completed: _completedCtrl.stream,
    playing: _playingCtrl.stream,
    error: _errorCtrl.stream,
  );

  _State get state => _State();

  dynamic get platform => this; // Accept setProperty calls silently.

  Future<void> open(Media m, {bool play = true}) async {}
  Future<void> stop() async {}
  Future<void> pause() async {}
  Future<void> play() async {}
  Future<void> playOrPause() async {}
  Future<void> seek(Duration d) async {}
  Future<void> setVolume(double v) async {}
  Future<void> setProperty(String k, String v) async {}

  void dispose() {
    _positionCtrl.close();
    _durationCtrl.close();
    _bufferingCtrl.close();
    _completedCtrl.close();
    _playingCtrl.close();
    _errorCtrl.close();
  }
}

class _State {
  bool get playing => false;
}

class _Streams {
  _Streams({
    required this.position,
    required this.duration,
    required this.buffering,
    required this.completed,
    required this.playing,
    required this.error,
  });
  final Stream<Duration> position;
  final Stream<Duration> duration;
  final Stream<bool> buffering;
  final Stream<bool> completed;
  final Stream<bool> playing;
  final Stream<String> error;
}

class Media {
  Media(this.uri, {this.httpHeaders});
  final String uri;
  final Map<String, String>? httpHeaders;
}

class VideoController {
  VideoController(this.player);
  final Player player;
}

class MediaKit {
  static void ensureInitialized() {}
}

class NoVideoControls {}

class Video extends StatelessWidget {
  const Video({
    super.key,
    required this.controller,
    this.controls,
    this.fit = BoxFit.contain,
  });

  final VideoController controller;
  final Object? controls;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: const Text(
        'Reproductor deshabilitado\nen modo diagnóstico',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white38, fontSize: 12),
      ),
    );
  }
}

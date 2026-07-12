import 'package:flutter/material.dart';

import '../models/playable.dart';
import '../models/profile.dart';
import '../screens/exo_player_screen.dart';
import '../screens/player_screen.dart';
import '../utils/tv_utils.dart';
import 'external_player.dart';
import 'player_constants.dart';
import 'prefs_settings.dart';

/// Routes playback to ExoPlayer, libVLC or an external app based on settings.
class PlaybackLauncher {
  PlaybackLauncher._();

  static Future<void> launch(
    BuildContext context, {
    required Playable playable,
    Profile? liveProfile,
    int? liveStreamId,
  }) async {
    var engine = await PrefsSettings().getPlayerEngine();
    if (await TvUtils.isEmulator()) {
      engine = PlayerEngine.exo;
    }

    if (engine == PlayerEngine.external) {
      final ok = await ExternalPlayer.launch(playable.url);
      if (!context.mounted) return;
      if (!ok) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'No hay un reproductor externo instalado. '
              'Instala VLC o MX Player, o elige ExoPlayer en Ajustes.',
            ),
            duration: Duration(seconds: 5),
          ),
        );
      }
      return;
    }

    if (engine == PlayerEngine.vlc) {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => PlayerScreen(
            playable: playable,
            liveProfile: liveProfile,
            liveStreamId: liveStreamId,
          ),
        ),
      );
      return;
    }

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ExoPlayerScreen(
          playable: playable,
          liveProfile: liveProfile,
          liveStreamId: liveStreamId,
        ),
      ),
    );
  }
}

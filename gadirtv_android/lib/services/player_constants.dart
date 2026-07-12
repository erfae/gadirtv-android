/// Shared playback tuning for all built-in players.
class PlayerConstants {
  PlayerConstants._();

  /// Wait longer before showing the "sin señal" card — IPTV panels can be slow.
  static const noSignalDelay = Duration(seconds: 25);

  /// libVLC network cache (ms) — lower = faster zapping, higher = smoother.
  static const vlcLiveCacheMs = 600;
  static const vlcVodCacheMs = 1200;
}

/// Player engine ids stored in [PrefsSettings].
class PlayerEngine {
  PlayerEngine._();

  static const exo = 'exo';
  static const vlc = 'vlc';
  static const external = 'external';

  static const defaultEngine = exo;

  static const labels = {
    exo: 'ExoPlayer (recomendado — mejor imagen)',
    vlc: 'libVLC (compatible con más formatos)',
    external: 'Reproductor externo (VLC, MX Player…)',
  };
}

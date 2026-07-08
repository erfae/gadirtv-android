/// A single thing that can be sent to the [PlayerScreen].
///
/// Abstracts the 3 Xtream flavors so the player never has to branch on kind.
/// It just needs the resolved URL and a display title.
class Playable {
  /// One of `'live'`, `'movie'`, `'series'`. Used to decide whether to show
  /// a progress bar (VOD/series only) and to pick the resume-store key.
  final String kind;
  final String id;
  final String title;
  final String subtitle;
  final String url;
  final int initialPositionMs;

  const Playable({
    required this.kind,
    required this.id,
    required this.title,
    required this.url,
    this.subtitle = '',
    this.initialPositionMs = 0,
  });

  bool get isLive => kind == 'live';
}

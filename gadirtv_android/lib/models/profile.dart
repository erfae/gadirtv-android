/// A saved streaming profile. Supports two modes:
///  * `xtream` — Xtream Codes account (host + username + password → JSON API)
///  * `m3u`    — direct M3U playlist URL (single URL → flat channel list)
///
/// Legacy profiles without a `mode` field default to `xtream`.
class Profile {
  final String mode; // 'xtream' | 'm3u'
  final String name;
  final String host;      // Xtream base URL (used in xtream mode)
  final String username;  // Xtream only
  final String password;  // Xtream only
  final String m3uUrl;    // M3U playlist URL (used in m3u mode)
  final int avatarSeed;

  const Profile({
    required this.name,
    this.mode = 'xtream',
    this.host = '',
    this.username = '',
    this.password = '',
    this.m3uUrl = '',
    this.avatarSeed = 0,
  });

  bool get isXtream => mode == 'xtream';
  bool get isM3U => mode == 'm3u';

  Profile copyWith({
    String? mode,
    String? name,
    String? host,
    String? username,
    String? password,
    String? m3uUrl,
    int? avatarSeed,
  }) =>
      Profile(
        mode: mode ?? this.mode,
        name: name ?? this.name,
        host: host ?? this.host,
        username: username ?? this.username,
        password: password ?? this.password,
        m3uUrl: m3uUrl ?? this.m3uUrl,
        avatarSeed: avatarSeed ?? this.avatarSeed,
      );

  Map<String, dynamic> toJson() => {
        'mode': mode,
        'name': name,
        'host': host,
        'username': username,
        'password': password,
        'm3uUrl': m3uUrl,
        'avatarSeed': avatarSeed,
      };

  factory Profile.fromJson(Map<String, dynamic> j) => Profile(
        mode: (j['mode'] ?? 'xtream') as String,
        name: (j['name'] ?? '') as String,
        host: (j['host'] ?? '') as String,
        username: (j['username'] ?? '') as String,
        password: (j['password'] ?? '') as String,
        m3uUrl: (j['m3uUrl'] ?? '') as String,
        avatarSeed: (j['avatarSeed'] ?? 0) as int,
      );

  /// Stable identifier — same account = same key across saves.
  String get id => isM3U ? 'm3u|$m3uUrl' : '$host|$username';
}

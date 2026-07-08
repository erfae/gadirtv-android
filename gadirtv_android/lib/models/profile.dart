/// A saved Xtream Codes account. Mirrors the shape used by the Windows app:
///   { name, host, username, password, avatarColor }
///
/// [name] is a user-friendly label; [host] is the Xtream base URL
/// (`http://gadir.co:80`); [username]/[password] authenticate against
/// `player_api.php`.
class Profile {
  final String name;
  final String host;
  final String username;
  final String password;
  final int avatarSeed; // deterministic color index

  const Profile({
    required this.name,
    required this.host,
    required this.username,
    required this.password,
    this.avatarSeed = 0,
  });

  Profile copyWith({
    String? name,
    String? host,
    String? username,
    String? password,
    int? avatarSeed,
  }) =>
      Profile(
        name: name ?? this.name,
        host: host ?? this.host,
        username: username ?? this.username,
        password: password ?? this.password,
        avatarSeed: avatarSeed ?? this.avatarSeed,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'host': host,
        'username': username,
        'password': password,
        'avatarSeed': avatarSeed,
      };

  factory Profile.fromJson(Map<String, dynamic> j) => Profile(
        name: (j['name'] ?? '') as String,
        host: (j['host'] ?? 'http://gadir.co:80') as String,
        username: (j['username'] ?? '') as String,
        password: (j['password'] ?? '') as String,
        avatarSeed: (j['avatarSeed'] ?? 0) as int,
      );

  /// A stable identifier — same account = same key across saves.
  String get id => '$host|$username';
}

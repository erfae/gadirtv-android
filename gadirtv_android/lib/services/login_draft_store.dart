import 'package:shared_preferences/shared_preferences.dart';

import '../config/dev_defaults.dart';

/// Persists the login form between app sessions so users can switch VPN
/// and retry without re-typing credentials.
class LoginDraftStore {
  static const _kMode = 'login_draft_mode';
  static const _kHost = 'login_draft_host';
  static const _kUser = 'login_draft_user';
  static const _kPass = 'login_draft_pass';
  static const _kName = 'login_draft_name';
  static const _kM3uUrl = 'login_draft_m3u_url';

  Future<LoginDraft> load() async {
    final prefs = await SharedPreferences.getInstance();
    final hasSaved = prefs.containsKey(_kHost) ||
        prefs.containsKey(_kUser) ||
        prefs.containsKey(_kPass) ||
        prefs.containsKey(_kName);

    if (!hasSaved && DevDefaults.enabled) {
      return const LoginDraft(
        mode: 'xtream',
        host: DevDefaults.host,
        username: DevDefaults.username,
        password: DevDefaults.password,
        name: DevDefaults.profileName,
        m3uUrl: '',
      );
    }

    return LoginDraft(
      mode: prefs.getString(_kMode) ?? 'xtream',
      host: prefs.getString(_kHost) ?? '',
      username: prefs.getString(_kUser) ?? '',
      password: prefs.getString(_kPass) ?? '',
      name: prefs.getString(_kName) ?? '',
      m3uUrl: prefs.getString(_kM3uUrl) ?? '',
    );
  }

  Future<void> save(LoginDraft draft) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kMode, draft.mode);
    await prefs.setString(_kHost, draft.host);
    await prefs.setString(_kUser, draft.username);
    await prefs.setString(_kPass, draft.password);
    await prefs.setString(_kName, draft.name);
    await prefs.setString(_kM3uUrl, draft.m3uUrl);
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kMode);
    await prefs.remove(_kHost);
    await prefs.remove(_kUser);
    await prefs.remove(_kPass);
    await prefs.remove(_kName);
    await prefs.remove(_kM3uUrl);
  }
}

class LoginDraft {
  const LoginDraft({
    required this.mode,
    required this.host,
    required this.username,
    required this.password,
    required this.name,
    required this.m3uUrl,
  });

  final String mode;
  final String host;
  final String username;
  final String password;
  final String name;
  final String m3uUrl;
}

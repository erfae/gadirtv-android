import 'package:shared_preferences/shared_preferences.dart';

/// Persists user preferences that live outside profiles / favorites —
/// currently just the UI language. Kept as a tiny standalone service so
/// the widgets don't need to import `shared_preferences` directly.
class PrefsSettings {
  static const _keyLanguage = 'settings.language';

  /// Supported locales (BCP-47 codes). Spanish is the default.
  static const List<String> supportedLocales = [
    'es', // Español (por defecto)
    'en', // English
    'fr', // Français
    'de', // Deutsch
    'ar', // العربية
    'zh', // 简体中文
  ];

  /// Human-readable name for each locale, used in the settings dropdown.
  static const Map<String, String> localeNames = {
    'es': 'Español',
    'en': 'English',
    'fr': 'Français',
    'de': 'Deutsch',
    'ar': 'العربية',
    'zh': '简体中文',
  };

  Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_keyLanguage);
    if (v != null && supportedLocales.contains(v)) return v;
    return 'es';
  }

  Future<void> setLanguage(String code) async {
    if (!supportedLocales.contains(code)) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLanguage, code);
  }
}

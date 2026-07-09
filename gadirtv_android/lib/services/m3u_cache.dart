import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/profile.dart';

/// Caches parsed M3U channels per profile so we don't re-download the whole
/// playlist on every app launch (M3U files can be several MB and slow to fetch).
class M3UCache {
  static const _keyPrefix = 'm3u_channels_';

  static Future<void> save(Profile profile, List<Map<String, dynamic>> channels) async {
    if (!profile.isM3U) return;
    final sp = await SharedPreferences.getInstance();
    await sp.setString('$_keyPrefix${profile.id}', jsonEncode(channels));
  }

  static Future<List<Map<String, dynamic>>> load(Profile profile) async {
    if (!profile.isM3U) return const [];
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString('$_keyPrefix${profile.id}');
    if (raw == null || raw.isEmpty) return const [];
    try {
      final data = jsonDecode(raw);
      if (data is! List) return const [];
      return data
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList(growable: false);
    } catch (_) {
      return const [];
    }
  }

  static Future<void> clear(Profile profile) async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove('$_keyPrefix${profile.id}');
  }
}

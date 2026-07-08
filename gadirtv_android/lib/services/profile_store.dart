import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/profile.dart';

/// Persists the list of saved profiles + the last-used ("active") one.
///
/// Storage keys mirror the Windows app (`gp` = profiles, `ga` = active) so
/// the mental model stays identical, but they live in Android's
/// `SharedPreferences` instead of the browser's `localStorage`.
class ProfileStore {
  static const _kProfiles = 'gp';
  static const _kActive = 'ga';

  Future<List<Profile>> loadAll() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_kProfiles);
    if (raw == null || raw.isEmpty) return const [];
    try {
      final list = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
      return list.map(Profile.fromJson).toList();
    } catch (_) {
      return const [];
    }
  }

  Future<void> saveAll(List<Profile> profiles) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _kProfiles,
      jsonEncode(profiles.map((p) => p.toJson()).toList()),
    );
  }

  Future<Profile?> getActive() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_kActive);
    if (raw == null || raw.isEmpty) return null;
    try {
      return Profile.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  Future<void> setActive(Profile? p) async {
    final prefs = await SharedPreferences.getInstance();
    if (p == null) {
      await prefs.remove(_kActive);
    } else {
      await prefs.setString(_kActive, jsonEncode(p.toJson()));
    }
  }

  /// Adds or replaces a profile (same `id` = replace) and returns the
  /// resulting full list.
  Future<List<Profile>> upsert(Profile p) async {
    final all = await loadAll();
    final idx = all.indexWhere((x) => x.id == p.id);
    if (idx >= 0) {
      all[idx] = p;
    } else {
      all.add(p);
    }
    await saveAll(all);
    return all;
  }

  Future<List<Profile>> remove(Profile p) async {
    final all = await loadAll();
    all.removeWhere((x) => x.id == p.id);
    await saveAll(all);
    final active = await getActive();
    if (active?.id == p.id) await setActive(null);
    return all;
  }
}

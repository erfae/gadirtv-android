import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Remembers which Live TV channels the user has starred.
///
/// Backed by shared_preferences (key `gf`) as a JSON list of stream ids.
/// A tiny in-memory cache keeps toggle interactions instant — the store is
/// re-hydrated from disk on demand.
class FavoritesStore {
  static const _key = 'gf';

  Set<int> _cache = <int>{};
  bool _loaded = false;

  Future<Set<int>> loadAll() async {
    if (_loaded) return _cache;
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null || raw.isEmpty) {
      _cache = <int>{};
    } else {
      try {
        final list = (jsonDecode(raw) as List).cast<num>().map((e) => e.toInt());
        _cache = list.toSet();
      } catch (_) {
        _cache = <int>{};
      }
    }
    _loaded = true;
    return _cache;
  }

  Future<bool> isFavorite(int streamId) async {
    final all = await loadAll();
    return all.contains(streamId);
  }

  /// Toggle a stream id in the favorites set and return the new state.
  Future<bool> toggle(int streamId) async {
    final all = await loadAll();
    final wasIn = all.contains(streamId);
    if (wasIn) {
      all.remove(streamId);
    } else {
      all.add(streamId);
    }
    await _persist();
    return !wasIn;
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, jsonEncode(_cache.toList()));
  }
}

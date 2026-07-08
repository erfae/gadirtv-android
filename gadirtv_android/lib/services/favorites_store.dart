import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Remembers which items (Live channels, Movies or Series) the user has
/// starred. One store, three buckets — indexed by [kind]:
///
///   kind = 'live'   → stream ids  (int)
///   kind = 'movie'  → stream ids  (int)
///   kind = 'series' → series ids  (int)
///
/// On-disk shape (key `gf`):
///   { "live": [1,2], "movie": [4], "series": [] }
///
/// Legacy shape (a bare `[1,2,3]`) is transparently migrated the first time
/// we read it so users who starred channels before this change keep them.
class FavoritesStore {
  static const _key = 'gf';
  static const kindLive = 'live';
  static const kindMovie = 'movie';
  static const kindSeries = 'series';

  final Map<String, Set<int>> _cache = {
    kindLive: <int>{},
    kindMovie: <int>{},
    kindSeries: <int>{},
  };
  bool _loaded = false;

  Future<void> _hydrate() async {
    if (_loaded) return;
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw != null && raw.isNotEmpty) {
      try {
        final decoded = jsonDecode(raw);
        if (decoded is List) {
          // Legacy shape: everything was Live favorites.
          _cache[kindLive] = decoded.cast<num>().map((e) => e.toInt()).toSet();
        } else if (decoded is Map) {
          for (final k in _cache.keys) {
            final v = decoded[k];
            if (v is List) {
              _cache[k] = v.cast<num>().map((e) => e.toInt()).toSet();
            }
          }
        }
      } catch (_) {
        // Corrupt payload — start fresh.
      }
    }
    _loaded = true;
  }

  Future<Set<int>> loadAll(String kind) async {
    await _hydrate();
    return _cache[kind] ?? <int>{};
  }

  Future<bool> isFavorite(String kind, int id) async {
    final all = await loadAll(kind);
    return all.contains(id);
  }

  /// Toggle an id in the given [kind] bucket. Returns the new state.
  Future<bool> toggle(String kind, int id) async {
    final all = await loadAll(kind);
    final wasIn = all.contains(id);
    if (wasIn) {
      all.remove(id);
    } else {
      all.add(id);
    }
    await _persist();
    return !wasIn;
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    final map = _cache.map((k, v) => MapEntry(k, v.toList()));
    await prefs.setString(_key, jsonEncode(map));
  }
}

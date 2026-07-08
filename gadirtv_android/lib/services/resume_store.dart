import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Remembers per-item playback position so we can offer "Continuar viendo".
///
/// Stored as a JSON map `{ "movie:1234": {"pos": 421, "dur": 5400, "ts": ...}, ... }`
/// capped at [maxEntries] most recent items to avoid unbounded growth.
class ResumeStore {
  static const _key = 'gr'; // "gadir resume"
  static const maxEntries = 50;

  /// Consider anything below this % complete as "still watching" — above,
  /// treat as finished and clear the entry.
  static const _completeThreshold = 0.94;

  Future<Map<String, ResumeEntry>> loadAll() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null || raw.isEmpty) return {};
    try {
      final map = (jsonDecode(raw) as Map<String, dynamic>);
      return map.map((k, v) => MapEntry(k, ResumeEntry.fromJson(v as Map<String, dynamic>)));
    } catch (_) {
      return {};
    }
  }

  Future<ResumeEntry?> get(String kind, String id) async {
    final all = await loadAll();
    return all['$kind:$id'];
  }

  Future<void> save(String kind, String id, int positionMs, int durationMs) async {
    if (durationMs <= 0) return; // live streams — nothing to resume
    final all = await loadAll();
    final k = '$kind:$id';

    if (positionMs / durationMs > _completeThreshold) {
      all.remove(k);
    } else if (positionMs < 15000) {
      // Less than 15 s watched — not worth remembering.
      all.remove(k);
    } else {
      all[k] = ResumeEntry(
        positionMs: positionMs,
        durationMs: durationMs,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
      );
    }

    // Cap the number of remembered items — drop the oldest.
    if (all.length > maxEntries) {
      final sorted = all.entries.toList()
        ..sort((a, b) => a.value.updatedAt.compareTo(b.value.updatedAt));
      for (var i = 0; i < all.length - maxEntries; i++) {
        all.remove(sorted[i].key);
      }
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, jsonEncode(all.map((k, v) => MapEntry(k, v.toJson()))));
  }
}

class ResumeEntry {
  final int positionMs;
  final int durationMs;
  final int updatedAt;

  const ResumeEntry({
    required this.positionMs,
    required this.durationMs,
    required this.updatedAt,
  });

  double get progress => durationMs > 0 ? positionMs / durationMs : 0;

  Map<String, dynamic> toJson() => {
        'pos': positionMs,
        'dur': durationMs,
        'ts': updatedAt,
      };

  factory ResumeEntry.fromJson(Map<String, dynamic> j) => ResumeEntry(
        positionMs: (j['pos'] as num?)?.toInt() ?? 0,
        durationMs: (j['dur'] as num?)?.toInt() ?? 0,
        updatedAt: (j['ts'] as num?)?.toInt() ?? 0,
      );
}

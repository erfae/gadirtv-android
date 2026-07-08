import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// One-shot backup / restore of the entire user state — profiles, active
/// profile, favorites and resume positions. Everything the app persists
/// lives under a handful of shared_preferences keys, so a JSON dump/load
/// is enough for a full migration to another device.
///
/// The user copies the exported JSON to the clipboard, pastes it into any
/// note-taking app / cloud / WhatsApp, then pastes it back on the new
/// device via the same dialog.
class BackupService {
  static const _keys = <String>[
    'gp', // profiles
    'ga', // active profile
    'gf', // favorites
    'gr', // resume
  ];

  /// Serialize every known preference key into a compact JSON blob.
  Future<String> exportAll() async {
    final prefs = await SharedPreferences.getInstance();
    final blob = <String, dynamic>{
      'v': 1,
      'app': 'gadirtv-android',
    };
    for (final k in _keys) {
      final v = prefs.getString(k);
      if (v != null && v.isNotEmpty) blob[k] = v;
    }
    return jsonEncode(blob);
  }

  /// Best-effort restore. Returns `true` if at least one known key was
  /// restored (i.e. the JSON was recognisably a GadirTV backup).
  Future<bool> importAll(String raw) async {
    try {
      final blob = jsonDecode(raw);
      if (blob is! Map || blob['app'] != 'gadirtv-android') return false;
      final prefs = await SharedPreferences.getInstance();
      var restored = 0;
      for (final k in _keys) {
        final v = blob[k];
        if (v is String && v.isNotEmpty) {
          await prefs.setString(k, v);
          restored++;
        }
      }
      return restored > 0;
    } catch (_) {
      return false;
    }
  }

  Future<void> copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }

  Future<String?> readFromClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    return data?.text;
  }
}

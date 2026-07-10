import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// One-shot backup / restore of the entire user state — profiles, active
/// profile, favorites and resume positions. Everything the app persists
/// lives under a handful of shared_preferences keys, so a JSON dump/load
/// is enough for a full migration to another device.
///
/// The primary export path writes a `gadirtv-backup-<timestamp>.json` file
/// and hands it to the Android share sheet so the user can drop it into
/// Drive / Files / WhatsApp / email. Import uses the native file picker
/// so the user just taps the previously saved file.
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

  /// Writes the backup as a JSON file to the app's documents dir and
  /// returns the file path. The path is safe to hand to `share_plus` or
  /// the native share sheet.
  Future<File> exportToFile() async {
    final json = await exportAll();
    final dir = await getApplicationDocumentsDirectory();
    final ts = DateTime.now().toIso8601String().replaceAll(RegExp(r'[:.]'), '-');
    final file = File('${dir.path}/gadirtv-backup-$ts.json');
    await file.writeAsString(json);
    return file;
  }

  /// Opens the native share sheet so the user can save the backup to
  /// Drive / Files / WhatsApp / email. Returns `true` if the sheet
  /// completed a successful share, `false` otherwise.
  Future<bool> shareBackupFile() async {
    final file = await exportToFile();
    final result = await Share.shareXFiles(
      [XFile(file.path, mimeType: 'application/json')],
      subject: 'GadirTV backup',
    );
    return result.status == ShareResultStatus.success;
  }

  /// Opens the native file picker so the user can select a previously
  /// saved backup JSON. Returns `true` if restore succeeded.
  Future<bool> restoreFromFile() async {
    final res = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
      withData: true,
    );
    if (res == null || res.files.isEmpty) return false;
    final f = res.files.single;
    String raw;
    if (f.bytes != null) {
      raw = utf8.decode(f.bytes!);
    } else if (f.path != null) {
      raw = await File(f.path!).readAsString();
    } else {
      return false;
    }
    return importAll(raw);
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

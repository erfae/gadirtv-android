import 'package:flutter/material.dart';

import '../i18n/strings.dart';
import '../services/backup_service.dart';
import '../services/prefs_settings.dart';
import '../theme.dart';

/// Ajustes globales — copia de seguridad e idioma. Se accede desde el
/// icono del engranaje del topbar.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, this.onLanguageChanged});

  /// Called after the user picks a new language so the caller can
  /// rebuild affected UI (currently only used for a toast — full
  /// translation is a follow-up task).
  final ValueChanged<String>? onLanguageChanged;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _prefs = PrefsSettings();
  final _backup = BackupService();
  String _lang = 'es';
  bool _loading = true;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final v = await _prefs.getLanguage();
    if (!mounted) return;
    setState(() {
      _lang = v;
      _loading = false;
    });
  }

  Future<void> _setLanguage(String code) async {
    await _prefs.setLanguage(code);
    if (!mounted) return;
    setState(() => _lang = code);
    AppI18n.controllerOf(context).setLocale(code);
    widget.onLanguageChanged?.call(code);
  }

  Future<void> _createBackup() async {
    final t = AppI18n.of(context);
    setState(() => _busy = true);
    try {
      await _backup.shareBackupFile();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.backupCreated)),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${t.backupCreateFailed}: $e')),
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _restoreBackup() async {
    final t = AppI18n.of(context);
    setState(() => _busy = true);
    try {
      final ok = await _backup.restoreFromFile();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ok ? t.backupRestored : t.backupInvalid)),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${t.backupRestoreFailed}: $e')),
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return Scaffold(
      backgroundColor: GtvTheme.bg,
      appBar: AppBar(
        backgroundColor: GtvTheme.bg,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(t.settings,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator(color: GtvTheme.red))
          : ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              children: [
                _sectionTitle(t.language),
                const SizedBox(height: 4),
                Container(
                  decoration: BoxDecoration(
                    color: GtvTheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: GtvTheme.border),
                  ),
                  child: Column(
                    children: PrefsSettings.supportedLocales.map((code) {
                      final name = PrefsSettings.localeNames[code]!;
                      final selected = _lang == code;
                      return InkWell(
                        onTap: () => _setLanguage(code),
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          child: Row(
                            children: [
                              Icon(
                                selected
                                    ? Icons.radio_button_checked_rounded
                                    : Icons.radio_button_unchecked_rounded,
                                color: selected ? GtvTheme.red : GtvTheme.textDim,
                                size: 22,
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Text(name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                                    )),
                              ),
                              if (code == 'es')
                                Text(t.languageDefault,
                                    style: const TextStyle(color: GtvTheme.textDim, fontSize: 11)),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 30),
                _sectionTitle(t.backup),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: GtvTheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: GtvTheme.border),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(t.backupDescription,
                          style: const TextStyle(color: GtvTheme.textDim, fontSize: 12, height: 1.5)),
                      const SizedBox(height: 14),
                      ElevatedButton.icon(
                        onPressed: _busy ? null : _createBackup,
                        icon: const Icon(Icons.save_alt_rounded, size: 18),
                        label: Text(t.backupCreate),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton.icon(
                        onPressed: _busy ? null : _restoreBackup,
                        icon: const Icon(Icons.folder_open_rounded, size: 18, color: Colors.white),
                        label: Text(t.backupRestore, style: const TextStyle(color: Colors.white)),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: GtvTheme.border),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                _sectionTitle(t.about),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: GtvTheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: GtvTheme.border),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline_rounded, color: GtvTheme.textDim, size: 20),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text('GadirTV',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                      ),
                      const Text('v0.3.19',
                          style: TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
    );
  }

  Widget _sectionTitle(String text) => Padding(
        padding: const EdgeInsets.only(left: 4, bottom: 8),
        child: Text(text,
            style: const TextStyle(
              color: GtvTheme.red,
              fontSize: 12,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.4,
            )),
      );
}

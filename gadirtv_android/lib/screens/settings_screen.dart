import 'package:flutter/material.dart';

import '../i18n/strings.dart';
import '../screens/login_screen.dart';
import '../services/backup_service.dart';
import '../services/player_constants.dart';
import '../services/prefs_settings.dart';
import '../theme.dart';
import '../widgets/gtv_focusable.dart';

/// Ajustes globales — copia de seguridad, reproductor e idioma.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, this.onLanguageChanged});

  final ValueChanged<String>? onLanguageChanged;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _prefs = PrefsSettings();
  final _backup = BackupService();

  late final FocusNode _backNode = FocusNode(debugLabel: 'settings-back');
  late final List<FocusNode> _playerNodes = List.generate(
    3,
    (i) => FocusNode(debugLabel: 'player-$i'),
  );
  late final List<FocusNode> _langNodes = List.generate(
    PrefsSettings.supportedLocales.length,
    (i) => FocusNode(debugLabel: 'lang-$i'),
  );
  late final FocusNode _backupCreateNode = FocusNode(debugLabel: 'backup-create');
  late final FocusNode _backupRestoreNode = FocusNode(debugLabel: 'backup-restore');

  static const _engines = [PlayerEngine.exo, PlayerEngine.vlc, PlayerEngine.external];

  String _lang = 'es';
  String _player = PlayerEngine.defaultEngine;
  bool _loading = true;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _backNode.dispose();
    for (final n in _playerNodes) {
      n.dispose();
    }
    for (final n in _langNodes) {
      n.dispose();
    }
    _backupCreateNode.dispose();
    _backupRestoreNode.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final results = await Future.wait([
      _prefs.getLanguage(),
      _prefs.getPlayerEngine(),
    ]);
    if (!mounted) return;
    setState(() {
      _lang = results[0] as String;
      _player = results[1] as String;
      _loading = false;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _playerNodes.first.requestFocus();
    });
  }

  Future<void> _setPlayer(String engine) async {
    await _prefs.setPlayerEngine(engine);
    if (!mounted) return;
    setState(() => _player = engine);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Reproductor: ${PlayerEngine.labels[engine]}'),
        duration: const Duration(seconds: 2),
      ),
    );
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
        leading: GtvFocusable(
          focusNode: _backNode,
          borderRadius: BorderRadius.circular(999),
          onTap: () => Navigator.of(context).pop(),
          onMoveDown: () => _playerNodes.first.requestFocus(),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.arrow_back_rounded, color: Colors.white),
          ),
        ),
        title: Text(t.settings,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator(color: GtvTheme.red))
          : FocusTraversalGroup(
              policy: OrderedTraversalPolicy(),
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                children: [
                  const SizedBox(height: 16),
                  _sectionTitle('Reproductor'),
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      color: GtvTheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: GtvTheme.border),
                    ),
                    child: Column(
                      children: [
                        for (var i = 0; i < _engines.length; i++)
                          FocusTraversalOrder(
                            order: NumericFocusOrder(i.toDouble()),
                            child: GtvFocusable(
                              focusNode: _playerNodes[i],
                              autofocus: i == 0,
                              onTap: () => _setPlayer(_engines[i]),
                              onMoveUp: i > 0
                                  ? () => _playerNodes[i - 1].requestFocus()
                                  : () => _backNode.requestFocus(),
                              onMoveDown: i < _engines.length - 1
                                  ? () => _playerNodes[i + 1].requestFocus()
                                  : () => _langNodes.first.requestFocus(),
                              borderRadius: BorderRadius.circular(12),
                              child: _radioRow(
                                label: PlayerEngine.labels[_engines[i]]!,
                                selected: _player == _engines[i],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  _sectionTitle(t.language),
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      color: GtvTheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: GtvTheme.border),
                    ),
                    child: Column(
                      children: [
                        for (var i = 0; i < PrefsSettings.supportedLocales.length; i++)
                          FocusTraversalOrder(
                            order: NumericFocusOrder((10 + i).toDouble()),
                            child: GtvFocusable(
                              focusNode: _langNodes[i],
                              onTap: () => _setLanguage(PrefsSettings.supportedLocales[i]),
                              onMoveUp: i > 0
                                  ? () => _langNodes[i - 1].requestFocus()
                                  : () => _playerNodes.last.requestFocus(),
                              onMoveDown: i < PrefsSettings.supportedLocales.length - 1
                                  ? () => _langNodes[i + 1].requestFocus()
                                  : () => _backupCreateNode.requestFocus(),
                              borderRadius: BorderRadius.circular(12),
                              child: _radioRow(
                                label: PrefsSettings.localeNames[PrefsSettings.supportedLocales[i]]!,
                                selected: _lang == PrefsSettings.supportedLocales[i],
                                trailing: PrefsSettings.supportedLocales[i] == 'es'
                                    ? Text(t.languageDefault,
                                        style: const TextStyle(color: GtvTheme.textDim, fontSize: 11))
                                    : null,
                              ),
                            ),
                          ),
                      ],
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
                        FocusTraversalOrder(
                          order: const NumericFocusOrder(30),
                          child: GtvFocusable(
                            focusNode: _backupCreateNode,
                            onTap: _busy ? null : _createBackup,
                            onMoveUp: () => _langNodes.last.requestFocus(),
                            onMoveDown: () => _backupRestoreNode.requestFocus(),
                            borderRadius: BorderRadius.circular(999),
                            child: ElevatedButton.icon(
                              onPressed: _busy ? null : _createBackup,
                              icon: const Icon(Icons.save_alt_rounded, size: 18),
                              label: Text(t.backupCreate),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        FocusTraversalOrder(
                          order: const NumericFocusOrder(31),
                          child: GtvFocusable(
                            focusNode: _backupRestoreNode,
                            onTap: _busy ? null : _restoreBackup,
                            onMoveUp: () => _backupCreateNode.requestFocus(),
                            borderRadius: BorderRadius.circular(999),
                            child: OutlinedButton.icon(
                              onPressed: _busy ? null : _restoreBackup,
                              icon: const Icon(Icons.folder_open_rounded, size: 18, color: Colors.white),
                              label: Text(t.backupRestore, style: const TextStyle(color: Colors.white)),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: GtvTheme.border),
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: const StadiumBorder(),
                              ),
                            ),
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
                        Text(kAppVersionLabel,
                            style: const TextStyle(color: GtvTheme.textDim, fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }

  Widget _radioRow({
    required String label,
    required bool selected,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(
            selected ? Icons.radio_button_checked_rounded : Icons.radio_button_unchecked_rounded,
            color: selected ? GtvTheme.red : GtvTheme.textDim,
            size: 22,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: selected ? GtvTheme.redHi : Colors.white,
                fontSize: 14,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ),
          if (trailing != null) trailing,
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

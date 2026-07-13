import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/login_draft_store.dart';
import '../services/m3u_cache.dart';
import '../services/profile_store.dart';
import '../theme.dart';
import '../utils/url_utils.dart';
import '../widgets/gtv_focusable.dart';
import '../widgets/gtv_tv_text_field.dart';

/// Bump this string every release so users can visually confirm they have
/// the latest APK installed (avoids the "am I testing the right build?" loop).
const String kAppVersionLabel = 'v2.5.3';

/// Add-profile / connect-to-Xtream screen.
///
/// Fields (host / username / password / display name) mirror the Windows
/// login form 1:1 so the mental model is identical for the end user.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _host = TextEditingController();
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final _name = TextEditingController();
  final _m3uUrl = TextEditingController();

  final _api = ApiService();
  final _store = ProfileStore();
  final _draftStore = LoginDraftStore();
  final _scrollController = ScrollController();

  final _hostBrowse = FocusNode();
  final _userBrowse = FocusNode();
  final _passBrowse = FocusNode();
  final _passToggleBrowse = FocusNode();
  final _nameBrowse = FocusNode();
  final _m3uBrowse = FocusNode();
  final _m3uNameBrowse = FocusNode();
  final _backFocus = FocusNode(debugLabel: 'login-back');
  final _xtreamModeFocus = FocusNode(debugLabel: 'login-xtream');
  final _m3uModeFocus = FocusNode(debugLabel: 'login-m3u');
  final _connectFocus = FocusNode(debugLabel: 'login-connect');
  final _clearFocus = FocusNode(debugLabel: 'login-clear');

  /// 'xtream' or 'm3u'
  String _mode = 'xtream';

  bool _busy = false;
  bool _passVisible = false;
  bool _fieldEditing = false;
  String? _error;
  String? _progress;
  String? _diagnostic;
  Timer? _draftTimer;

  bool get _compact => MediaQuery.sizeOf(context).height < 620;

  @override
  void initState() {
    super.initState();
    _loadDraft();
    for (final c in [_host, _user, _pass, _name, _m3uUrl]) {
      c.addListener(_scheduleDraftSave);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _xtreamModeFocus.requestFocus();
    });
  }

  Future<void> _loadDraft() async {
    final draft = await _draftStore.load();
    if (!mounted) return;
    setState(() {
      _mode = draft.mode == 'm3u' ? 'm3u' : 'xtream';
      _host.text = draft.host;
      _user.text = draft.username;
      _pass.text = draft.password;
      _name.text = draft.name;
      _m3uUrl.text = draft.m3uUrl;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        if (_mode == 'm3u') {
          _m3uModeFocus.requestFocus();
        } else {
          _xtreamModeFocus.requestFocus();
        }
      }
    });
  }

  void _scheduleDraftSave() {
    _draftTimer?.cancel();
    _draftTimer = Timer(const Duration(milliseconds: 350), _saveDraft);
  }

  Future<void> _saveDraft() async {
    await _draftStore.save(LoginDraft(
      mode: _mode,
      host: _host.text,
      username: _user.text,
      password: _pass.text,
      name: _name.text,
      m3uUrl: _m3uUrl.text,
    ));
  }

  Future<void> _clearDraft() async {
    _draftTimer?.cancel();
    await _draftStore.clear();
    if (!mounted) return;
    setState(() {
      _host.clear();
      _user.clear();
      _pass.clear();
      _name.clear();
      _m3uUrl.clear();
      _error = null;
      _diagnostic = null;
      _progress = null;
    });
    _hostBrowse.requestFocus();
  }

  @override
  void dispose() {
    _draftTimer?.cancel();
    _saveDraft();
    _scrollController.dispose();
    _hostBrowse.dispose();
    _userBrowse.dispose();
    _passBrowse.dispose();
    _passToggleBrowse.dispose();
    _nameBrowse.dispose();
    _m3uBrowse.dispose();
    _m3uNameBrowse.dispose();
    _backFocus.dispose();
    _xtreamModeFocus.dispose();
    _m3uModeFocus.dispose();
    _connectFocus.dispose();
    _clearFocus.dispose();
    _host.dispose();
    _user.dispose();
    _pass.dispose();
    _name.dispose();
    _m3uUrl.dispose();
    super.dispose();
  }

  Future<void> _connect() async {
    if (_busy) return;

    setState(() {
      _busy = true;
      _error = null;
      _diagnostic = null;
      _progress = 'Conectando…';
    });

    _api.onProgress = (attempt, total, msg) {
      if (!mounted) return;
      final phase = msg ?? 'Conectando';
      setState(() => _progress = attempt == 1
          ? '$phase…'
          : '$phase (intento $attempt/$total)…');
    };

    final all = await _store.loadAll();
    LoginResult res;
    Profile profile;

    if (_mode == 'm3u') {
      // ── M3U mode ────────────────────────────────────────────
      final rawUrl = _m3uUrl.text.trim();
      if (rawUrl.isEmpty) {
        setState(() {
          _busy = false;
          _progress = null;
          _error = 'Introduce la URL del M3U';
        });
        _api.onProgress = null;
        return;
      }
      profile = Profile(
        mode: 'm3u',
        name: _name.text.trim().isEmpty ? 'Playlist M3U' : _name.text.trim(),
        m3uUrl: rawUrl,
        avatarSeed: all.length,
      );
      res = await _api.loginM3U(profile).timeout(
        const Duration(seconds: 50),
        onTimeout: () => const LoginResult(
          ok: false,
          error: 'Tiempo agotado (>50s). El servidor no responde o la app '
              'no puede llegar. Prueba con otra red o proveedor.',
          diagnostic: 'Global timeout de 50 s alcanzado en login M3U',
        ),
      );
    } else {
      // ── Xtream mode ─────────────────────────────────────────
      final host = normalizeXtreamHost(_host.text);
      final user = _user.text.trim();
      final pass = _pass.text.trim();

      if (host.isEmpty || user.isEmpty || pass.isEmpty) {
        setState(() {
          _busy = false;
          _progress = null;
          _error = 'Servidor, usuario y contraseña son obligatorios';
        });
        _api.onProgress = null;
        return;
      }

      // Show corrected URL in the field (e.g. http// → http://).
      if (_host.text != host) {
        _host.text = host;
      }
      await _saveDraft();

      profile = Profile(
        mode: 'xtream',
        name: _name.text.trim().isEmpty ? user : _name.text.trim(),
        host: host,
        username: user,
        password: pass,
        avatarSeed: all.length,
      );
      res = await _api.login(profile).timeout(
        const Duration(seconds: 60),
        onTimeout: () => const LoginResult(
          ok: false,
          error: 'Tiempo agotado (>60s). El servidor no responde o la app '
              'no puede llegar. Prueba con otra red o proveedor.',
          diagnostic: 'Global timeout de 60 s alcanzado en login Xtream',
        ),
      );
    }

    _api.onProgress = null;
    if (!mounted) return;

    if (!res.ok) {
      setState(() {
        _busy = false;
        _progress = null;
        _error = res.error ?? 'No se pudo iniciar sesión';
        _diagnostic = res.diagnostic;
      });
      return;
    }

    // Login OK — reset UI right away so we don't stay stuck on "Procesando".
    setState(() {
      _progress = 'Guardando perfil…';
    });
    try {
      await _store.upsert(profile).timeout(const Duration(seconds: 5));
      await _store.setActive(profile).timeout(const Duration(seconds: 5));

      // Cache M3U channels so home screen can render them without re-downloading.
      if (profile.isM3U && res.m3uChannels != null) {
        setState(() => _progress = 'Guardando ${res.m3uChannels!.length} canales…');
        await M3UCache.save(profile, res.m3uChannels!)
            .timeout(const Duration(seconds: 8));
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _progress = null;
        _error = 'Login OK pero falló guardar perfil: $e';
        _diagnostic = 'Error tras login (paso guardar): ${e.runtimeType} — $e';
      });
      return;
    }

    if (!mounted) return;
    setState(() => _progress = 'Abriendo pantalla principal…');
    try {
      context.go('/bootstrap');
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _progress = null;
        _error = 'Error navegando: $e';
        _diagnostic = 'Navigation error: ${e.runtimeType} — $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;
    final keyboardPad = _fieldEditing ? 340.0 : 0.0;
    final screenH = MediaQuery.sizeOf(context).height;
    final compact = screenH < 620;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: compact ? 44 : kToolbarHeight,
        leading: GtvFocusable(
          focusNode: _backFocus,
          borderRadius: BorderRadius.circular(999),
          onTap: () => context.canPop() ? context.pop() : context.go('/'),
          onMoveDown: () {
            if (_mode == 'm3u') {
              _m3uModeFocus.requestFocus();
            } else {
              _xtreamModeFocus.requestFocus();
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.arrow_back_rounded, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
            compact ? 28 : 48,
            compact ? 8 : 16,
            compact ? 28 : 48,
            32 + bottomInset + keyboardPad,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text(
                  'Añadir perfil',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: compact ? 28 : 34,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: compact ? 4 : 8),
                Text(
                  _mode == 'm3u'
                      ? 'Conecta con una URL M3U/M3U8'
                      : 'Conecta tu cuenta Xtream Codes',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: GtvTheme.textDim),
                ),
                const SizedBox(height: 6),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 96),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: GtvTheme.red.withOpacity(0.15),
                    border: Border.all(color: GtvTheme.red.withOpacity(0.35)),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: const Text(
                    'GadirTV $kAppVersionLabel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GtvTheme.redHi,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: compact ? 16 : 32),
                // ── Mode toggle: Xtream / M3U ────────────────────
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(color: Colors.white24),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Expanded(child: _ModeChip(
                        focusNode: _xtreamModeFocus,
                        label: 'Xtream Codes',
                        selected: _mode == 'xtream',
                        enabled: !_busy,
                        autofocus: true,
                        onTap: () => setState(() => _mode = 'xtream'),
                        onMoveUp: () => _backFocus.requestFocus(),
                        onMoveRight: () => _m3uModeFocus.requestFocus(),
                        onMoveDown: () => _hostBrowse.requestFocus(),
                      )),
                      Expanded(child: _ModeChip(
                        focusNode: _m3uModeFocus,
                        label: 'Playlist M3U',
                        selected: _mode == 'm3u',
                        enabled: !_busy,
                        onTap: () => setState(() => _mode = 'm3u'),
                        onMoveUp: () => _backFocus.requestFocus(),
                        onMoveLeft: () => _xtreamModeFocus.requestFocus(),
                        onMoveDown: () => _m3uBrowse.requestFocus(),
                      )),
                    ],
                  ),
                ),
                SizedBox(height: compact ? 12 : 20),
                AbsorbPointer(
                  absorbing: _busy,
                  child: AnimatedOpacity(
                    opacity: _busy ? 0.45 : 1.0,
                    duration: const Duration(milliseconds: 180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _mode == 'xtream'
                          ? _xtreamFields()
                          : _m3uFields(),
                    ),
                  ),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: GtvTheme.red.withOpacity(0.12),
                      border: Border.all(color: GtvTheme.red.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      _error!,
                      style: const TextStyle(color: GtvTheme.redHi, fontSize: 13),
                    ),
                  ),
                  if (_diagnostic != null) ...[
                    const SizedBox(height: 10),
                    ExpansionTile(
                      title: const Text(
                        'Detalles técnicos (comparte esto para diagnosticar)',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                      tilePadding: EdgeInsets.zero,
                      collapsedIconColor: Colors.white54,
                      iconColor: Colors.white70,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            border: Border.all(color: Colors.white24),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SelectableText(
                            _diagnostic!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontFamily: 'monospace',
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
                SizedBox(height: compact ? 16 : 24),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GtvFocusable(
                        focusNode: _connectFocus,
                        enabled: !_busy,
                        onTap: _busy ? null : _connect,
                        onMoveUp: () {
                          if (_mode == 'm3u') {
                            _m3uNameBrowse.requestFocus();
                          } else {
                            _nameBrowse.requestFocus();
                          }
                        },
                        onMoveRight: () => _clearFocus.requestFocus(),
                        borderRadius: BorderRadius.circular(999),
                        child: ElevatedButton(
                          onPressed: _busy ? null : _connect,
                          child: _busy
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      _progress ?? 'Conectando…',
                                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              : const Text('CONECTAR'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: GtvFocusable(
                        focusNode: _clearFocus,
                        enabled: !_busy,
                        onTap: _busy ? null : _clearDraft,
                        onMoveUp: () {
                          if (_mode == 'm3u') {
                            _m3uNameBrowse.requestFocus();
                          } else {
                            _nameBrowse.requestFocus();
                          }
                        },
                        onMoveLeft: () => _connectFocus.requestFocus(),
                        borderRadius: BorderRadius.circular(999),
                        child: OutlinedButton.icon(
                          onPressed: _busy ? null : _clearDraft,
                          icon: const Icon(Icons.clear_all_rounded, size: 18, color: Colors.white70),
                          label: const Text('BORRAR', style: TextStyle(color: Colors.white70)),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: GtvTheme.border),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
              ),
            ),
          ),
        ),
        ),
      ),
    );
  }

  List<Widget> _xtreamFields() => [
        GtvTvTextField(
          controller: _host,
          browseFocusNode: _hostBrowse,
          scrollController: _scrollController,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onAdvance: () => _userBrowse.requestFocus(),
          onMoveUp: () => _xtreamModeFocus.requestFocus(),
          onMoveDown: () => _userBrowse.requestFocus(),
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.url,
          enabled: !_busy,
          decoration: const InputDecoration(
            hintText: 'Servidor (http://tu-servidor.com:8080)',
            helperText: 'Compatible con cualquier servidor Xtream Codes. '
                'Introduce la URL de tu proveedor.',
            helperMaxLines: 2,
            helperStyle: TextStyle(color: GtvTheme.textDim, fontSize: 11),
          ),
        ),
        SizedBox(height: _compact ? 10 : 14),
        GtvTvTextField(
          controller: _user,
          browseFocusNode: _userBrowse,
          scrollController: _scrollController,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onAdvance: () => _passBrowse.requestFocus(),
          onMoveUp: () => _hostBrowse.requestFocus(),
          onMoveDown: () => _passBrowse.requestFocus(),
          textInputAction: TextInputAction.next,
          autocorrect: false,
          enableSuggestions: false,
          enabled: !_busy,
          decoration: const InputDecoration(hintText: 'Usuario'),
        ),
        SizedBox(height: _compact ? 10 : 14),
        GtvTvTextField(
          controller: _pass,
          browseFocusNode: _passBrowse,
          toggleFocusNode: _passToggleBrowse,
          scrollController: _scrollController,
          keyboardLift: 380,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onAdvance: () => _nameBrowse.requestFocus(),
          onToggleObscure: _busy ? null : () => setState(() => _passVisible = !_passVisible),
          onMoveUp: () => _userBrowse.requestFocus(),
          onMoveDown: () => _nameBrowse.requestFocus(),
          onMoveRight: () => _passToggleBrowse.requestFocus(),
          onToggleMoveLeft: () => _passBrowse.requestFocus(),
          onToggleMoveUp: () => _passBrowse.requestFocus(),
          onToggleMoveDown: () => _nameBrowse.requestFocus(),
          textInputAction: TextInputAction.next,
          obscureText: !_passVisible,
          autocorrect: false,
          enableSuggestions: false,
          enabled: !_busy,
          decoration: const InputDecoration(
            hintText: 'Contraseña',
          ),
        ),
        SizedBox(height: _compact ? 10 : 14),
        GtvTvTextField(
          controller: _name,
          browseFocusNode: _nameBrowse,
          scrollController: _scrollController,
          keyboardLift: 400,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onMoveUp: () => _passToggleBrowse.requestFocus(),
          onMoveDown: () => _connectFocus.requestFocus(),
          textInputAction: TextInputAction.done,
          enabled: !_busy,
          decoration: const InputDecoration(hintText: 'Nombre del perfil (opcional)'),
        ),
      ];

  List<Widget> _m3uFields() => [
        GtvTvTextField(
          controller: _m3uUrl,
          browseFocusNode: _m3uBrowse,
          scrollController: _scrollController,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onAdvance: () => _m3uNameBrowse.requestFocus(),
          onMoveUp: () => _m3uModeFocus.requestFocus(),
          onMoveDown: () => _m3uNameBrowse.requestFocus(),
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.url,
          enabled: !_busy,
          decoration: const InputDecoration(
            hintText: 'URL M3U (http://…/get.php?…&type=m3u_plus)',
            helperText: 'Pega la URL completa de tu playlist M3U/M3U8. '
                'Compatible con cualquier proveedor que ofrezca link M3U.',
            helperMaxLines: 2,
            helperStyle: TextStyle(color: GtvTheme.textDim, fontSize: 11),
          ),
        ),
        SizedBox(height: _compact ? 10 : 14),
        GtvTvTextField(
          controller: _name,
          browseFocusNode: _m3uNameBrowse,
          scrollController: _scrollController,
          keyboardLift: 380,
          onEditingChanged: (v) => setState(() => _fieldEditing = v),
          onMoveUp: () => _m3uBrowse.requestFocus(),
          onMoveDown: () => _connectFocus.requestFocus(),
          textInputAction: TextInputAction.done,
          enabled: !_busy,
          decoration: const InputDecoration(hintText: 'Nombre del perfil (opcional)'),
        ),
      ];
}

/// Segmented control chip for Xtream / M3U mode toggle.
class _ModeChip extends StatelessWidget {
  final String label;
  final bool selected;
  final bool enabled;
  final bool autofocus;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;

  const _ModeChip({
    required this.label,
    required this.selected,
    required this.enabled,
    required this.onTap,
    this.autofocus = false,
    this.focusNode,
    this.onMoveUp,
    this.onMoveDown,
    this.onMoveLeft,
    this.onMoveRight,
  });

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      focusNode: focusNode,
      autofocus: autofocus,
      enabled: enabled,
      onTap: enabled ? onTap : null,
      onMoveUp: onMoveUp,
      onMoveDown: onMoveDown,
      onMoveLeft: onMoveLeft,
      onMoveRight: onMoveRight,
      borderRadius: BorderRadius.circular(999),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: selected ? GtvTheme.red : Colors.transparent,
          borderRadius: BorderRadius.circular(999),
          boxShadow: selected
              ? [BoxShadow(color: GtvTheme.red.withOpacity(0.45), blurRadius: 12, spreadRadius: 1)]
              : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.white70,
            fontWeight: FontWeight.w700,
            fontSize: 13,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}

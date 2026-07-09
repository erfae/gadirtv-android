import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/m3u_cache.dart';
import '../services/profile_store.dart';
import '../theme.dart';

/// Bump this string every release so users can visually confirm they have
/// the latest APK installed (avoids the "am I testing the right build?" loop).
const String kAppVersionLabel = 'v0.3.7';

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
  final _host = TextEditingController(text: 'http://gadir.co:80');
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final _name = TextEditingController();
  final _m3uUrl = TextEditingController();

  final _api = ApiService();
  final _store = ProfileStore();

  /// 'xtream' or 'm3u'
  String _mode = 'xtream';

  bool _busy = false;
  bool _passVisible = false;
  String? _error;
  String? _progress;
  String? _diagnostic;

  @override
  void dispose() {
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
      var host = _host.text.trim();
      while (host.endsWith('/')) {
        host = host.substring(0, host.length - 1);
      }
      if (host.isNotEmpty && !host.startsWith('http://') && !host.startsWith('https://')) {
        host = 'http://$host';
      }
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

      profile = Profile(
        mode: 'xtream',
        name: _name.text.trim().isEmpty ? user : _name.text.trim(),
        host: host,
        username: user,
        password: pass,
        avatarSeed: all.length,
      );
      res = await _api.login(profile).timeout(
        const Duration(seconds: 50),
        onTimeout: () => const LoginResult(
          ok: false,
          error: 'Tiempo agotado (>50s). El servidor no responde o la app '
              'no puede llegar. Prueba con otra red o proveedor.',
          diagnostic: 'Global timeout de 50 s alcanzado en login Xtream',
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
      context.go('/home');
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => context.canPop() ? context.pop() : context.go('/'),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Añadir perfil',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800, color: Colors.white),
                ),
                const SizedBox(height: 8),
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
                const SizedBox(height: 32),
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
                        label: 'Xtream Codes',
                        selected: _mode == 'xtream',
                        enabled: !_busy,
                        onTap: () => setState(() => _mode = 'xtream'),
                      )),
                      Expanded(child: _ModeChip(
                        label: 'Playlist M3U',
                        selected: _mode == 'm3u',
                        enabled: !_busy,
                        onTap: () => setState(() => _mode = 'm3u'),
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 24),
                ElevatedButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ── Field groups (rendered conditionally by mode) ────────────
  List<Widget> _xtreamFields() => [
        TextField(
          controller: _host,
          keyboardType: TextInputType.url,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Servidor (http://gadir.co:80)',
            helperText: 'Compatible con cualquier servidor Xtream Codes. '
                'Cambia esta URL si usas otro proveedor.',
            helperMaxLines: 2,
            helperStyle: TextStyle(color: GtvTheme.textDim, fontSize: 11),
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _user,
          autocorrect: false,
          enableSuggestions: false,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'Usuario'),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _pass,
          obscureText: !_passVisible,
          autocorrect: false,
          enableSuggestions: false,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Contraseña',
            suffixIcon: IconButton(
              icon: Icon(
                _passVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                color: GtvTheme.textDim,
              ),
              tooltip: _passVisible ? 'Ocultar contraseña' : 'Mostrar contraseña',
              onPressed: _busy ? null : () => setState(() => _passVisible = !_passVisible),
            ),
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _name,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'Nombre del perfil (opcional)'),
        ),
      ];

  List<Widget> _m3uFields() => [
        TextField(
          controller: _m3uUrl,
          keyboardType: TextInputType.url,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'URL M3U (http://…/get.php?…&type=m3u_plus)',
            helperText: 'Pega la URL completa de tu playlist M3U/M3U8. '
                'Compatible con cualquier proveedor que ofrezca link M3U.',
            helperMaxLines: 2,
            helperStyle: TextStyle(color: GtvTheme.textDim, fontSize: 11),
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _name,
          enabled: !_busy,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'Nombre del perfil (opcional)'),
        ),
      ];
}

/// Segmented control chip for Xtream / M3U mode toggle.
class _ModeChip extends StatelessWidget {
  final String label;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  const _ModeChip({
    required this.label,
    required this.selected,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      behavior: HitTestBehavior.opaque,
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

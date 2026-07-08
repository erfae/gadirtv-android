import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/profile_store.dart';
import '../theme.dart';

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

  final _api = ApiService();
  final _store = ProfileStore();

  bool _busy = false;
  bool _passVisible = false;
  String? _error;

  @override
  void dispose() {
    _host.dispose();
    _user.dispose();
    _pass.dispose();
    _name.dispose();
    super.dispose();
  }

  Future<void> _connect() async {
    if (_busy) return;
    var host = _host.text.trim();
    // Strip trailing slashes and add http:// if missing
    while (host.endsWith('/')) {
      host = host.substring(0, host.length - 1);
    }
    if (host.isNotEmpty && !host.startsWith('http://') && !host.startsWith('https://')) {
      host = 'http://$host';
    }
    final user = _user.text.trim();
    final pass = _pass.text.trim();

    if (host.isEmpty || user.isEmpty || pass.isEmpty) {
      setState(() => _error = 'Host, usuario y contraseña son obligatorios');
      return;
    }

    setState(() {
      _busy = true;
      _error = null;
    });

    final all = await _store.loadAll();
    final profile = Profile(
      name: _name.text.trim().isEmpty ? user : _name.text.trim(),
      host: host,
      username: user,
      password: pass,
      avatarSeed: all.length,
    );

    final res = await _api.login(profile);

    if (!mounted) return;

    if (!res.ok) {
      setState(() {
        _busy = false;
        _error = res.error ?? 'No se pudo iniciar sesión';
      });
      return;
    }

    await _store.upsert(profile);
    await _store.setActive(profile);

    if (!mounted) return;
    context.go('/home');
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
                const Text(
                  'Conecta tu cuenta Xtream Codes',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: GtvTheme.textDim),
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _host,
                  keyboardType: TextInputType.url,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(hintText: 'Servidor (http://gadir.co:80)'),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _user,
                  autocorrect: false,
                  enableSuggestions: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(hintText: 'Usuario'),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _pass,
                  obscureText: !_passVisible,
                  autocorrect: false,
                  enableSuggestions: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                        color: GtvTheme.textDim,
                      ),
                      tooltip: _passVisible ? 'Ocultar contraseña' : 'Mostrar contraseña',
                      onPressed: () => setState(() => _passVisible = !_passVisible),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _name,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(hintText: 'Nombre del perfil (opcional)'),
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
                ],
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _busy ? null : _connect,
                  child: _busy
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
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
}

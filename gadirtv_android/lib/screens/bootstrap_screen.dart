import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/playlist_store.dart';
import '../services/plugins_bootstrap.dart';
import '../services/profile_store.dart';
import '../theme.dart';
import '../widgets/gtv_focusable.dart';

/// Loads the full playlist once, then opens the home shell.
class BootstrapScreen extends StatefulWidget {
  const BootstrapScreen({super.key});

  @override
  State<BootstrapScreen> createState() => _BootstrapScreenState();
}

class _BootstrapScreenState extends State<BootstrapScreen> {
  final _retryFocus = FocusNode(debugLabel: 'bootstrap-retry');
  String _message = 'Preparando contenido…';
  String? _error;

  @override
  void initState() {
    super.initState();
    _start();
  }

  @override
  void dispose() {
    _retryFocus.dispose();
    super.dispose();
  }

  Future<void> _start() async {
    setState(() {
      _error = null;
      _message = 'Iniciando…';
    });

    try {
      await PluginsBootstrap.ensureCore();
    } catch (e) {
      debugPrint('GadirTV bootstrap: core plugins deferred ($e)');
    }

    if (!mounted) return;

    final store = ProfileStore();
    final profile = await store.getActive();
    if (!mounted) return;

    if (profile == null) {
      context.go('/login');
      return;
    }

    if (profile.isM3U) {
      setState(() => _message = 'Cargando playlist M3U…');
      await PlaylistStore.instance.preload(profile, onProgress: _onProgress);
      if (!mounted) return;
      context.go('/home');
      return;
    }

    try {
      await PlaylistStore.instance.preload(profile, onProgress: _onProgress);
      if (!mounted) return;
      context.go('/home');
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'No se pudo cargar el contenido: $e';
        _message = 'Error de carga';
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _retryFocus.requestFocus();
      });
    }
  }

  void _onProgress(String message, double progress) {
    if (!mounted) return;
    setState(() => _message = message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/gadirtv_logo.png',
                    height: 110,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => const Icon(
                      Icons.live_tv_rounded,
                      color: GtvTheme.red,
                      size: 72,
                    ),
                  ),
                  const SizedBox(height: 28),
                  if (_error == null)
                    const SizedBox(
                      width: 44,
                      height: 44,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: GtvTheme.red,
                      ),
                    ),
                  const SizedBox(height: 20),
                  Text(
                    _error ?? _message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _error != null ? GtvTheme.redHi : GtvTheme.textDim,
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  if (_error != null) ...[
                    const SizedBox(height: 28),
                    GtvFocusable(
                      focusNode: _retryFocus,
                      autofocus: true,
                      onTap: _start,
                      borderRadius: BorderRadius.circular(999),
                      child: ElevatedButton(
                        onPressed: _start,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: GtvTheme.red,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                        ),
                        child: const Text('REINTENTAR', style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
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
  String _message = 'Preparando GadirTV…';
  double _progress = 0;
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
      _progress = 0.02;
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
      setState(() {
        _message = 'Cargando playlist M3U…';
        _progress = 0.5;
      });
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
    setState(() {
      _message = message;
      _progress = progress.clamp(0, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GtvTheme.bg,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'GadirTV',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _error ?? _message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _error != null ? GtvTheme.redHi : GtvTheme.textDim,
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 28),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: LinearProgressIndicator(
                      value: _error != null ? null : (_progress > 0 ? _progress : null),
                      minHeight: 8,
                      backgroundColor: GtvTheme.surface,
                      color: GtvTheme.red,
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

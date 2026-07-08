import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
import '../services/profile_store.dart';
import '../theme.dart';

/// Placeholder home tab — Phase 2 will replace this with the real
/// categorized grids for Live TV / Movies / Series. For now we just
/// confirm we authenticated correctly.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _store = ProfileStore();
  Profile? _profile;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final p = await _store.getActive();
    if (!mounted) return;
    if (p == null) {
      context.go('/');
      return;
    }
    setState(() => _profile = p);
  }

  Future<void> _switch() async {
    await _store.setActive(null);
    if (!mounted) return;
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    final p = _profile;
    if (p == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(color: GtvTheme.red)));
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text(
                    'GadirTV',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: GtvTheme.red),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: GtvTheme.surface,
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(color: GtvTheme.border),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.person_rounded, size: 16, color: Colors.white),
                        const SizedBox(width: 8),
                        Text(
                          p.name.isEmpty ? p.username : p.name,
                          style: const TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: _switch,
                          borderRadius: BorderRadius.circular(999),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(Icons.logout_rounded, size: 16, color: GtvTheme.textDim),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.tv_rounded, size: 72, color: GtvTheme.red),
              const SizedBox(height: 16),
              const Text(
                'Conectado correctamente',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'Servidor: ${p.host}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: GtvTheme.textDim, fontSize: 13),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Fase 1 (Login + Perfiles) completada. Fase 2 (Live / Movies / Series) llegará en la próxima sesión.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: GtvTheme.textDim, fontSize: 13),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/profile.dart';
import '../services/profile_store.dart';
import '../theme.dart';

/// "Who is watching?" screen — mirrors the Netflix-style avatar picker
/// used by the Windows app. Includes a Manage toggle for deletions.
class ProfilesScreen extends StatefulWidget {
  const ProfilesScreen({super.key});

  @override
  State<ProfilesScreen> createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  final _store = ProfileStore();
  List<Profile> _profiles = const [];
  bool _manage = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final list = await _store.loadAll();
    if (!mounted) return;
    setState(() {
      _profiles = list;
      _loading = false;
    });
  }

  Future<void> _select(Profile p) async {
    await _store.setActive(p);
    if (!mounted) return;
    context.go('/home');
  }

  Future<void> _delete(Profile p) async {
    final next = await _store.remove(p);
    if (!mounted) return;
    setState(() => _profiles = next);
  }

  static const _avatarPalette = [
    Color(0xFFDC2626), // red
    Color(0xFF2563EB), // blue
    Color(0xFF16A34A), // green
    Color(0xFFCA8A04), // amber
    Color(0xFF9333EA), // purple
    Color(0xFFDB2777), // pink
    Color(0xFF0891B2), // cyan
    Color(0xFFF97316), // orange
  ];

  Color _avatarColor(int seed) => _avatarPalette[seed.abs() % _avatarPalette.length];

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator(color: GtvTheme.red)),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '¿Quién está viendo?',
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w800, color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Selecciona un perfil o añade uno nuevo',
                  style: TextStyle(fontSize: 15, color: GtvTheme.textDim),
                ),
                const SizedBox(height: 56),
                Wrap(
                  spacing: 40,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  children: [
                    for (var i = 0; i < _profiles.length; i++)
                      _AvatarTile(
                        label: _profiles[i].name.isEmpty ? _profiles[i].username : _profiles[i].name,
                        color: _avatarColor(_profiles[i].avatarSeed),
                        onTap: _manage ? null : () => _select(_profiles[i]),
                        onDelete: _manage ? () => _delete(_profiles[i]) : null,
                      ),
                    _AvatarTile(
                      label: 'Añadir perfil',
                      color: GtvTheme.surfaceHi,
                      dashed: true,
                      onTap: () => context.push('/login'),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                if (_profiles.isNotEmpty)
                  TextButton.icon(
                    onPressed: () => setState(() => _manage = !_manage),
                    icon: Icon(
                      _manage ? Icons.check_rounded : Icons.edit_rounded,
                      color: GtvTheme.textDim,
                      size: 18,
                    ),
                    label: Text(
                      _manage ? 'Listo' : 'Gestionar perfiles',
                      style: const TextStyle(color: GtvTheme.textDim, fontSize: 14),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarTile extends StatefulWidget {
  const _AvatarTile({
    required this.label,
    required this.color,
    this.onTap,
    this.onDelete,
    this.dashed = false,
  });

  final String label;
  final Color color;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;
  final bool dashed;

  @override
  State<_AvatarTile> createState() => _AvatarTileState();
}

class _AvatarTileState extends State<_AvatarTile> {
  final _focus = FocusNode();
  bool _hover = false;

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focus,
      onFocusChange: (v) => setState(() => _hover = v),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hover = true),
        onExit: (_) => setState(() => _hover = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTap,
          child: SizedBox(
            width: 132,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      width: 132,
                      height: 132,
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: _hover ? Colors.white : Colors.transparent,
                          width: 3,
                        ),
                        boxShadow: _hover
                            ? [BoxShadow(color: widget.color.withOpacity(0.4), blurRadius: 22, spreadRadius: 2)]
                            : null,
                      ),
                      child: Center(
                        child: Icon(
                          widget.dashed ? Icons.add_rounded : Icons.person_rounded,
                          size: 68,
                          color: Colors.white.withOpacity(widget.dashed ? 0.6 : 0.95),
                        ),
                      ),
                    ),
                    if (widget.onDelete != null)
                      Positioned(
                        top: -10,
                        right: -10,
                        child: GestureDetector(
                          onTap: widget.onDelete,
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                              color: GtvTheme.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.close_rounded, color: Colors.white, size: 20),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  widget.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: _hover ? Colors.white : GtvTheme.textDim,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

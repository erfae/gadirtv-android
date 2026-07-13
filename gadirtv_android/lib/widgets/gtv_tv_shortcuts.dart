import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_key_bridge.dart';
import '../utils/tv_utils.dart';

/// TV remote / D-pad shell. On Android TV, navigation is handled exclusively
/// by [GtvTvKeyBridge] — arrow [Shortcuts] are disabled to avoid double moves.
class GtvTvShell extends StatefulWidget {
  const GtvTvShell({super.key, required this.child});

  final Widget child;

  static final Map<ShortcutActivator, Intent> _tvShortcuts =
      <ShortcutActivator, Intent>{
    const SingleActivator(LogicalKeyboardKey.arrowUp): const DirectionalFocusIntent(
      TraversalDirection.up,
    ),
    const SingleActivator(LogicalKeyboardKey.arrowDown):
        const DirectionalFocusIntent(TraversalDirection.down),
    const SingleActivator(LogicalKeyboardKey.arrowLeft):
        const DirectionalFocusIntent(TraversalDirection.left),
    const SingleActivator(LogicalKeyboardKey.arrowRight):
        const DirectionalFocusIntent(TraversalDirection.right),
    const SingleActivator(LogicalKeyboardKey.select): const ActivateIntent(),
    const SingleActivator(LogicalKeyboardKey.enter): const ActivateIntent(),
    const SingleActivator(LogicalKeyboardKey.space): const ActivateIntent(),
  };

  @override
  State<GtvTvShell> createState() => _GtvTvShellState();
}

class _GtvTvShellState extends State<GtvTvShell> {
  bool _androidTv = false;

  @override
  void initState() {
    super.initState();
    TvUtils.isAndroidTv().then((v) {
      if (mounted) setState(() => _androidTv = v);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: _androidTv ? const <ShortcutActivator, Intent>{} : GtvTvShell._tvShortcuts,
      child: Actions(
        actions: WidgetsApp.defaultActions,
        child: FocusTraversalGroup(
          policy: ReadingOrderTraversalPolicy(),
          child: widget.child,
        ),
      ),
    );
  }
}

/// Requests focus on the first focusable descendant after the first frame.
class GtvTvInitialFocus extends StatefulWidget {
  const GtvTvInitialFocus({super.key, required this.child});

  final Widget child;

  @override
  State<GtvTvInitialFocus> createState() => _GtvTvInitialFocusState();
}

class _GtvTvInitialFocusState extends State<GtvTvInitialFocus> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _focusFirst());
  }

  void _focusFirst() {
    if (!mounted || GtvTvKeyBridge.suppressInitialFocus) return;
    final scope = FocusScope.of(context);
    if (scope.focusedChild != null) return;
    for (final node in scope.descendants) {
      if (node.canRequestFocus) {
        node.requestFocus();
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

/// Debug overlay: last key received (native bridge or Flutter).
class GtvTvKeyDebugBanner extends StatelessWidget {
  const GtvTvKeyDebugBanner({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();

    return ValueListenableBuilder<int?>(
      valueListenable: GtvTvKeyBridge.lastKeyNotifier,
      builder: (context, keyCode, _) {
        if (keyCode == null) return const SizedBox.shrink();
        final label = GtvTvKeyBridge.lastKeyLabel ?? 'KEY_$keyCode';
        return Positioned(
          left: 12,
          bottom: 12,
          child: Material(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                'Tecla: $label',
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ),
          ),
        );
      },
    );
  }
}

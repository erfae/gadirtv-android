import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Installs a global key handler so DPAD events move focus even when the
/// widget tree / Shortcuts scope misses them (common on Amlogic TV boxes).
class GtvTvKeyHandler {
  GtvTvKeyHandler._();

  static bool _installed = false;

  static void install() {
    if (_installed) return;
    _installed = true;
    HardwareKeyboard.instance.addHandler(_handle);
  }

  static bool _handle(KeyEvent event) {
    if (event is! KeyDownEvent) return false;

    final focus = FocusManager.instance.primaryFocus;
    final ctx = focus?.context;
    if (ctx == null) return false;

    final Intent? intent = switch (event.logicalKey) {
      LogicalKeyboardKey.arrowUp => const DirectionalFocusIntent(TraversalDirection.up),
      LogicalKeyboardKey.arrowDown => const DirectionalFocusIntent(TraversalDirection.down),
      LogicalKeyboardKey.arrowLeft => const DirectionalFocusIntent(TraversalDirection.left),
      LogicalKeyboardKey.arrowRight => const DirectionalFocusIntent(TraversalDirection.right),
      LogicalKeyboardKey.select ||
      LogicalKeyboardKey.enter ||
      LogicalKeyboardKey.numpadEnter =>
        const ActivateIntent(),
      _ => null,
    };

    if (intent == null) return false;

    final result = Actions.maybeInvoke(ctx, intent);
    return result != null;
  }
}

/// Per-route shell: directional navigation mode + D-pad shortcuts + focus trap.
class GtvTvShell extends StatefulWidget {
  const GtvTvShell({super.key, required this.child});

  final Widget child;

  @override
  State<GtvTvShell> createState() => _GtvTvShellState();
}

class _GtvTvShellState extends State<GtvTvShell> {
  final _rootFocus = FocusNode(debugLabel: 'gtv-tv-root');

  static final _shortcuts = <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
    SingleActivator(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
    SingleActivator(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
    SingleActivator(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
    SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
    SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
    SingleActivator(LogicalKeyboardKey.numpadEnter): ActivateIntent(),
    SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !_rootFocus.hasFocus) {
        _rootFocus.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _rootFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return MediaQuery(
      data: mq.copyWith(navigationMode: NavigationMode.directional),
      child: Shortcuts(
        shortcuts: _shortcuts,
        child: Actions(
          actions: {
            DirectionalFocusIntent: DirectionalFocusAction(),
          },
          child: FocusTraversalGroup(
            policy: ReadingOrderTraversalPolicy(),
            child: Focus(
              focusNode: _rootFocus,
              autofocus: true,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}

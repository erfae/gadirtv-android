import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Root-level D-pad / remote shortcuts for Android TV and TV Box remotes.
///
/// Without this wrapper, many leanback devices send arrow keys that Flutter
/// never maps to [DirectionalFocusIntent], so focus appears "stuck".
class GtvTvShortcuts extends StatelessWidget {
  const GtvTvShortcuts({super.key, required this.child});

  final Widget child;

  static const _shortcuts = <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
    SingleActivator(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
    SingleActivator(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
    SingleActivator(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
    SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
    SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
    SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
    // Some remotes / boxes report DPAD center with these key ids.
    SingleActivator(LogicalKeyboardKey.numpadEnter): ActivateIntent(),
  };

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: _shortcuts,
      child: Actions(
        actions: {
          DirectionalFocusIntent: DirectionalFocusAction(),
        },
        child: FocusTraversalGroup(
          policy: ReadingOrderTraversalPolicy(),
          child: child,
        ),
      ),
    );
  }
}

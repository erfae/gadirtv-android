import 'package:flutter/widgets.dart';

/// Custom D-pad routes registered per [FocusNode].
///
/// Android TV remotes send keys through [GtvTvKeyBridge] (native channel),
/// not Flutter [KeyEvent]s — widgets must register handlers here.
class GtvTvFocusNavigation {
  GtvTvFocusNavigation._();

  static final _routes = <FocusNode, _Route>{};

  static void register(
    FocusNode node, {
    VoidCallback? onUp,
    VoidCallback? onDown,
    VoidCallback? onLeft,
    VoidCallback? onRight,
    VoidCallback? onActivate,
  }) {
    _routes[node] = _Route(
      onUp: onUp,
      onDown: onDown,
      onLeft: onLeft,
      onRight: onRight,
      onActivate: onActivate,
    );
  }

  static void unregister(FocusNode node) {
    _routes.remove(node);
  }

  static bool move(FocusNode node, TraversalDirection direction) {
    final route = _routes[node];
    if (route == null) return false;
    switch (direction) {
      case TraversalDirection.up:
        if (route.onUp != null) {
          route.onUp!();
          return true;
        }
      case TraversalDirection.down:
        if (route.onDown != null) {
          route.onDown!();
          return true;
        }
      case TraversalDirection.left:
        if (route.onLeft != null) {
          route.onLeft!();
          return true;
        }
      case TraversalDirection.right:
        if (route.onRight != null) {
          route.onRight!();
          return true;
        }
    }
    return false;
  }

  static bool activate(FocusNode node) {
    final onActivate = _routes[node]?.onActivate;
    if (onActivate == null) return false;
    onActivate();
    return true;
  }
}

class _Route {
  const _Route({
    this.onUp,
    this.onDown,
    this.onLeft,
    this.onRight,
    this.onActivate,
  });

  final VoidCallback? onUp;
  final VoidCallback? onDown;
  final VoidCallback? onLeft;
  final VoidCallback? onRight;
  final VoidCallback? onActivate;
}

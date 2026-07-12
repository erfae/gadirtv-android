import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'gtv_tv_focus_registry.dart';

/// Receives DPAD / Enter key events from Android [MainActivity] when the
/// Flutter engine does not deliver them through [HardwareKeyboard].
class GtvTvKeyBridge {
  GtvTvKeyBridge._();

  static const MethodChannel _channel = MethodChannel('com.gadir.tv/keys');

  static bool _installed = false;
  static int? lastKeyCode;
  static String? lastKeyLabel;
  static final ValueNotifier<int?> lastKeyNotifier = ValueNotifier<int?>(null);

  /// When true, [_ensureInitialFocus] is skipped (e.g. moving between fields).
  static bool suppressInitialFocus = false;

  static void install() {
    if (_installed) return;
    _installed = true;

    _channel.setMethodCallHandler((call) async {
      if (call.method != 'onKeyDown') return;
      final args = call.arguments;
      if (args is! Map) return;

      final keyCode = args['keyCode'];
      if (keyCode is! int) return;

      lastKeyCode = keyCode;
      lastKeyLabel = _labelForKeyCode(keyCode);
      lastKeyNotifier.value = keyCode;

      if (kDebugMode) {
        debugPrint('GtvTvKeyBridge: $lastKeyLabel (keyCode=$keyCode)');
      }

      _handleNavigationKey(keyCode);
    });
  }

  static void _handleNavigationKey(int keyCode) {
    final focus = FocusManager.instance.primaryFocus;
    if (focus == null || !focus.hasFocus) {
      _ensureInitialFocus();
      return;
    }

    final context = focus.context;
    if (context == null || !context.mounted) return;

    switch (keyCode) {
      case 19:
        _moveFocus(focus, TraversalDirection.up);
        break;
      case 20:
        _moveFocus(focus, TraversalDirection.down);
        break;
      case 21:
        _moveFocus(focus, TraversalDirection.left);
        break;
      case 22:
        _moveFocus(focus, TraversalDirection.right);
        break;
      case 23:
      case 66:
        Actions.invoke(context, const ActivateIntent());
        break;
      default:
        break;
    }
  }

  static void _moveFocus(FocusNode from, TraversalDirection dir) {
    final before = FocusManager.instance.primaryFocus;

    // Leanback / Android TV: bottom nav uses an explicit ordered rail.
    if (GtvTvFocusRegistry.isBottomNavFocused(before)) {
      switch (dir) {
        case TraversalDirection.left:
          if (GtvTvFocusRegistry.moveBottomNav(-1)) return;
          break;
        case TraversalDirection.right:
          if (GtvTvFocusRegistry.moveBottomNav(1)) return;
          break;
        case TraversalDirection.up:
          GtvTvFocusRegistry.focusPrimaryContent?.call();
          if (before != FocusManager.instance.primaryFocus) return;
          break;
        case TraversalDirection.down:
          break;
      }
    }

    from.focusInDirection(dir);
    final after = FocusManager.instance.primaryFocus;
    if (after != before) return;

    if (dir == TraversalDirection.down && GtvTvFocusRegistry.focusBottomNav()) {
      return;
    }

    _focusNearestInDirection(from, dir);
  }

  /// When [focusInDirection] cannot find a target (common with horizontal
  /// [ListView]s above a bottom nav bar), pick the closest focusable below.
  static void _focusNearestInDirection(FocusNode from, TraversalDirection dir) {
    if (dir == TraversalDirection.down && GtvTvFocusRegistry.focusBottomNav()) {
      return;
    }

    final ctx = from.context;
    if (ctx == null) return;
    final fromBox = from.context?.findRenderObject() as RenderBox?;
    if (fromBox == null || !fromBox.hasSize) return;

    final origin = fromBox.localToGlobal(fromBox.size.center(Offset.zero));
    FocusNode? best;
    double bestDist = double.infinity;

    void walk(FocusNode node) {
      if (node.canRequestFocus && node != from) {
        final ro = node.context?.findRenderObject();
        if (ro is RenderBox && ro.hasSize && ro.attached) {
          final center = ro.localToGlobal(ro.size.center(Offset.zero));
          final dx = center.dx - origin.dx;
          final dy = center.dy - origin.dy;
          final ok = switch (dir) {
            TraversalDirection.down => dy > 8,
            TraversalDirection.up => dy < -8,
            TraversalDirection.right => dx > 8,
            TraversalDirection.left => dx < -8,
          };
          if (ok) {
            final dist = (center - origin).distanceSquared;
            if (dist < bestDist) {
              bestDist = dist;
              best = node;
            }
          }
        }
      }
      for (final child in node.children) {
        walk(child);
      }
    }

    walk(FocusManager.instance.rootScope);
    best?.requestFocus();
  }

  static void _ensureInitialFocus() {
    if (suppressInitialFocus) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _requestInitialFocus(FocusManager.instance.rootScope);
    });
  }

  static void _requestInitialFocus(FocusScopeNode scope) {
    if (scope.focusedChild != null) return;
    for (final node in scope.descendants) {
      if (node.canRequestFocus) {
        node.requestFocus();
        return;
      }
    }
  }

  static String _labelForKeyCode(int keyCode) {
    switch (keyCode) {
      case 19:
        return 'DPAD_UP';
      case 20:
        return 'DPAD_DOWN';
      case 21:
        return 'DPAD_LEFT';
      case 22:
        return 'DPAD_RIGHT';
      case 23:
        return 'DPAD_CENTER';
      case 66:
        return 'ENTER';
      case 4:
        return 'BACK';
      default:
        return 'KEY_$keyCode';
    }
  }
}

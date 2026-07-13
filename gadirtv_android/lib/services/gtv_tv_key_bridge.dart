import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'gtv_tv_focus_registry.dart';
import 'gtv_tv_focus_navigation.dart';

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

  /// Set while handling a native key — Flutter [KeyEvent] handlers can skip.
  static bool nativeKeyHandled = false;

  static int? _lastNativeKeyCode;
  static int _lastNativeKeyMs = 0;

  static void install() {
    if (_installed) return;
    _installed = true;

    _channel.setMethodCallHandler((call) async {
      if (call.method != 'onKeyDown') return;
      final args = call.arguments;
      if (args is! Map) return;

      final keyCode = args['keyCode'];
      if (keyCode is! int) return;

      final now = DateTime.now().millisecondsSinceEpoch;
      if (_lastNativeKeyCode == keyCode && now - _lastNativeKeyMs < 60) {
        return;
      }
      _lastNativeKeyCode = keyCode;
      _lastNativeKeyMs = now;

      lastKeyCode = keyCode;
      lastKeyLabel = _labelForKeyCode(keyCode);
      lastKeyNotifier.value = keyCode;

      if (kDebugMode) {
        debugPrint('GtvTvKeyBridge: $lastKeyLabel (keyCode=$keyCode)');
      }

      nativeKeyHandled = true;
      try {
        _handleNavigationKey(keyCode);
      } finally {
        Future<void>.delayed(const Duration(milliseconds: 50), () {
          nativeKeyHandled = false;
        });
      }
    });
  }

  static void _handleNavigationKey(int keyCode) {
    _recoverFocus();
    var focus = _effectiveFocusNode(FocusManager.instance.primaryFocus);
    if (focus == null) {
      _recoverFocus(force: true);
      focus = _effectiveFocusNode(FocusManager.instance.primaryFocus);
      if (focus == null) return;
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
        if (GtvTvFocusNavigation.activate(focus)) return;
        Actions.invoke(context, const ActivateIntent());
        break;
      case 4:
        if (Navigator.maybeOf(context)?.canPop() ?? false) {
          Navigator.maybePop(context);
        }
        break;
      default:
        break;
    }
  }

  /// Prefer a node that has explicit D-pad routes registered.
  static FocusNode? _effectiveFocusNode(FocusNode? node) {
    if (node != null && node.hasFocus && GtvTvFocusNavigation.hasRoute(node)) {
      return node;
    }
    return _firstRegisteredInTree() ?? node;
  }

  static FocusNode? _firstRegisteredInTree() {
    FocusNode? first;
    void walk(FocusNode n) {
      if (first != null) return;
      if (n.canRequestFocus && GtvTvFocusNavigation.hasRoute(n)) {
        first = n;
        return;
      }
      for (final c in n.children) {
        walk(c);
      }
    }

    walk(FocusManager.instance.rootScope);
    return first;
  }

  static void _recoverFocus({bool force = false}) {
    final current = FocusManager.instance.primaryFocus;
    if (!force && current != null && current.hasFocus && current.canRequestFocus) {
      return;
    }
    if (!force && suppressInitialFocus) return;

    final registered = _firstRegisteredInTree();
    if (registered != null) {
      registered.requestFocus();
      return;
    }

    _requestInitialFocus(FocusManager.instance.rootScope);
  }

  static void _moveFocus(FocusNode from, TraversalDirection dir) {
    final node = GtvTvFocusNavigation.hasRoute(from) ? from : (_effectiveFocusNode(from) ?? from);

    if (GtvTvFocusNavigation.move(node, dir)) return;

    final before = FocusManager.instance.primaryFocus;

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

    node.focusInDirection(dir);
    final after = FocusManager.instance.primaryFocus;
    if (after != before && after != null) return;

    if (dir == TraversalDirection.down && GtvTvFocusRegistry.focusBottomNav()) {
      return;
    }

    _focusNearestInDirection(node, dir);
  }

  static void _focusNearestInDirection(FocusNode from, TraversalDirection dir) {
    if (dir == TraversalDirection.down && GtvTvFocusRegistry.focusBottomNav()) {
      return;
    }

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

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Receives DPAD / Enter key events from Android [MainActivity] when the
/// Flutter engine does not deliver them through [HardwareKeyboard].
class GtvTvKeyBridge {
  GtvTvKeyBridge._();

  static const MethodChannel _channel = MethodChannel('com.gadir.tv/keys');

  static bool _installed = false;
  static int? lastKeyCode;
  static String? lastKeyLabel;
  static final ValueNotifier<int?> lastKeyNotifier = ValueNotifier<int?>(null);

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
    if (!context.mounted) return;

    switch (keyCode) {
      case 19:
        focus.focusInDirection(TraversalDirection.up);
        break;
      case 20:
        focus.focusInDirection(TraversalDirection.down);
        break;
      case 21:
        focus.focusInDirection(TraversalDirection.left);
        break;
      case 22:
        focus.focusInDirection(TraversalDirection.right);
        break;
      case 23:
      case 66:
        Actions.invoke(context, const ActivateIntent());
        break;
      default:
        break;
    }
  }

  static void _ensureInitialFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final scope = FocusManager.instance.rootScope;
      if (scope.focusedChild == null) {
        scope.firstFocus();
      }
    });
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

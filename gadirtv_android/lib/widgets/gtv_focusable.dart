import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';

/// D-pad / remote friendly tap target with visible focus ring.
///
/// Wraps any child and wires [ActivateIntent] so the Android TV remote
/// "OK" button triggers [onTap] the same way a finger tap would.
class GtvFocusable extends StatefulWidget {
  const GtvFocusable({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.autofocus = false,
    this.focusNode,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = EdgeInsets.zero,
    this.enabled = true,
    this.onMoveLeft,
    this.onMoveRight,
    this.onMoveUp,
    this.onMoveDown,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool autofocus;
  final FocusNode? focusNode;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final bool enabled;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;

  @override
  State<GtvFocusable> createState() => _GtvFocusableState();
}

class _GtvFocusableState extends State<GtvFocusable> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled && widget.onTap != null;

    return Focus(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      canRequestFocus: enabled,
      onKeyEvent: (_, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final k = event.logicalKey;
        if (k == LogicalKeyboardKey.arrowLeft && widget.onMoveLeft != null) {
          widget.onMoveLeft!();
          return KeyEventResult.handled;
        }
        if (k == LogicalKeyboardKey.arrowRight && widget.onMoveRight != null) {
          widget.onMoveRight!();
          return KeyEventResult.handled;
        }
        if (k == LogicalKeyboardKey.arrowUp && widget.onMoveUp != null) {
          widget.onMoveUp!();
          return KeyEventResult.handled;
        }
        if (k == LogicalKeyboardKey.arrowDown && widget.onMoveDown != null) {
          widget.onMoveDown!();
          return KeyEventResult.handled;
        }
        if (k == LogicalKeyboardKey.select || k == LogicalKeyboardKey.enter) {
          widget.onTap?.call();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: FocusableActionDetector(
      autofocus: widget.focusNode == null && widget.autofocus,
      enabled: enabled,
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _focused = v),
      mouseCursor: enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      actions: enabled
          ? {
              ActivateIntent: CallbackAction<ActivateIntent>(
                onInvoke: (_) {
                  widget.onTap?.call();
                  return null;
                },
              ),
            }
          : const {},
      child: GestureDetector(
        onTap: enabled ? widget.onTap : null,
        onLongPress: enabled ? widget.onLongPress : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: widget.padding,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            border: Border.all(
              color: _focused ? GtvTheme.red : Colors.transparent,
              width: 2,
            ),
            boxShadow: _focused
                ? [BoxShadow(color: GtvTheme.red.withOpacity(0.35), blurRadius: 14, spreadRadius: 1)]
                : null,
          ),
          child: widget.child,
        ),
      ),
    ),
    );
  }
}

/// Circular icon button for top bars — search, settings, etc.
class GtvIconButton extends StatelessWidget {
  const GtvIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.tooltip,
    this.autofocus = false,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String? tooltip;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      autofocus: autofocus,
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Tooltip(
        message: tooltip ?? '',
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: GtvTheme.surface,
            shape: BoxShape.circle,
            border: Border.all(color: GtvTheme.border),
          ),
          child: Icon(icon, color: Colors.white, size: 18),
        ),
      ),
    );
  }
}

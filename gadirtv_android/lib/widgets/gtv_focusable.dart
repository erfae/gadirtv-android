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
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool autofocus;
  final FocusNode? focusNode;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final bool enabled;

  @override
  State<GtvFocusable> createState() => _GtvFocusableState();
}

class _GtvFocusableState extends State<GtvFocusable> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled && widget.onTap != null;

    return FocusableActionDetector(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
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

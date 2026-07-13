import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_focus_navigation.dart';
import '../theme.dart';

/// D-pad / remote friendly tap target with visible focus ring.
///
/// Registers navigation with [GtvTvFocusNavigation] because Android TV
/// remotes deliver keys via the native bridge, not [KeyEvent].
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
  late final FocusNode _node = widget.focusNode ?? FocusNode();
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _syncNavigation();
    _node.addListener(_onFocusChange);
  }

  @override
  void didUpdateWidget(covariant GtvFocusable oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncNavigation();
  }

  @override
  void dispose() {
    _node.removeListener(_onFocusChange);
    GtvTvFocusNavigation.unregister(_node);
    if (widget.focusNode == null) {
      _node.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    if (mounted) setState(() => _focused = _node.hasFocus);
  }

  void _syncNavigation() {
    final enabled = widget.enabled && widget.onTap != null;
    if (!enabled) {
      GtvTvFocusNavigation.unregister(_node);
      return;
    }
    GtvTvFocusNavigation.register(
      _node,
      onUp: widget.onMoveUp,
      onDown: widget.onMoveDown,
      onLeft: widget.onMoveLeft,
      onRight: widget.onMoveRight,
      onActivate: widget.onTap,
    );
  }

  KeyEventResult _onKeyEvent(FocusNode node, KeyEvent event) {
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
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled && widget.onTap != null;

    return Focus(
      focusNode: _node,
      autofocus: widget.autofocus,
      canRequestFocus: enabled,
      onKeyEvent: _onKeyEvent,
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
    this.focusNode,
    this.onMoveDown,
    this.onMoveLeft,
    this.onMoveRight,
    this.onMoveUp,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String? tooltip;
  final bool autofocus;
  final FocusNode? focusNode;
  final VoidCallback? onMoveDown;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveUp;

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      focusNode: focusNode,
      autofocus: autofocus,
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      onMoveDown: onMoveDown,
      onMoveLeft: onMoveLeft,
      onMoveRight: onMoveRight,
      onMoveUp: onMoveUp,
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

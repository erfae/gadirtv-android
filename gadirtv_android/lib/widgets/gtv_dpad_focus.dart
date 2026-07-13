import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_focus_navigation.dart';
import '../services/gtv_tv_key_bridge.dart';
import '../theme.dart';

/// D-pad focus target — registers with [GtvTvFocusNavigation] for TV remotes.
class GtvDpadFocus extends StatefulWidget {
  const GtvDpadFocus({
    super.key,
    required this.child,
    this.focusNode,
    this.onTap,
    this.onMoveUp,
    this.onMoveDown,
    this.onMoveLeft,
    this.onMoveRight,
    this.autofocus = false,
    this.enabled = true,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.padding = EdgeInsets.zero,
    this.showRing = true,
  });

  final Widget child;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final bool autofocus;
  final bool enabled;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final bool showRing;

  @override
  State<GtvDpadFocus> createState() => _GtvDpadFocusState();
}

class _GtvDpadFocusState extends State<GtvDpadFocus> {
  late final FocusNode _node = widget.focusNode ?? FocusNode();
  bool _focused = false;

  bool get _ownsNode => widget.focusNode == null;

  @override
  void initState() {
    super.initState();
    _node.addListener(_onFocus);
    _syncNav();
  }

  @override
  void didUpdateWidget(covariant GtvDpadFocus oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncNav();
  }

  @override
  void dispose() {
    _node.removeListener(_onFocus);
    GtvTvFocusNavigation.unregister(_node);
    if (_ownsNode) _node.dispose();
    super.dispose();
  }

  void _onFocus() {
    if (mounted) setState(() => _focused = _node.hasFocus);
    if (_node.hasFocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || !_node.hasFocus) return;
        Scrollable.ensureVisible(
          context,
          alignment: 0.38,
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOut,
        );
      });
    }
  }

  void _syncNav() {
    final on = widget.enabled && widget.onTap != null;
    if (!on) {
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

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (GtvTvKeyBridge.nativeKeyHandled) return KeyEventResult.handled;
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
    final on = widget.enabled && widget.onTap != null;
    return Focus(
      focusNode: _node,
      autofocus: widget.autofocus,
      canRequestFocus: on,
      onKeyEvent: _onKey,
      child: GestureDetector(
        onTap: on ? widget.onTap : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: widget.padding,
          decoration: widget.showRing
              ? BoxDecoration(
                  borderRadius: widget.borderRadius,
                  border: Border.all(
                    color: _focused ? GtvTheme.red : Colors.transparent,
                    width: 2,
                  ),
                  boxShadow: _focused
                      ? [BoxShadow(color: GtvTheme.red.withOpacity(0.35), blurRadius: 12)]
                      : null,
                )
              : null,
          child: widget.child,
        ),
      ),
    );
  }
}

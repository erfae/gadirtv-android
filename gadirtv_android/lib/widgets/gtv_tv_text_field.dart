import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_key_bridge.dart';
import '../theme.dart';
import '../utils/tv_utils.dart';
import 'gtv_focusable.dart';

/// Text field for Android TV: D-pad focuses without opening the keyboard.
/// Press OK to edit; keyboard OK advances to [onAdvance] (next field).
class GtvTvTextField extends StatefulWidget {
  const GtvTvTextField({
    super.key,
    required this.controller,
    this.decoration = const InputDecoration(),
    this.enabled = true,
    this.keyboardType,
    this.obscureText = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.textInputAction,
    this.browseFocusNode,
    this.toggleFocusNode,
    this.onAdvance,
    this.onSubmitted,
    this.onEditingChanged,
    this.onToggleObscure,
    this.scrollController,
    this.keyboardLift = 320,
  });

  final TextEditingController controller;
  final InputDecoration decoration;
  final bool enabled;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final TextInputAction? textInputAction;
  final FocusNode? browseFocusNode;
  /// D-pad focus target for [onToggleObscure] (password visibility).
  final FocusNode? toggleFocusNode;
  final VoidCallback? onAdvance;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<bool>? onEditingChanged;
  final VoidCallback? onToggleObscure;
  final ScrollController? scrollController;
  /// Extra scroll lift on TV when the soft keyboard covers lower fields.
  final double keyboardLift;

  @override
  State<GtvTvTextField> createState() => _GtvTvTextFieldState();
}

class _GtvTvTextFieldState extends State<GtvTvTextField> {
  final _editFocusNode = FocusNode();
  final _fieldKey = GlobalKey();
  bool _editing = false;
  bool _isTv = false;

  @override
  void initState() {
    super.initState();
    _editFocusNode.addListener(_onEditFocusChange);
    TvUtils.isAndroidTv().then((tv) {
      if (mounted) setState(() => _isTv = tv);
    });
  }

  @override
  void dispose() {
    _editFocusNode.removeListener(_onEditFocusChange);
    _editFocusNode.dispose();
    super.dispose();
  }

  void _onEditFocusChange() {
    if (!_editFocusNode.hasFocus && _editing && mounted) {
      _setEditing(false);
    }
  }

  void _setEditing(bool editing) {
    if (_editing == editing) return;
    setState(() => _editing = editing);
    widget.onEditingChanged?.call(editing);
    if (!editing) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    }
  }

  void _scrollIntoView() {
    final ctx = _fieldKey.currentContext;
    if (ctx == null) return;

    void scrollNow({double alignment = 0.0}) {
      Scrollable.ensureVisible(
        ctx,
        alignment: alignment,
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOut,
      );

      final box = ctx.findRenderObject();
      final controller = widget.scrollController;
      if (box is RenderBox && controller != null && controller.hasClients) {
        final viewport = RenderAbstractViewport.of(box);
        final reveal = viewport.getOffsetToReveal(box, alignment).offset;
        final lift = _isTv ? widget.keyboardLift : 0.0;
        final target = (reveal + lift * 0.35).clamp(
          0.0,
          controller.position.maxScrollExtent,
        );
        controller.animateTo(
          target,
          duration: const Duration(milliseconds: 280),
          curve: Curves.easeOut,
        );
      }
    }

    scrollNow();
    // Keyboard animates in after focus — retry so password/name stay visible.
    Future<void>.delayed(const Duration(milliseconds: 350), () {
      if (mounted && _editing) scrollNow(alignment: 0.0);
    });
    Future<void>.delayed(const Duration(milliseconds: 700), () {
      if (mounted && _editing) scrollNow(alignment: 0.0);
    });
  }

  void _startEditing() {
    if (!widget.enabled || _editing) return;
    _setEditing(true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _scrollIntoView();
      _editFocusNode.requestFocus();
      SystemChannels.textInput.invokeMethod('TextInput.show');
    });
  }

  void _finishEditing({required bool advance}) {
    if (!mounted) return;
    _editFocusNode.unfocus();
    _setEditing(false);

    GtvTvKeyBridge.suppressInitialFocus = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (advance && widget.onAdvance != null) {
        widget.onAdvance!();
      } else {
        (widget.browseFocusNode ?? _editFocusNode).requestFocus();
      }
      Future<void>.delayed(const Duration(milliseconds: 150), () {
        GtvTvKeyBridge.suppressInitialFocus = false;
      });
    });
  }

  String _displayText() {
    if (widget.controller.text.isNotEmpty) {
      return widget.obscureText ? '••••••••' : widget.controller.text;
    }
    return widget.decoration.hintText ?? '';
  }

  bool get _showBrowseMode => _isTv && !_editing;

  Widget? _buildVisibilityToggle() {
    if (widget.onToggleObscure == null) return null;
    final visible = !widget.obscureText;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: GtvFocusable(
        focusNode: widget.toggleFocusNode,
        enabled: widget.enabled,
        onTap: widget.onToggleObscure,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                visible ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                color: GtvTheme.textDim,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                visible ? 'Ocultar contraseña' : 'Mostrar contraseña',
                style: const TextStyle(color: GtvTheme.textDim, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _editDecoration() {
    // Suffix IconButton is hard to reach with a TV remote — use [_buildVisibilityToggle].
    if (widget.onToggleObscure != null) {
      return widget.decoration.copyWith(suffixIcon: null);
    }
    return widget.decoration;
  }

  @override
  Widget build(BuildContext context) {
    final field = _showBrowseMode
        ? KeyedSubtree(
            key: _fieldKey,
            child: GtvFocusable(
              focusNode: widget.browseFocusNode,
              enabled: widget.enabled,
              onTap: _startEditing,
              borderRadius: BorderRadius.circular(12),
              child: InputDecorator(
                isFocused: false,
                isEmpty: widget.controller.text.isEmpty,
                decoration: widget.decoration.copyWith(
                  enabled: widget.enabled,
                  hintText: widget.decoration.hintText,
                  suffixIcon: null,
                ),
                child: Text(
                  _displayText(),
                  style: TextStyle(
                    color: widget.controller.text.isEmpty ? GtvTheme.textDim : Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
        : KeyedSubtree(
            key: _fieldKey,
            child: TextField(
              controller: widget.controller,
              focusNode: _isTv ? _editFocusNode : null,
              enabled: widget.enabled,
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText,
              autocorrect: widget.autocorrect,
              enableSuggestions: widget.enableSuggestions,
              textInputAction: widget.textInputAction,
              style: const TextStyle(color: Colors.white),
              decoration: _editDecoration(),
              onSubmitted: (value) {
                widget.onSubmitted?.call(value);
                if (_isTv) {
                  final advance = widget.textInputAction == TextInputAction.next;
                  _finishEditing(advance: advance);
                }
              },
            ),
          );

    final toggle = _buildVisibilityToggle();
    if (toggle == null) return field;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [field, toggle],
    );
  }
}

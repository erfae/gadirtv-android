import 'package:flutter/material.dart';
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
    this.onAdvance,
    this.onSubmitted,
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
  final VoidCallback? onAdvance;
  final ValueChanged<String>? onSubmitted;

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
      setState(() => _editing = false);
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    }
  }

  void _scrollIntoView() {
    final ctx = _fieldKey.currentContext;
    if (ctx == null) return;
    Scrollable.ensureVisible(
      ctx,
      alignment: 0.15,
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  void _startEditing() {
    if (!widget.enabled || _editing) return;
    setState(() => _editing = true);
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
    setState(() => _editing = false);
    SystemChannels.textInput.invokeMethod('TextInput.hide');

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

  @override
  Widget build(BuildContext context) {
    if (_showBrowseMode) {
      final hint = widget.controller.text.isEmpty;
      return KeyedSubtree(
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
            ),
            child: Text(
              _displayText(),
              style: TextStyle(
                color: hint ? GtvTheme.textDim : Colors.white,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      );
    }

    return KeyedSubtree(
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
        decoration: widget.decoration,
        onSubmitted: (value) {
          widget.onSubmitted?.call(value);
          if (_isTv) {
            final advance = widget.textInputAction == TextInputAction.next;
            _finishEditing(advance: advance);
          }
        },
      ),
    );
  }
}

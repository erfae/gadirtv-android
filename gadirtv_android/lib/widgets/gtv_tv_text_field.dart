import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';
import '../utils/tv_utils.dart';
import 'gtv_focusable.dart';

/// Text field for Android TV: D-pad focuses without opening the keyboard.
/// Press OK to enter edit mode and show the soft keyboard.
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
    this.onSubmitted,
  });

  final TextEditingController controller;
  final InputDecoration decoration;
  final bool enabled;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final ValueChanged<String>? onSubmitted;

  @override
  State<GtvTvTextField> createState() => _GtvTvTextFieldState();
}

class _GtvTvTextFieldState extends State<GtvTvTextField> {
  final _editFocusNode = FocusNode();
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
    if (!_editFocusNode.hasFocus && _editing) {
      setState(() => _editing = false);
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    }
  }

  void _startEditing() {
    if (!widget.enabled || _editing) return;
    setState(() => _editing = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _editFocusNode.requestFocus();
      SystemChannels.textInput.invokeMethod('TextInput.show');
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
      return GtvFocusable(
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
      );
    }

    return TextField(
      controller: widget.controller,
      focusNode: _isTv ? _editFocusNode : null,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      enableSuggestions: widget.enableSuggestions,
      style: const TextStyle(color: Colors.white),
      decoration: widget.decoration,
      onSubmitted: (value) {
        widget.onSubmitted?.call(value);
        if (_isTv) {
          _editFocusNode.unfocus();
        }
      },
    );
  }
}

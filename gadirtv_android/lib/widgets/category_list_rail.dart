import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_focus_navigation.dart';
import '../theme.dart';
import '../utils/tv_layout.dart';

/// Vertical category list — left rail for Live / Movies / Series.
class CategoryListRail extends StatefulWidget {
  const CategoryListRail({
    super.key,
    required this.categories,
    required this.selectedId,
    required this.onSelected,
    this.onMoveRight,
  });

  final List<(String, String)> categories;
  final String selectedId;
  final ValueChanged<String> onSelected;
  final VoidCallback? onMoveRight;

  @override
  State<CategoryListRail> createState() => CategoryListRailState();
}

class CategoryListRailState extends State<CategoryListRail> {
  final _rowFocusNodes = <FocusNode>[];

  @override
  void dispose() {
    for (final n in _rowFocusNodes) {
      n.dispose();
    }
    super.dispose();
  }

  void _syncNodes() {
    while (_rowFocusNodes.length < widget.categories.length) {
      _rowFocusNodes.add(FocusNode());
    }
    while (_rowFocusNodes.length > widget.categories.length) {
      _rowFocusNodes.removeLast().dispose();
    }
  }

  void focusSelected() {
    final i = widget.categories.indexWhere((c) => c.$1 == widget.selectedId);
    if (i < 0) return;
    if (i < _rowFocusNodes.length) _rowFocusNodes[i].requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    _syncNodes();
    return Container(
      color: GtvTheme.surface,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 6),
        itemCount: widget.categories.length,
        itemBuilder: (_, i) {
          final (id, name) = widget.categories[i];
          final selected = id == widget.selectedId;
          return _CategoryRow(
            focusNode: _rowFocusNodes[i],
            name: name,
            selected: selected,
            autofocus: i == 0,
            onTap: () => widget.onSelected(id),
            onMoveRight: widget.onMoveRight,
          );
        },
      ),
    );
  }
}

class _CategoryRow extends StatefulWidget {
  const _CategoryRow({
    required this.focusNode,
    required this.name,
    required this.selected,
    required this.onTap,
    this.autofocus = false,
    this.onMoveRight,
  });

  final FocusNode focusNode;
  final String name;
  final bool selected;
  final VoidCallback onTap;
  final bool autofocus;
  final VoidCallback? onMoveRight;

  @override
  State<_CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<_CategoryRow> {
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocus);
    _registerNav();
  }

  @override
  void didUpdateWidget(covariant _CategoryRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      oldWidget.focusNode.removeListener(_onFocus);
      GtvTvFocusNavigation.unregister(oldWidget.focusNode);
      widget.focusNode.addListener(_onFocus);
    }
    _registerNav();
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocus);
    GtvTvFocusNavigation.unregister(widget.focusNode);
    super.dispose();
  }

  void _registerNav() {
    GtvTvFocusNavigation.register(
      widget.focusNode,
      onRight: widget.onMoveRight,
      onActivate: widget.onTap,
    );
  }

  void _onFocus() {
    if (mounted) setState(() => _focused = widget.focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    final fontSize = TvLayout.labelFont(context, 13);

    return Focus(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      onKeyEvent: (_, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowRight && widget.onMoveRight != null) {
          widget.onMoveRight!();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter) {
          widget.onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          constraints: const BoxConstraints(minHeight: 44),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
          decoration: BoxDecoration(
            color: widget.selected
                ? GtvTheme.red
                : (_focused ? GtvTheme.red.withOpacity(0.2) : Colors.transparent),
            border: Border(
              left: BorderSide(
                color: widget.selected || _focused ? GtvTheme.redHi : Colors.transparent,
                width: 3,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.name,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: widget.selected || _focused ? Colors.white : Colors.white70,
                fontSize: fontSize,
                fontWeight: widget.selected || _focused ? FontWeight.w800 : FontWeight.w500,
                height: 1.1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

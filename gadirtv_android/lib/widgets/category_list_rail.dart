import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/tv_layout.dart';
import 'gtv_dpad_focus.dart';

/// Vertical category list — left rail for Live / Movies / Series.
class CategoryListRail extends StatefulWidget {
  const CategoryListRail({
    super.key,
    required this.categories,
    required this.selectedId,
    required this.onSelected,
    this.onMoveRight,
    this.onMoveDown,
  });

  final List<(String, String)> categories;
  final String selectedId;
  final ValueChanged<String> onSelected;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveDown;

  @override
  State<CategoryListRail> createState() => CategoryListRailState();
}

class CategoryListRailState extends State<CategoryListRail> {
  final _rowFocusNodes = <FocusNode>[];

  void _onAnyFocus() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    for (final n in _rowFocusNodes) {
      n.removeListener(_onAnyFocus);
      n.dispose();
    }
    super.dispose();
  }

  void _syncNodes() {
    while (_rowFocusNodes.length < widget.categories.length) {
      final n = FocusNode(debugLabel: 'cat-${_rowFocusNodes.length}');
      n.addListener(_onAnyFocus);
      _rowFocusNodes.add(n);
    }
    while (_rowFocusNodes.length > widget.categories.length) {
      final removed = _rowFocusNodes.removeLast();
      removed.removeListener(_onAnyFocus);
      removed.dispose();
    }
  }

  void focusSelected() {
    final i = widget.categories.indexWhere((c) => c.$1 == widget.selectedId);
    focusAt(i >= 0 ? i : 0);
  }

  void focusAt(int index) {
    if (index >= 0 && index < _rowFocusNodes.length) {
      _rowFocusNodes[index].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    _syncNodes();
    final count = widget.categories.length;
    return Container(
      color: GtvTheme.surface,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 6),
        itemCount: count,
        itemBuilder: (_, i) {
          final (id, name) = widget.categories[i];
          final selected = id == widget.selectedId;
          final node = _rowFocusNodes[i];
          final fontSize = TvLayout.labelFont(context, 13);

          return GtvDpadFocus(
            focusNode: node,
            autofocus: i == 0,
            onTap: () => widget.onSelected(id),
            onMoveUp: i > 0 ? () => _rowFocusNodes[i - 1].requestFocus() : null,
            onMoveDown: i < count - 1
                ? () => _rowFocusNodes[i + 1].requestFocus()
                : widget.onMoveDown,
            onMoveRight: widget.onMoveRight,
            showRing: false,
            borderRadius: BorderRadius.circular(4),
            child: Builder(
              builder: (context) {
                final focused = node.hasFocus;
                return Container(
                  constraints: const BoxConstraints(minHeight: 44),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                  decoration: BoxDecoration(
                    color: selected
                        ? GtvTheme.red
                        : focused
                            ? GtvTheme.red.withOpacity(0.15)
                            : Colors.transparent,
                    border: Border(
                      left: BorderSide(
                        color: selected || focused ? GtvTheme.redHi : Colors.transparent,
                        width: 3,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: selected || focused ? Colors.white : Colors.white70,
                        fontSize: fontSize,
                        fontWeight: selected || focused ? FontWeight.w800 : FontWeight.w500,
                        height: 1.1,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

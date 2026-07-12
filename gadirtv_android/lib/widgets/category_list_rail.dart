import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';
import '../utils/tv_layout.dart';

/// Vertical category list — used as the left rail in Live TV, Movies
/// and Series tabs. Each row is a full-width tap target with a red
/// accent bar on the selected entry and D-pad focus ring.
class CategoryListRail extends StatelessWidget {
  const CategoryListRail({
    super.key,
    required this.categories,
    required this.selectedId,
    required this.onSelected,
  });

  final List<(String, String)> categories;
  final String selectedId;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GtvTheme.surface.withOpacity(0.35),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: categories.length,
        itemBuilder: (_, i) {
          final (id, name) = categories[i];
          final selected = id == selectedId;
          return _CategoryRow(
            name: name,
            selected: selected,
            autofocus: i == 0,
            onTap: () => onSelected(id),
          );
        },
      ),
    );
  }
}

class _CategoryRow extends StatefulWidget {
  const _CategoryRow({
    required this.name,
    required this.selected,
    required this.onTap,
    this.autofocus = false,
  });

  final String name;
  final bool selected;
  final VoidCallback onTap;
  final bool autofocus;

  @override
  State<_CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<_CategoryRow> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      autofocus: widget.autofocus,
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (v) => setState(() => _focused = v),
      mouseCursor: SystemMouseCursors.click,
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            widget.onTap();
            return null;
          },
        ),
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: widget.selected
                ? GtvTheme.red.withOpacity(0.15)
                : (_focused ? GtvTheme.red.withOpacity(0.08) : Colors.transparent),
            border: Border(
              left: BorderSide(
                color: widget.selected || _focused ? GtvTheme.red : Colors.transparent,
                width: 3,
              ),
              right: BorderSide(
                color: _focused ? GtvTheme.red : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            widget.name,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: _focused
                  ? GtvTheme.redHi
                  : (widget.selected ? GtvTheme.red.withOpacity(0.9) : Colors.white70),
              fontSize: TvLayout.labelFont(context, 11),
              fontWeight: _focused || widget.selected ? FontWeight.w800 : FontWeight.w500,
              height: 1.15,
            ),
          ),
        ),
      ),
    );
  }
}

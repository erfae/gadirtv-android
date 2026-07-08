import 'package:flutter/material.dart';

import '../theme.dart';

/// Horizontal chip strip used to filter grids by category.
///
/// Auto-scrolls horizontally on the TV remote; on touch it swipes like any
/// list. Sends the selected `Category.id` back via [onSelected].
class CategoryStrip extends StatelessWidget {
  const CategoryStrip({
    super.key,
    required this.labels,
    required this.selectedId,
    required this.onSelected,
  });

  /// Ordered list of `(id, label)` pairs — the first entry is typically
  /// `('__all__', 'Todas')`.
  final List<(String id, String label)> labels;
  final String selectedId;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: labels.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, i) {
          final (id, label) = labels[i];
          final selected = id == selectedId;
          return _CategoryChip(
            label: label,
            selected: selected,
            onTap: () => onSelected(id),
          );
        },
      ),
    );
  }
}

class _CategoryChip extends StatefulWidget {
  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  State<_CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<_CategoryChip> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final selected = widget.selected;
    return FocusableActionDetector(
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 140),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: selected ? GtvTheme.red : GtvTheme.surface,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: _focused ? Colors.white : (selected ? GtvTheme.red : GtvTheme.border),
              width: _focused ? 2 : 1,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.label,
            style: TextStyle(
              color: selected ? Colors.white : GtvTheme.textDim,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

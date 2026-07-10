import 'package:flutter/material.dart';

import '../theme.dart';

/// Vertical category list — used as the left rail in Live TV, Movies
/// and Series tabs. Each row is a full-width tap target with a red
/// accent bar on the selected entry.
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
          return InkWell(
            onTap: () => onSelected(id),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: selected ? GtvTheme.red.withOpacity(0.15) : Colors.transparent,
                border: Border(
                  left: BorderSide(
                    color: selected ? GtvTheme.red : Colors.transparent,
                    width: 3,
                  ),
                ),
              ),
              child: Text(name,
                  style: TextStyle(
                    color: selected ? GtvTheme.redHi : Colors.white,
                    fontSize: 13,
                    fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                  )),
            ),
          );
        },
      ),
    );
  }
}

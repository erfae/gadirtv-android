import 'package:flutter/material.dart';

import '../services/gtv_tv_focus_navigation.dart';

/// D-pad focus helpers for poster grids (movies / series tabs).
class PosterGridFocus {
  PosterGridFocus();

  final nodes = <FocusNode>[];
  int cols = 4;

  void rebuild(int count) {
    for (final n in nodes) {
      GtvTvFocusNavigation.unregister(n);
      n.dispose();
    }
    nodes
      ..clear()
      ..addAll(List.generate(count, (i) => FocusNode(debugLabel: 'poster-$i')));
  }

  void dispose() {
    for (final n in nodes) {
      GtvTvFocusNavigation.unregister(n);
      n.dispose();
    }
    nodes.clear();
  }

  void focus(int index) {
    if (index >= 0 && index < nodes.length) {
      nodes[index].requestFocus();
    }
  }

  void move(
    int from,
    int deltaCol,
    int deltaRow, {
    VoidCallback? onLeaveLeft,
    VoidCallback? onLeaveDown,
  }) {
    if (cols <= 0 || nodes.isEmpty) return;
    final row = from ~/ cols;
    final col = from % cols;
    if (deltaCol < 0 && col == 0) {
      onLeaveLeft?.call();
      return;
    }
    final newCol = col + deltaCol;
    final newRow = row + deltaRow;
    if (newCol < 0) {
      onLeaveLeft?.call();
      return;
    }
    final next = newRow * cols + newCol;
    if (next >= 0 && next < nodes.length) {
      focus(next);
    } else if (deltaRow > 0) {
      onLeaveDown?.call();
    }
  }
}

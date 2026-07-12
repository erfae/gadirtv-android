import 'package:flutter/material.dart';

/// D-pad focus helpers for horizontal poster rails (home tab, etc.).
class PosterRailFocus {
  PosterRailFocus();

  final nodes = <FocusNode>[];

  void rebuild(int count) {
    for (final n in nodes) {
      n.dispose();
    }
    nodes
      ..clear()
      ..addAll(List.generate(count, (i) => FocusNode(debugLabel: 'rail-$i')));
  }

  void dispose() {
    for (final n in nodes) {
      n.dispose();
    }
    nodes.clear();
  }

  void focus(int index) {
    if (index >= 0 && index < nodes.length) {
      nodes[index].requestFocus();
    }
  }

  void moveHorizontal(
    int from,
    int delta, {
    VoidCallback? onLeaveLeft,
    VoidCallback? onLeaveRight,
  }) {
    if (nodes.isEmpty) return;
    if (delta < 0 && from <= 0) {
      onLeaveLeft?.call();
      return;
    }
    if (delta > 0 && from >= nodes.length - 1) {
      onLeaveRight?.call();
      return;
    }
    final next = from + delta;
    if (next >= 0 && next < nodes.length) focus(next);
  }
}

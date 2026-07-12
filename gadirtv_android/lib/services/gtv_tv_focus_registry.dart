import 'package:flutter/widgets.dart';

/// Shared focus targets for Android TV remote navigation.
///
/// On leanback devices [MainActivity] forwards DPAD keys to [GtvTvKeyBridge]
/// instead of Flutter's [HardwareKeyboard]. The home shell registers its bottom
/// navigation buttons here so the bridge can move focus reliably left/right/down.
class GtvTvFocusRegistry {
  GtvTvFocusRegistry._();

  static final List<FocusNode> bottomNavNodes = <FocusNode>[];
  static int selectedBottomNavIndex = 0;

  /// Called when the user presses UP from the bottom navigation bar.
  static VoidCallback? focusPrimaryContent;

  static void setBottomNav(List<FocusNode> nodes, {required int selectedIndex}) {
    bottomNavNodes
      ..clear()
      ..addAll(nodes);
    selectedBottomNavIndex = selectedIndex.clamp(0, nodes.isEmpty ? 0 : nodes.length - 1);
  }

  static void clear() {
    bottomNavNodes.clear();
    focusPrimaryContent = null;
    selectedBottomNavIndex = 0;
  }

  static bool isBottomNavFocused(FocusNode? node) {
    if (node == null) return false;
    return bottomNavNodes.contains(node);
  }

  static bool focusBottomNav({int? index}) {
    if (bottomNavNodes.isEmpty) return false;
    final i = (index ?? selectedBottomNavIndex).clamp(0, bottomNavNodes.length - 1);
    final node = bottomNavNodes[i];
    if (!node.canRequestFocus) return false;
    node.requestFocus();
    return true;
  }

  static bool moveBottomNav(int delta) {
    if (bottomNavNodes.isEmpty) return false;
    final current = bottomNavNodes.indexWhere((n) => n.hasFocus);
    final from = current >= 0 ? current : selectedBottomNavIndex;
    final next = (from + delta).clamp(0, bottomNavNodes.length - 1);
    return focusBottomNav(index: next);
  }
}

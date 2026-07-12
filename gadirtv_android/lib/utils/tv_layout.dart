import 'package:flutter/widgets.dart';

/// Scale UI sizes for 720p–4K Android TV / TV Box screens.
class TvLayout {
  TvLayout._();

  static double scale(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    if (h <= 720) return 0.85;
    if (h <= 1080) return 1.0;
    return 1.15;
  }

  static double sp(BuildContext context, double base) => base * scale(context);

  static double posterWidth(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return (w * 0.11).clamp(110.0, 170.0);
  }

  static double posterRailHeight(BuildContext context) {
    final pw = posterWidth(context);
    return pw * 1.5 + 44; // 2:3 poster + title bar
  }

  static double heroHeight(BuildContext context, {double? maxHeight}) {
    final h = maxHeight ?? MediaQuery.sizeOf(context).height;
    return (h * 0.52).clamp(200.0, h * 0.58);
  }

  static double compactRailBlockHeight(BuildContext context, {double? maxHeight}) {
    final h = maxHeight ?? MediaQuery.sizeOf(context).height;
    return (h * 0.22).clamp(130.0, 200.0);
  }

  static double compactPosterWidth(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return (w * 0.085).clamp(88.0, 130.0);
  }

  static double compactPosterRailHeight(BuildContext context, {double? blockHeight}) {
    final bh = blockHeight ?? compactRailBlockHeight(context);
    return bh - 28;
  }

  static double categoryRailWidth(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return (w * 0.22).clamp(200.0, 340.0);
  }

  static double labelFont(BuildContext context, double base) => sp(context, base);
}

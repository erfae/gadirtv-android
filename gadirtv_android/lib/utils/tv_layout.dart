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

  static double heroHeight(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    if (h <= 720) return 105;
    if (h <= 1080) return 140;
    return (h * 0.16).clamp(150.0, 185.0);
  }

  static double categoryRailWidth(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return (w * 0.14).clamp(130.0, 200.0);
  }

  static double labelFont(BuildContext context, double base) => sp(context, base);
}

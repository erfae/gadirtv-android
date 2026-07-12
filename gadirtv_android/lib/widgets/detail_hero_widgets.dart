import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/tv_layout.dart';
import 'gtv_focusable.dart';

/// Full-bleed backdrop — Android TV style (cover fills hero, art biased right).
class GtvHeroBackdrop extends StatelessWidget {
  const GtvHeroBackdrop({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return Container(color: GtvTheme.surface);
    }
    return ClipRect(
      child: Transform.scale(
        scale: 1.12,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          alignment: Alignment.centerRight,
          width: double.infinity,
          height: double.infinity,
          errorWidget: (_, __, ___) => Container(color: GtvTheme.surface),
        ),
      ),
    );
  }
}

/// Standard hero gradients for readable text over backdrop.
class GtvHeroGradients extends StatelessWidget {
  const GtvHeroGradients({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.55),
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.45),
              ],
              stops: const [0, 0.32, 0.68, 1],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.25),
                Colors.transparent,
                GtvTheme.bg.withOpacity(0.88),
              ],
              stops: const [0, 0.5, 1],
            ),
          ),
        ),
      ],
    );
  }
}

/// Play / trailer CTA — same pill style for both actions.
class GtvHeroActionButton extends StatelessWidget {
  const GtvHeroActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.focusNode,
    this.autofocus = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      focusNode: focusNode,
      autofocus: autofocus,
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 22),
        label: Text(label, style: const TextStyle(fontWeight: FontWeight.w800)),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          backgroundColor: GtvTheme.red,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

/// Synopsis column on the right with highlighted heading.
class GtvSynopsisPanel extends StatelessWidget {
  const GtvSynopsisPanel({
    super.key,
    required this.title,
    required this.text,
    this.loading = false,
    this.padding = const EdgeInsets.only(left: 12),
  });

  final String title;
  final String text;
  final bool loading;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: GtvTheme.red.withOpacity(0.22),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: GtvTheme.red.withOpacity(0.55)),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: GtvTheme.redHi,
                fontSize: TvLayout.sp(context, 14),
                fontWeight: FontWeight.w900,
                letterSpacing: 0.6,
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (loading)
            const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(strokeWidth: 2, color: GtvTheme.red),
            )
          else
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.86),
                    fontSize: TvLayout.sp(context, 14),
                    height: 1.55,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

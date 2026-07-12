import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/tv_layout.dart';
import 'gtv_focusable.dart';

/// Android TV hero — left: title, synopsis, actions. Right: large poster art.
class GtvAndroidTvHeroLayout extends StatelessWidget {
  const GtvAndroidTvHeroLayout({
    super.key,
    required this.title,
    required this.badge,
    required this.synopsis,
    required this.posterUrl,
    required this.actions,
    this.rating = 0,
    this.subtitle,
    this.synopsisTitle = 'Sinopsis',
    this.synopsisLoading = false,
    this.backButton,
    this.backdropUrl,
  });

  final String title;
  final String badge;
  final String synopsis;
  final String synopsisTitle;
  final bool synopsisLoading;
  final String posterUrl;
  final String? backdropUrl;
  final double rating;
  final String? subtitle;
  final Widget actions;
  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    final bg = (backdropUrl ?? posterUrl).trim();

    return Stack(
      fit: StackFit.expand,
      children: [
        if (bg.isNotEmpty)
          Positioned.fill(
            child: Opacity(
              opacity: 0.22,
              child: CachedNetworkImage(
                imageUrl: bg,
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
              ),
            ),
          ),
        Container(color: GtvTheme.bg.withOpacity(0.72)),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                GtvTheme.bg.withOpacity(0.95),
                GtvTheme.bg.withOpacity(0.75),
                Colors.transparent,
              ],
              stops: const [0, 0.45, 0.85],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 24, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (backButton != null) ...[
                      backButton!,
                      const SizedBox(height: 4),
                    ],
                    Text(
                      badge,
                      style: TextStyle(
                        color: GtvTheme.redHi,
                        fontSize: TvLayout.sp(context, 12),
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TvLayout.sp(context, 30),
                        fontWeight: FontWeight.w800,
                        height: 1.05,
                      ),
                    ),
                    if (rating > 0) ...[
                      const SizedBox(height: 8),
                      Text(
                        '★ ${rating.toStringAsFixed(1)}',
                        style: TextStyle(
                          color: const Color(0xFFFACC15),
                          fontSize: TvLayout.sp(context, 15),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                    if (subtitle != null && subtitle!.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        subtitle!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: GtvTheme.textDim, fontSize: 13),
                      ),
                    ],
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: GtvTheme.red.withOpacity(0.22),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: GtvTheme.red.withOpacity(0.55)),
                      ),
                      child: Text(
                        synopsisTitle,
                        style: TextStyle(
                          color: GtvTheme.redHi,
                          fontSize: TvLayout.sp(context, 14),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (synopsisLoading)
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2, color: GtvTheme.red),
                        ),
                      )
                    else
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            synopsis,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.88),
                              fontSize: TvLayout.sp(context, 14),
                              height: 1.55,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 14),
                    actions,
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 11,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: _LargePoster(posterUrl: posterUrl),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _LargePoster extends StatelessWidget {
  const _LargePoster({required this.posterUrl});

  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    if (posterUrl.isEmpty) {
      return AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            color: GtvTheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: GtvTheme.border),
          ),
          child: const Icon(Icons.movie_rounded, color: GtvTheme.textDim, size: 64),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight.isFinite ? constraints.maxHeight : 360.0;
        final w = (h * 2 / 3).clamp(160.0, 400.0);
        return Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.65),
                blurRadius: 28,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: CachedNetworkImage(
              imageUrl: posterUrl,
              fit: BoxFit.cover,
              errorWidget: (_, __, ___) => Container(
                color: GtvTheme.surface,
                child: const Icon(Icons.broken_image_rounded, color: GtvTheme.textDim, size: 48),
              ),
            ),
          ),
        );
      },
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

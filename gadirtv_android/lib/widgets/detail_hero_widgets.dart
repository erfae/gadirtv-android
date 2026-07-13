import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/tv_layout.dart';
import 'gtv_focusable.dart';

/// Where the synopsis block is rendered in the hero.
enum GtvHeroSynopsisSide {
  /// Home tab — synopsis under the title on the left.
  left,

  /// Movie / series detail — synopsis on the right under the poster.
  right,
}

/// Android TV hero — cinematic backdrop, metadata, poster stamp, actions.
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
    this.synopsisSide = GtvHeroSynopsisSide.left,
    this.backButton,
    this.backdropUrl,
  });

  final String title;
  final String badge;
  final String synopsis;
  final String synopsisTitle;
  final bool synopsisLoading;
  final GtvHeroSynopsisSide synopsisSide;
  final String posterUrl;
  final String? backdropUrl;
  final double rating;
  final String? subtitle;
  final Widget actions;
  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    final backdrop = (backdropUrl ?? '').trim();
    final poster = posterUrl.trim();

    if (synopsisSide == GtvHeroSynopsisSide.left) {
      return _buildHomeLayout(context, poster, backdrop);
    }

    final bg = backdrop.isNotEmpty ? backdrop : poster;
    return Stack(
      fit: StackFit.expand,
      children: [
        if (bg.isNotEmpty)
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: bg,
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
              errorWidget: (_, __, ___) => const SizedBox.shrink(),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                GtvTheme.bg,
                GtvTheme.bg.withOpacity(0.92),
                GtvTheme.bg.withOpacity(0.55),
                GtvTheme.bg.withOpacity(0.20),
              ],
              stops: const [0, 0.32, 0.58, 1],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 20, 28, 24),
          child: _buildDetailLayout(context, poster),
        ),
      ],
    );
  }

  /// Home tab — full-bleed backdrop with poster stamp on the right.
  Widget _buildHomeLayout(BuildContext context, String poster, String backdrop) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (backdrop.isNotEmpty)
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: backdrop,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              errorWidget: (_, __, ___) => ColoredBox(color: GtvTheme.bg),
            ),
          )
        else
          const ColoredBox(color: GtvTheme.bg),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                GtvTheme.bg.withOpacity(0.92),
                GtvTheme.bg.withOpacity(0.72),
                GtvTheme.bg.withOpacity(0.35),
                Colors.transparent,
              ],
              stops: const [0, 0.30, 0.55, 0.85],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 20, 28, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ..._metaBlock(context, includeSynopsis: true),
                    const SizedBox(height: 14),
                    actions,
                  ],
                ),
              ),
              const SizedBox(width: 20),
              if (poster.isNotEmpty)
                Expanded(
                  flex: 7,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: _LargePoster(posterUrl: poster),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailLayout(BuildContext context, String poster) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._metaBlock(context, includeSynopsis: false),
              const Spacer(),
              actions,
            ],
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: _LargePoster(posterUrl: poster, maxHeight: 220),
              ),
              const SizedBox(height: 14),
              Text(
                synopsisTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: TvLayout.sp(context, 14),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8),
              if (synopsisLoading)
                const Padding(
                  padding: EdgeInsets.only(top: 4),
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
                        color: Colors.white.withOpacity(0.85),
                        fontSize: TvLayout.sp(context, 14),
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _metaBlock(BuildContext context, {required bool includeSynopsis}) {
    return [
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
      const SizedBox(height: 10),
      Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontSize: TvLayout.sp(context, 34),
          fontWeight: FontWeight.w800,
          height: 1.05,
          letterSpacing: -0.5,
        ),
      ),
      if (rating > 0) ...[
        const SizedBox(height: 10),
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
        const SizedBox(height: 8),
        Text(
          subtitle!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white.withOpacity(0.75),
            fontSize: TvLayout.sp(context, 13),
          ),
        ),
      ],
      if (includeSynopsis) ...[
        const SizedBox(height: 16),
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
            child: Text(
              synopsis,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white.withOpacity(0.82),
                fontSize: TvLayout.sp(context, 14),
                height: 1.5,
              ),
            ),
          ),
      ],
    ];
  }
}

class _LargePoster extends StatelessWidget {
  const _LargePoster({required this.posterUrl, this.maxHeight = 360});

  final String posterUrl;
  final double maxHeight;

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
        final h = constraints.maxHeight.isFinite
            ? constraints.maxHeight.clamp(120.0, maxHeight)
            : maxHeight;
        final w = (h * 2 / 3).clamp(120.0, 320.0);
        return Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                blurRadius: 32,
                offset: const Offset(0, 14),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: CachedNetworkImage(
              imageUrl: posterUrl,
              fit: BoxFit.contain,
              alignment: Alignment.center,
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
    this.onMoveDown,
    this.onMoveRight,
    this.onMoveLeft,
    this.onMoveUp,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final bool autofocus;
  final VoidCallback? onMoveDown;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUp;

  @override
  Widget build(BuildContext context) {
    return GtvFocusable(
      focusNode: focusNode,
      autofocus: autofocus,
      onTap: onTap,
      onMoveDown: onMoveDown,
      onMoveRight: onMoveRight,
      onMoveLeft: onMoveLeft,
      onMoveUp: onMoveUp,
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

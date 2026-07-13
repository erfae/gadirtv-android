import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/gtv_tv_focus_navigation.dart';
import '../theme.dart';
import '../utils/tv_layout.dart';

/// A poster / logo card used across Movies, Series and Live grids.
///
/// Behaves consistently for both touch (tap = scale bounce) and D-pad
/// (focused = red ring + scale). Keeps focus wiring inside the widget so
/// grids don't have to manage `FocusNode`s themselves.
class PosterCard extends StatefulWidget {
  const PosterCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
    this.aspectRatio = 2 / 3,
    this.rating,
    this.badge,
    this.autofocus = false,
    this.focusNode,
    this.onMoveLeft,
    this.onMoveRight,
    this.onMoveUp,
    this.onMoveDown,
    this.isFavorite,
    this.onToggleFavorite,
    this.onFocus,
    this.showTitle = true,
    this.focusScale = 1.06,
  });

  /// 2/3 → portrait poster (VOD, Series). Use 16/9 for landscape logos.
  final double aspectRatio;
  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  final double? rating;
  final String? badge;
  final bool autofocus;
  final FocusNode? focusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveRight;
  final VoidCallback? onMoveUp;
  final VoidCallback? onMoveDown;

  /// When both [isFavorite] and [onToggleFavorite] are provided, a star
  /// button is drawn in the top-left corner. Filled yellow = favorite;
  /// outlined white = not. Tapping the star fires the callback without
  /// triggering the main [onTap].
  final bool? isFavorite;
  final VoidCallback? onToggleFavorite;
  final VoidCallback? onFocus;
  final bool showTitle;
  final double focusScale;

  @override
  State<PosterCard> createState() => _PosterCardState();
}

class _PosterCardState extends State<PosterCard> {
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _registerNav();
    widget.focusNode?.addListener(_onExternalFocus);
  }

  @override
  void didUpdateWidget(covariant PosterCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      if (oldWidget.focusNode != null) {
        GtvTvFocusNavigation.unregister(oldWidget.focusNode!);
      }
      oldWidget.focusNode?.removeListener(_onExternalFocus);
      widget.focusNode?.addListener(_onExternalFocus);
    }
    _registerNav();
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(_onExternalFocus);
    if (widget.focusNode != null) {
      GtvTvFocusNavigation.unregister(widget.focusNode!);
    }
    super.dispose();
  }

  void _onExternalFocus() {
    if (mounted) setState(() => _focused = widget.focusNode?.hasFocus ?? false);
  }

  void _registerNav() {
    final n = widget.focusNode;
    if (n == null) return;
    GtvTvFocusNavigation.register(
      n,
      onUp: widget.onMoveUp,
      onDown: widget.onMoveDown,
      onLeft: widget.onMoveLeft,
      onRight: widget.onMoveRight,
      onActivate: widget.onTap,
    );
  }

  KeyEventResult _handleKey(KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final k = event.logicalKey;
    if (k == LogicalKeyboardKey.arrowLeft && widget.onMoveLeft != null) {
      widget.onMoveLeft!();
      return KeyEventResult.handled;
    }
    if (k == LogicalKeyboardKey.arrowRight && widget.onMoveRight != null) {
      widget.onMoveRight!();
      return KeyEventResult.handled;
    }
    if (k == LogicalKeyboardKey.arrowUp && widget.onMoveUp != null) {
      widget.onMoveUp!();
      return KeyEventResult.handled;
    }
    if (k == LogicalKeyboardKey.arrowDown && widget.onMoveDown != null) {
      widget.onMoveDown!();
      return KeyEventResult.handled;
    }
    if (k == LogicalKeyboardKey.select || k == LogicalKeyboardKey.enter) {
      widget.onTap();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    final useExternalFocus = widget.focusNode != null;

    final card = GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeOut,
          transform: _focused
              ? (Matrix4.identity()..scale(widget.focusScale))
              : Matrix4.identity(),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _focused ? GtvTheme.red : Colors.transparent,
              width: 3,
            ),
            boxShadow: _focused
                ? [BoxShadow(color: GtvTheme.red.withOpacity(0.4), blurRadius: 16, spreadRadius: 1)]
                : null,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: widget.aspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      _buildImage(),
                      if (widget.rating != null && widget.rating! > 0)
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.star_rounded, size: 12, color: Color(0xFFFACC15)),
                                const SizedBox(width: 3),
                                Text(
                                  widget.rating!.toStringAsFixed(1),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (widget.badge != null)
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: GtvTheme.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              widget.badge!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      if (widget.onToggleFavorite != null && widget.isFavorite != null)
                        Positioned(
                          top: 6,
                          left: 6,
                          child: Focus(
                            canRequestFocus: false,
                            skipTraversal: true,
                            child: _FavoriteStar(
                              active: widget.isFavorite!,
                              onTap: widget.onToggleFavorite!,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                if (widget.showTitle)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  color: GtvTheme.surface,
                  child: Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: TvLayout.sp(context, 12),
                      fontWeight: FontWeight.w600,
                      height: 1.15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

    if (useExternalFocus) {
      return Focus(
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        onKeyEvent: (_, event) => _handleKey(event),
        onFocusChange: (v) {
          setState(() => _focused = v);
          if (v) {
            widget.onFocus?.call();
            Scrollable.ensureVisible(
              context,
              alignment: 0.45,
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
            );
          }
        },
        child: card,
      );
    }

    return FocusableActionDetector(
      autofocus: widget.autofocus,
      onShowFocusHighlight: (v) {
        setState(() => _focused = v);
        if (v) {
          widget.onFocus?.call();
          Scrollable.ensureVisible(
            context,
            alignment: 0.45,
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOut,
          );
        }
      },
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
      child: card,
    );
  }

  Widget _buildImage() {
    if (widget.imageUrl.isEmpty) return _placeholder();
    return CachedNetworkImage(
      imageUrl: widget.imageUrl,
      fit: BoxFit.cover,
      placeholder: (_, __) => _placeholder(),
      errorWidget: (_, __, ___) => _placeholder(),
    );
  }

  Widget _placeholder() => Container(
        color: GtvTheme.surfaceHi,
        child: const Center(
          child: Icon(Icons.movie_outlined, color: GtvTheme.textDim, size: 32),
        ),
      );
}

/// Tappable star used as the favorite toggle on the poster's top-left.
///
/// A dedicated widget so its tap event doesn't bubble up to the poster's
/// main [GestureDetector] (that would open the channel instead of starring
/// it). Uses [Material.transparency] + [InkWell] to swallow the hit.
class _FavoriteStar extends StatelessWidget {
  const _FavoriteStar({required this.active, required this.onTap});

  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.55),
            shape: BoxShape.circle,
          ),
          child: Icon(
            active ? Icons.star_rounded : Icons.star_outline_rounded,
            color: active ? const Color(0xFFFACC15) : Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}

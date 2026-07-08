import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

/// Netflix-style quick actions modal — shown when the user taps a movie or
/// series poster. Offers two paths:
///
///   • REPRODUCIR      → play immediately (skip the detail screen)
///   • MÁS INFO        → open the full detail screen with cast, plot, etc.
///
/// The card mirrors Netflix's mobile "peek" pattern: hero image, title,
/// rating, two big buttons and a discreet close chevron.
Future<void> showQuickActions(
  BuildContext context, {
  required String title,
  required String imageUrl,
  required String kindLabel,
  required VoidCallback onPlay,
  required VoidCallback onInfo,
  double? rating,
  String? subtitle,
  bool playBusy = false,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (_) => _QuickActionsSheet(
      title: title,
      imageUrl: imageUrl,
      kindLabel: kindLabel,
      subtitle: subtitle,
      rating: rating,
      onPlay: onPlay,
      onInfo: onInfo,
    ),
  );
}

class _QuickActionsSheet extends StatefulWidget {
  const _QuickActionsSheet({
    required this.title,
    required this.imageUrl,
    required this.kindLabel,
    required this.onPlay,
    required this.onInfo,
    this.subtitle,
    this.rating,
  });

  final String title;
  final String imageUrl;
  final String kindLabel;
  final String? subtitle;
  final double? rating;
  final VoidCallback onPlay;
  final VoidCallback onInfo;

  @override
  State<_QuickActionsSheet> createState() => _QuickActionsSheetState();
}

class _QuickActionsSheetState extends State<_QuickActionsSheet> {
  bool _playBusy = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: Container(
            decoration: BoxDecoration(
              color: GtvTheme.surface,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: GtvTheme.border),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 30, spreadRadius: 4)],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHero(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900, height: 1.1),
                      ),
                      const SizedBox(height: 8),
                      _buildMetaRow(),
                      const SizedBox(height: 18),
                      _buildButtons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHero() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: widget.imageUrl.isEmpty
                ? Container(color: GtvTheme.surfaceHi)
                : CachedNetworkImage(
                    imageUrl: widget.imageUrl,
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => Container(color: GtvTheme.surfaceHi),
                  ),
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, GtvTheme.surface],
                stops: const [0.4, 1],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(999),
              onTap: () => Navigator.of(context).maybePop(),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.55),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close_rounded, color: Colors.white, size: 20),
              ),
            ),
          ),
        ),
        Positioned(
          top: 12,
          left: 14,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(color: GtvTheme.red, borderRadius: BorderRadius.circular(6)),
            child: Text(
              widget.kindLabel,
              style: const TextStyle(color: Colors.white, fontSize: 10, letterSpacing: 1.2, fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMetaRow() {
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (widget.rating != null && widget.rating! > 0)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star_rounded, color: Color(0xFFFACC15), size: 16),
              const SizedBox(width: 4),
              Text(widget.rating!.toStringAsFixed(1), style: const TextStyle(color: Colors.white, fontSize: 13)),
            ],
          ),
        if (widget.subtitle != null && widget.subtitle!.isNotEmpty)
          Text(widget.subtitle!, style: const TextStyle(color: GtvTheme.textDim, fontSize: 13)),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _playBusy
                ? null
                : () async {
                    setState(() => _playBusy = true);
                    widget.onPlay();
                    // Sheet stays open only briefly — the caller will close it
                    // when navigation is ready. We add a safety timeout.
                    await Future.delayed(const Duration(seconds: 3));
                    if (mounted) setState(() => _playBusy = false);
                  },
            icon: _playBusy
                ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                : const Icon(Icons.play_arrow_rounded, size: 22),
            label: const Text('REPRODUCIR'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: widget.onInfo,
            icon: const Icon(Icons.info_outline_rounded, size: 18, color: Colors.white),
            label: const Text('MÁS INFO', style: TextStyle(color: Colors.white)),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: GtvTheme.border),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: const StadiumBorder(),
              textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}

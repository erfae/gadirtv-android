import 'package:flutter/material.dart';

import '../i18n/strings.dart';

/// Classic broadcast test pattern shown when a live stream fails to
/// produce frames within the timeout window. Displays the SMPTE color
/// bars plus a bold "SIN SEÑAL" message that mimics what a broken
/// TV connection would show, which is what the user asked for.
class NoSignalTestCard extends StatelessWidget {
  const NoSignalTestCard({super.key, this.channelName});

  final String? channelName;

  // SMPTE-inspired palette (top row = 75% intensity).
  static const _bars = <Color>[
    Color(0xFFC0C0C0), // grey
    Color(0xFFC0C000), // yellow
    Color(0xFF00C0C0), // cyan
    Color(0xFF00C000), // green
    Color(0xFFC000C0), // magenta
    Color(0xFFC00000), // red
    Color(0xFF0000C0), // blue
  ];

  @override
  Widget build(BuildContext context) {
    final t = AppI18n.of(context);
    return LayoutBuilder(builder: (context, cons) {
      // Base scale: at 800 px wide the layout looks "full size". Scale
      // fonts and paddings linearly so the same widget renders correctly
      // both as a fullscreen player (~1080 px) and as an inline mini
      // preview (~300 px).
      final scale = (cons.maxWidth / 800).clamp(0.35, 1.4);
      final signalSize = (44 * scale).clamp(14, 44).toDouble();
      final signalSpacing = (6 * scale).clamp(1.5, 6).toDouble();
      final signalPadH = (20 * scale).clamp(8, 20).toDouble();
      final signalPadV = (10 * scale).clamp(4, 10).toDouble();
      final channelSize = (15 * scale).clamp(9, 15).toDouble();
      final bodySize = (12 * scale).clamp(8, 12).toDouble();
      final gap = (14 * scale).clamp(4, 14).toDouble();
      final showBody = cons.maxHeight > 130 && cons.maxWidth > 220;

      return Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top color bars (75% of height)
            Expanded(
              flex: 8,
              child: Row(
                children:
                    _bars.map((c) => Expanded(child: Container(color: c))).toList(),
              ),
            ),
            // Middle inverted / mid tones strip
            Expanded(
              flex: 1,
              child: Row(children: [
                Expanded(child: Container(color: const Color(0xFF0000C0))),
                Expanded(child: Container(color: Colors.black)),
                Expanded(child: Container(color: const Color(0xFFC000C0))),
                Expanded(child: Container(color: Colors.black)),
                Expanded(child: Container(color: const Color(0xFF00C0C0))),
                Expanded(child: Container(color: Colors.black)),
                Expanded(child: Container(color: const Color(0xFFC0C0C0))),
              ]),
            ),
            // Bottom black strip with SIN SEÑAL message overlay
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.black,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: signalPadH, vertical: signalPadV),
                        decoration: BoxDecoration(
                          color: Colors.red.shade900,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Colors.red.shade200,
                              width: (2 * scale).clamp(1, 2).toDouble()),
                        ),
                        child: Text(
                          t.noSignal,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: signalSize,
                            fontWeight: FontWeight.w900,
                            letterSpacing: signalSpacing,
                          ),
                        ),
                      ),
                    ),
                    if (showBody && channelName != null && channelName!.isNotEmpty) ...[
                      SizedBox(height: gap),
                      Text(
                        channelName!,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: channelSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                    if (showBody) ...[
                      const SizedBox(height: 4),
                      Text(
                        t.noSignalBody,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white38, fontSize: bodySize),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

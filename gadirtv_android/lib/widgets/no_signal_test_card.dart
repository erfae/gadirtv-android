import 'package:flutter/material.dart';

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
              children: _bars
                  .map((c) => Expanded(child: Container(color: c)))
                  .toList(),
            ),
          ),
          // Middle inverted / mid tones strip (like real test cards)
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
            flex: 3,
            child: Container(
              color: Colors.black,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.red.shade200, width: 2),
                    ),
                    child: const Text(
                      'SIN SEÑAL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  if (channelName != null && channelName!.isNotEmpty)
                    Text(
                      channelName!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  const SizedBox(height: 6),
                  const Text(
                    'La emisión no está disponible en este momento.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

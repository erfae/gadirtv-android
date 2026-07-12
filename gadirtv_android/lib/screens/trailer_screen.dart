import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../theme.dart';
import '../widgets/gtv_focusable.dart';

/// In-app YouTube trailer — embedded player (no external YouTube app).
class TrailerScreen extends StatefulWidget {
  const TrailerScreen({
    super.key,
    required this.videoId,
    this.title = 'Tráiler',
    this.spanish = true,
  });

  final String videoId;
  final String title;
  final bool spanish;

  @override
  State<TrailerScreen> createState() => _TrailerScreenState();
}

class _TrailerScreenState extends State<TrailerScreen> {
  late final WebViewController _controller;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    final lang = widget.spanish ? 'es' : 'en';
    final embed =
        'https://www.youtube.com/embed/${widget.videoId}?autoplay=1&rel=0&modestbranding=1&playsinline=1&hl=$lang&cc_lang=$lang&cc_load_policy=1';
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.black)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            if (mounted) setState(() => _loading = false);
          },
          onWebResourceError: (e) {
            if (!mounted) return;
            setState(() {
              _loading = false;
              _error = e.description;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(embed));
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: [
            if (_error == null) WebViewWidget(controller: _controller),
            if (_loading)
              const Center(child: CircularProgressIndicator(color: GtvTheme.red)),
            if (_error != null)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    'No se pudo cargar el tráiler.\n$_error',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: GtvTheme.textDim),
                  ),
                ),
              ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    GtvFocusable(
                      autofocus: true,
                      onTap: () => Navigator.of(context).pop(),
                      borderRadius: BorderRadius.circular(999),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 28),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

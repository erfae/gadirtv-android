import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

import '../theme.dart';
import '../widgets/gtv_focusable.dart';

/// In-app YouTube trailer — embedded player (fallback when external app unavailable).
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
  WebViewController? _controller;
  final _backFocus = FocusNode(debugLabel: 'trailer-back');
  bool _loading = true;
  String? _error;
  Timer? _timeout;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _timeout = Timer(const Duration(seconds: 18), () {
      if (!mounted || !_loading) return;
      setState(() {
        _loading = false;
        _error = 'Tiempo de espera agotado';
      });
    });
    _initWebView();
  }

  Future<void> _initWebView() async {
    final lang = widget.spanish ? 'es' : 'en';
    final id = widget.videoId.trim();
    final embedUrl =
        'https://www.youtube-nocookie.com/embed/$id?autoplay=1&rel=0&modestbranding=1&playsinline=1&hl=$lang&cc_lang_pref=$lang&enablejsapi=1&origin=https://www.youtube.com';

    try {
      final controller = WebViewController()
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
                _error = e.description.isNotEmpty ? e.description : 'Error ${e.errorCode}';
              });
            },
          ),
        );

      final platform = controller.platform;
      if (platform is AndroidWebViewController) {
        await platform.setMediaPlaybackRequiresUserGesture(false);
        await platform.setOnShowFileSelector((_) async => []);
      }

      final html = '''
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    html, body { background: #000; width: 100%; height: 100%; overflow: hidden; }
    iframe { position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0; }
  </style>
</head>
<body>
  <iframe
    src="$embedUrl"
    title="Tráiler"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    allowfullscreen>
  </iframe>
</body>
</html>
''';

      await controller.loadHtmlString(html, baseUrl: 'https://www.youtube.com');
      if (!mounted) return;
      setState(() => _controller = controller);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _backFocus.requestFocus();
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = e.toString();
      });
    }
  }

  void _close() {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _timeout?.cancel();
    _backFocus.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _close();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: [
            if (_controller != null && _error == null)
              WebViewWidget(controller: _controller!),
            if (_loading)
              const Center(child: CircularProgressIndicator(color: GtvTheme.red)),
            if (_error != null)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.error_outline_rounded, color: GtvTheme.redHi, size: 48),
                      const SizedBox(height: 16),
                      Text(
                        'No se pudo cargar el tráiler.\n$_error',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: GtvTheme.textDim),
                      ),
                      const SizedBox(height: 20),
                      GtvFocusable(
                        autofocus: true,
                        onTap: _close,
                        borderRadius: BorderRadius.circular(999),
                        child: ElevatedButton(
                          onPressed: _close,
                          style: ElevatedButton.styleFrom(backgroundColor: GtvTheme.red),
                          child: const Text('VOLVER'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    GtvFocusable(
                      focusNode: _backFocus,
                      autofocus: true,
                      onTap: _close,
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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'i18n/strings.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profiles_screen.dart';
import 'services/prefs_settings.dart';
import 'services/profile_store.dart';
import 'theme.dart';
import 'utils/tv_utils.dart';
import 'widgets/gtv_tv_shortcuts.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Core plugins (path_provider, sqflite, file_picker…) load only when the
    // home screen needs them — NOT here. Cold start only needs shared_preferences
    // which GadirPluginRegistrant registers natively before Dart main().

    // Show a readable error screen on TV boxes instead of a silent crash.
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      debugPrint('GadirTV FlutterError: ${details.exceptionAsString()}');
    };
    ErrorWidget.builder = (details) => _FatalErrorScreen(
          message: details.exceptionAsString(),
          stack: details.stack,
        );

    // NOTE: flutter_vlc_player (libVLC) initializes lazily when the first
    // VlcPlayerController is created — no manual ensureInitialized() call
    // required. This is the same engine XCIPTV Player uses, verified to run
    // on the Xiaomi Amlogic TV boxes where libmpv (media_kit) crashed.

    // IPTV apps are landscape-first — matches the Windows client and gives
    // TV Box remotes a natural layout. Skipped on Android TV, whose display
    // is hardware-locked to landscape and rejects orientation overrides
    // (calling this throws a PlatformException on some Sony / Xiaomi TVs).
    try {
      await SystemChrome.setPreferredOrientations(const [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } catch (_) {}
    try {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } catch (_) {}

    // Warm TV detection cache so focus-heavy screens can adapt if needed.
    unawaited(TvUtils.isAndroidTv());

    String initialLang = 'es';
    try {
      initialLang = await PrefsSettings().getLanguage();
    } catch (_) {}
    runApp(GadirTvApp(initialLanguage: initialLang));
  }, (error, stack) {
    debugPrint('GadirTV uncaught: $error\n$stack');
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _FatalErrorScreen(message: error.toString(), stack: stack),
    ));
  });
}

/// Full-screen error panel used when a widget fails to build. On Android TV
/// this is often the only way to see what went wrong without adb logcat.
class _FatalErrorScreen extends StatelessWidget {
  const _FatalErrorScreen({required this.message, this.stack});

  final String message;
  final StackTrace? stack;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF1A0000),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'GadirTV — error al iniciar',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: SelectableText(
                    '$message\n\n${stack ?? ''}',
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GadirTvApp extends StatefulWidget {
  const GadirTvApp({super.key, required this.initialLanguage});

  final String initialLanguage;

  @override
  State<GadirTvApp> createState() => _GadirTvAppState();
}

class _GadirTvAppState extends State<GadirTvApp> {
  late final AppI18nController _i18n = AppI18nController(widget.initialLanguage);

  @override
  Widget build(BuildContext context) {
    return AppI18n(
      controller: _i18n,
      child: AnimatedBuilder(
        animation: _i18n,
        builder: (_, __) {
          return Directionality(
            textDirection: _i18n.isRtl ? TextDirection.rtl : TextDirection.ltr,
            child: GtvTvShortcuts(
              child: MaterialApp.router(
                title: 'GadirTV',
                debugShowCheckedModeBanner: false,
                theme: GtvTheme.build(),
                routerConfig: _router,
              ),
            ),
          );
        },
      ),
    );
  }
}

/// Router with a splash-style root that auto-forwards to the last active
/// profile (`/home`) or the "who is watching?" picker (`/profiles`) when
/// no session is remembered.
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (_, __) => const _Boot()),
    GoRoute(path: '/profiles', builder: (_, __) => const ProfilesScreen()),
    GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
    GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
  ],
);

class _Boot extends StatefulWidget {
  const _Boot();

  @override
  State<_Boot> createState() => _BootState();
}

class _BootState extends State<_Boot> {
  String? _error;

  @override
  void initState() {
    super.initState();
    _decide();
  }

  Future<void> _decide() async {
    try {
      final store = ProfileStore();
      final active = await store.getActive();
      final all = await store.loadAll();
      if (!mounted) return;

      if (active != null) {
        context.go('/home');
      } else if (all.isNotEmpty) {
        context.go('/profiles');
      } else {
        context.go('/login');
      }
    } catch (e, st) {
      if (!mounted) return;
      setState(() => _error = '$e\n$st');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return _FatalErrorScreen(message: _error!, stack: null);
    }
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(color: GtvTheme.red, strokeWidth: 2),
        ),
      ),
    );
  }
}

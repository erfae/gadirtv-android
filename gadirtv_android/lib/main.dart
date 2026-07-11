import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:go_router/go_router.dart';

import 'i18n/strings.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profiles_screen.dart';
import 'services/prefs_settings.dart';
import 'services/profile_store.dart';
import 'theme.dart';
import 'utils/tv_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
            child: MaterialApp.router(
              title: 'GadirTV',
              debugShowCheckedModeBanner: false,
              theme: GtvTheme.build(),
              routerConfig: _router,
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
  @override
  void initState() {
    super.initState();
    _decide();
  }

  Future<void> _decide() async {
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
  }

  @override
  Widget build(BuildContext context) {
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

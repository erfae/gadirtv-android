import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:media_kit/media_kit.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profiles_screen.dart';
import 'services/profile_store.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize libmpv-based player once, at startup, so any screen can
  // instantiate Player() without extra setup.
  MediaKit.ensureInitialized();

  // IPTV apps are landscape-first — matches the Windows client and gives
  // TV Box remotes a natural layout.
  await SystemChrome.setPreferredOrientations(const [
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const GadirTvApp());
}

class GadirTvApp extends StatelessWidget {
  const GadirTvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GadirTV',
      debugShowCheckedModeBanner: false,
      theme: GtvTheme.build(),
      routerConfig: _router,
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

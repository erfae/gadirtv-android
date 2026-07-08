import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/profile_store.dart';
import '../theme.dart';
import 'movie_detail_screen.dart';
import 'player_screen.dart';
import 'series_detail_screen.dart';
import 'tabs/home_tab.dart';
import 'tabs/live_tab.dart';
import 'tabs/movies_tab.dart';
import 'tabs/series_tab.dart';

/// Main shell after login — top bar + 4 tabs (Inicio / TV / Películas / Series)
/// with a bottom navigation, matching the IPTV Smarters layout the user
/// requested for the Windows client.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _store = ProfileStore();
  final _api = ApiService();
  Profile? _profile;
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final p = await _store.getActive();
    if (!mounted) return;
    if (p == null) {
      context.go('/');
      return;
    }
    setState(() => _profile = p);
  }

  Future<void> _switchProfile() async {
    await _store.setActive(null);
    if (!mounted) return;
    context.go('/');
  }

  void _openMovie(Movie m) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MovieDetailScreen(profile: _profile!, movie: m)),
    );
  }

  void _openSeries(Series s) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SeriesDetailScreen(profile: _profile!, series: s)),
    );
  }

  void _playChannel(LiveChannel c) {
    final url = _api.streamUrl(_profile!, kind: 'live', streamId: c.streamId, ext: 'ts');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PlayerScreen(
          playable: Playable(
            kind: 'live',
            id: c.streamId.toString(),
            title: c.name,
            url: url,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final p = _profile;
    if (p == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(color: GtvTheme.red)));
    }

    final tabs = <Widget>[
      HomeTab(profile: p, onOpenMovie: _openMovie, onOpenSeries: _openSeries),
      LiveTab(profile: p, onPlay: _playChannel),
      MoviesTab(profile: p, onOpen: _openMovie),
      SeriesTab(profile: p, onOpen: _openSeries),
    ];

    // Wrapping the shell in a FocusTraversalGroup gives predictable
    // left/right/up/down navigation across the top-bar, content and
    // bottom-nav — critical for the Android TV remote experience.
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildTopBar(p),
              Expanded(child: IndexedStack(index: _tab, children: tabs)),
              _buildBottomNav(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(Profile p) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: GtvTheme.bg,
        border: Border(bottom: BorderSide(color: GtvTheme.border)),
      ),
      child: Row(
        children: [
          const Text(
            'GadirTV',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: GtvTheme.red, letterSpacing: 0.5),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: GtvTheme.surface,
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: GtvTheme.border),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person_rounded, size: 14, color: Colors.white),
                const SizedBox(width: 8),
                Text(p.name.isEmpty ? p.username : p.name, style: const TextStyle(color: Colors.white, fontSize: 12)),
                const SizedBox(width: 8),
                InkWell(
                  onTap: _switchProfile,
                  borderRadius: BorderRadius.circular(999),
                  child: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.logout_rounded, size: 14, color: GtvTheme.textDim),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    const items = <_NavItem>[
      _NavItem(icon: Icons.home_rounded, label: 'Inicio'),
      _NavItem(icon: Icons.live_tv_rounded, label: 'TV en Vivo'),
      _NavItem(icon: Icons.movie_rounded, label: 'Películas'),
      _NavItem(icon: Icons.video_library_rounded, label: 'Series'),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: GtvTheme.bg,
        border: Border(top: BorderSide(color: GtvTheme.border)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 0; i < items.length; i++)
            _NavButton(
              item: items[i],
              selected: _tab == i,
              onTap: () => setState(() => _tab = i),
            ),
        ],
      ),
    );
  }
}

class _NavItem {
  const _NavItem({required this.icon, required this.label});
  final IconData icon;
  final String label;
}

class _NavButton extends StatefulWidget {
  const _NavButton({required this.item, required this.selected, required this.onTap});

  final _NavItem item;
  final bool selected;
  final VoidCallback onTap;

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final on = widget.selected;
    return FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
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
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: on ? GtvTheme.red.withOpacity(0.15) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: _focused ? GtvTheme.red : Colors.transparent, width: 2),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.item.icon, color: on ? GtvTheme.red : GtvTheme.textDim, size: 20),
              const SizedBox(width: 8),
              Text(
                widget.item.label,
                style: TextStyle(
                  color: on ? Colors.white : GtvTheme.textDim,
                  fontSize: 13,
                  fontWeight: on ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings.dart';
import '../models/media.dart';
import '../models/playable.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../services/backup_service.dart';
import '../services/m3u_cache.dart';
import '../services/plugins_bootstrap.dart';
import '../services/profile_store.dart';
import '../theme.dart';
import '../utils/xtream_utils.dart';
import '../widgets/gtv_focusable.dart';
import '../widgets/quick_actions_sheet.dart';
import 'movie_detail_screen.dart';
import '../services/playback_launcher.dart';
import 'search_screen.dart';
import 'series_detail_screen.dart';
import 'settings_screen.dart';
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
  final _backup = BackupService();
  Profile? _profile;
  int _tab = 0;
  int _reloadTick = 0;

  @override
  void initState() {
    super.initState();
    _boot();
  }

  KeyEventResult _onTabShortcut(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final n = event.logicalKey;
    if (n == LogicalKeyboardKey.digit1) { setState(() => _tab = 0); return KeyEventResult.handled; }
    if (n == LogicalKeyboardKey.digit2) { setState(() => _tab = 1); return KeyEventResult.handled; }
    if (n == LogicalKeyboardKey.digit3) { setState(() => _tab = 2); return KeyEventResult.handled; }
    if (n == LogicalKeyboardKey.digit4) { setState(() => _tab = 3); return KeyEventResult.handled; }
    return KeyEventResult.ignored;
  }

  Future<void> _boot() async {
    try {
      await PluginsBootstrap.ensureCore();
    } catch (e) {
      debugPrint('GadirTV: core plugins deferred ($e)');
    }
    if (!mounted) return;
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

  /// Direct movie play — used both by the quick-actions sheet and the
  /// hero "VER AHORA" button which skip the detail screen.
  Future<void> _playMovie(Movie m) async {
    Map<String, dynamic> info = const {};
    try {
      info = await _api.vodInfo(_profile!, m.streamId);
    } catch (_) {}
    final md = info['movie_data'] is Map
        ? Map<String, dynamic>.from(info['movie_data'] as Map)
        : <String, dynamic>{};
    final meta = info['info'] is Map
        ? Map<String, dynamic>.from(info['info'] as Map)
        : <String, dynamic>{};
    final ext = pickContainerExt(md, meta, fallback: m.containerExt);
    final sid = movieStreamId(info, m.streamId);
    final url = _api.streamUrl(_profile!, kind: 'movie', streamId: sid, ext: ext);
    if (!mounted) return;
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'movie',
        id: sid.toString(),
        title: m.name,
        url: url,
      ),
    );
  }

  /// Pick the first episode (season 1, ep 1) of a series and play it. This
  /// is the Netflix behaviour when the user hits PLAY on a series poster.
  Future<void> _playFirstEpisode(Series s, Map<String, dynamic> info) async {
    final episodes = info['episodes'];
    if (episodes is! Map || episodes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Esta serie no tiene episodios disponibles')),
      );
      return;
    }
    // Sort seasons numerically to get "season 1" reliably.
    final seasons = episodes.keys.cast<String>().toList()
      ..sort((a, b) => (int.tryParse(a) ?? 0).compareTo(int.tryParse(b) ?? 0));
    final firstSeason = seasons.first;
    final list = episodes[firstSeason];
    if (list is! List || list.isEmpty) return;
    final ep = Map<String, dynamic>.from(list.first as Map);

    final id = episodeStreamId(ep);
    if (id.isEmpty) return;
    final ext = pickContainerExt(ep, null, fallback: 'mp4');
    final epNum = (ep['episode_num'] ?? '1').toString();
    final url = _api.streamUrl(_profile!, kind: 'series', streamId: id, ext: ext);
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'series',
        id: id,
        title: '${s.name} · T$firstSeason E$epNum',
        subtitle: (ep['title'] ?? '').toString(),
        url: url,
      ),
    );
  }

  Future<void> _playChannel(LiveChannel c) async {
    final url = _api.streamUrl(_profile!, kind: 'live', streamId: c.streamId, ext: 'ts');
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'live',
        id: c.streamId.toString(),
        title: c.name,
        url: url,
      ),
      liveProfile: _profile,
      liveStreamId: c.streamId,
    );
  }

  void _openSearch() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => SearchScreen(
          profile: _profile!,
          onChannel: (c) {
            Navigator.of(context).pop();
            _playChannel(c);
          },
          onMovie: (m) {
            Navigator.of(context).pop();
            _openMovie(m);
          },
          onSeries: (s) {
            Navigator.of(context).pop();
            _openSeries(s);
          },
        ),
      ),
    );
  }

  Future<void> _openSettings() async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const SettingsScreen()),
    );
  }

  Future<void> _reloadPlaylist() async {
    final t = AppI18n.of(context);
    setState(() => _reloadTick += 1);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(t.reloading),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Future<void> _confirmExit() async {
    final t = AppI18n.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: GtvTheme.surface,
        title: Text(t.exitConfirmTitle, style: const TextStyle(color: Colors.white)),
        content: Text(t.exitConfirmBody,
            style: const TextStyle(color: GtvTheme.textDim)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(t.cancel, style: const TextStyle(color: Colors.white70)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(backgroundColor: GtvTheme.red),
            child: Text(t.exit, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
    if (ok == true) {
      SystemNavigator.pop(); // gracefully close on Android
    }
  }

  Future<void> _openBackup() async {
    final action = await showModalBottomSheet<String>(
      context: context,
      backgroundColor: GtvTheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Copia de seguridad',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
            const SizedBox(height: 6),
            const Text(
              'Guarda tus perfiles, favoritos y progreso en un archivo, o restáuralos '
              'desde un archivo anterior.',
              style: TextStyle(color: GtvTheme.textDim, fontSize: 13),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pop('export'),
              icon: const Icon(Icons.save_alt_rounded, size: 18),
              label: const Text('CREAR ARCHIVO DE BACKUP'),
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).pop('import'),
              icon: const Icon(Icons.folder_open_rounded, size: 18, color: Colors.white),
              label: const Text('RESTAURAR DESDE ARCHIVO',
                  style: TextStyle(color: Colors.white)),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: GtvTheme.border),
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );

    if (!mounted) return;

    if (action == 'export') {
      try {
        await _backup.shareBackupFile();
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Backup creado — elige dónde guardarlo')),
        );
      } catch (e) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No se pudo crear el backup: $e')),
        );
      }
    } else if (action == 'import') {
      try {
        final ok = await _backup.restoreFromFile();
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(ok
              ? 'Backup restaurado — volviendo al inicio…'
              : 'El archivo no es un backup válido de GadirTV')),
        );
        if (ok) {
          await Future.delayed(const Duration(milliseconds: 600));
          if (!mounted) return;
          // ignore: use_build_context_synchronously
          context.go('/');
        }
      } catch (e) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al restaurar: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = _profile;
    if (p == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(color: GtvTheme.red)));
    }

    // M3U mode uses a completely different data source — no Xtream API,
    // no categories, no EPG. Render a dedicated placeholder screen for now.
    if (p.isM3U) {
      return _buildM3UScreen(p);
    }

    final tabs = <Widget Function()>[
      () => KeyedSubtree(key: ValueKey('home-$_reloadTick'), child: HomeTab(profile: p, onOpenMovie: _openMovie, onOpenSeries: _openSeries, onPlayMovie: _playMovie)),
      () => KeyedSubtree(key: ValueKey('live-$_reloadTick'), child: LiveTab(profile: p, onPlay: _playChannel, active: _tab == 1)),
      () => KeyedSubtree(key: ValueKey('movies-$_reloadTick'), child: MoviesTab(profile: p, onOpen: _openMovie)),
      () => KeyedSubtree(key: ValueKey('series-$_reloadTick'), child: SeriesTab(profile: p, onOpen: _openSeries)),
    ];

    // Build only the active tab — IndexedStack eagerly constructed all four
    // tabs (including LiveTab's VLC imports) even when the user was on Inicio.

    // Wrapping the shell in a FocusTraversalGroup gives predictable
    // left/right/up/down navigation across the top-bar, content and
    // bottom-nav — critical for the Android TV remote experience.
    return Focus(
      onKeyEvent: _onTabShortcut,
      child: FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Scaffold(
        backgroundColor: GtvTheme.bg,
        body: SafeArea(
          child: _tab == 0
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Column(
                      children: [
                        Expanded(child: tabs[_tab]()),
                        _buildBottomNav(),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: _buildNetflixTopBar(p),
                    ),
                  ],
                )
              : Column(
                  children: [
                    _buildTopBar(p),
                    Expanded(child: tabs[_tab]()),
                    _buildBottomNav(),
                  ],
                ),
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
          Image.asset(
            'assets/gadirtv_logo.png',
            height: 42,
            fit: BoxFit.contain,
          ),
          const Spacer(),
          GtvIconButton(icon: Icons.search_rounded, tooltip: 'Buscar', onTap: _openSearch),
          const SizedBox(width: 8),
          GtvIconButton(icon: Icons.refresh_rounded, tooltip: 'Recargar', onTap: _reloadPlaylist),
          const SizedBox(width: 8),
          GtvIconButton(icon: Icons.settings_rounded, tooltip: 'Ajustes', onTap: _openSettings),
          const SizedBox(width: 8),
          GtvIconButton(icon: Icons.power_settings_new_rounded, tooltip: 'Salir', onTap: _confirmExit),
          const SizedBox(width: 12),
          _buildProfileChip(p),
        ],
      ),
    );
  }

  /// Minimal overlay bar on the Netflix-style home tab — logo + profile only.
  Widget _buildNetflixTopBar(Profile p) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black.withOpacity(0.75), Colors.transparent],
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/gadirtv_logo.png',
            height: 34,
            fit: BoxFit.contain,
          ),
          const Spacer(),
          _buildProfileChip(p),
        ],
      ),
    );
  }

  Widget _buildProfileChip(Profile p) {
    return GtvFocusable(
      borderRadius: BorderRadius.circular(999),
      onTap: _switchProfile,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: Colors.white24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person_rounded, size: 14, color: Colors.white),
            const SizedBox(width: 8),
            Text(p.name.isEmpty ? p.username : p.name, style: const TextStyle(color: Colors.white, fontSize: 12)),
            const SizedBox(width: 8),
            const Icon(Icons.logout_rounded, size: 14, color: GtvTheme.textDim),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    final t = AppI18n.of(context);
    final items = <_NavItem>[
      _NavItem(icon: Icons.home_rounded, label: t.tabHome),
      _NavItem(icon: Icons.live_tv_rounded, label: t.tabLive),
      _NavItem(icon: Icons.movie_rounded, label: t.tabMovies),
      _NavItem(icon: Icons.video_library_rounded, label: t.tabSeries),
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

  // ═══════════════════════════════════════════════════════════════
  // M3U mode — dedicated screen (flat channel list, no categories)
  // ═══════════════════════════════════════════════════════════════
  Widget _buildM3UScreen(Profile p) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(p),
            Expanded(child: _M3UChannelList(profile: p, onPlay: _playM3UChannel)),
          ],
        ),
      ),
    );
  }

  Future<void> _playM3UChannel(Map<String, dynamic> ch) async {
    final url = ch['url'] as String? ?? '';
    if (url.isEmpty) return;
    final name = ch['name'] as String? ?? 'Canal';
    await PlaybackLauncher.launch(
      context,
      playable: Playable(
        kind: 'live',
        id: url.hashCode.toString(),
        title: name,
        url: url,
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
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: on ? GtvTheme.red.withOpacity(0.15) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: _focused ? GtvTheme.red : Colors.transparent, width: 2),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.item.icon, color: on ? GtvTheme.red : GtvTheme.textDim, size: 28),
              const SizedBox(width: 10),
              Text(
                widget.item.label,
                style: TextStyle(
                  color: on ? Colors.white : GtvTheme.textDim,
                  fontSize: 15,
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

/// Flat list of channels from a parsed M3U playlist, grouped by `group-title`.
class _M3UChannelList extends StatefulWidget {
  const _M3UChannelList({required this.profile, required this.onPlay});

  final Profile profile;
  final Future<void> Function(Map<String, dynamic>) onPlay;

  @override
  State<_M3UChannelList> createState() => _M3UChannelListState();
}

class _M3UChannelListState extends State<_M3UChannelList> {
  List<Map<String, dynamic>> _all = [];
  Map<String, List<Map<String, dynamic>>> _byGroup = {};
  String _query = '';
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final list = await M3UCache.load(widget.profile);
    if (!mounted) return;
    final grouped = <String, List<Map<String, dynamic>>>{};
    for (final ch in list) {
      final g = (ch['group'] as String?)?.trim().isNotEmpty == true
          ? ch['group'] as String
          : 'General';
      grouped.putIfAbsent(g, () => []).add(ch);
    }
    setState(() {
      _all = list;
      _byGroup = grouped;
      _loading = false;
    });
  }

  List<Map<String, dynamic>> get _filtered {
    if (_query.isEmpty) return _all;
    final q = _query.toLowerCase();
    return _all
        .where((ch) => (ch['name'] as String? ?? '').toLowerCase().contains(q))
        .toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_all.isEmpty) {
      return const Center(
        child: Text(
          'No hay canales en la playlist',
          style: TextStyle(color: GtvTheme.textDim),
        ),
      );
    }

    final filtered = _filtered;

    return Column(
      children: [
        // Search bar + counter
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (v) => setState(() => _query = v.trim()),
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Buscar canal…',
                    prefixIcon: const Icon(Icons.search_rounded, color: GtvTheme.textDim, size: 20),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    filled: true,
                    fillColor: GtvTheme.surface,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(999),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: GtvTheme.red.withOpacity(0.12),
                  border: Border.all(color: GtvTheme.red.withOpacity(0.35)),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  '${filtered.length} / ${_all.length}',
                  style: const TextStyle(color: GtvTheme.redHi, fontSize: 11, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _query.isNotEmpty
              ? _flatList(filtered)
              : _groupedList(),
        ),
      ],
    );
  }

  Widget _groupedList() {
    final entries = _byGroup.entries.toList()
      ..sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: entries.length,
      itemBuilder: (_, i) {
        final group = entries[i];
        return ExpansionTile(
          title: Text(
            group.key,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '${group.value.length} canales',
            style: const TextStyle(color: GtvTheme.textDim, fontSize: 12),
          ),
          collapsedIconColor: Colors.white54,
          iconColor: Colors.white70,
          children: [
            for (final ch in group.value) _channelRow(ch),
          ],
        );
      },
    );
  }

  Widget _flatList(List<Map<String, dynamic>> items) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(color: GtvTheme.border, height: 1),
      itemBuilder: (_, i) => _channelRow(items[i]),
    );
  }

  Widget _channelRow(Map<String, dynamic> ch) {
    final logo = ch['tvgLogo'] as String? ?? '';
    return ListTile(
      leading: SizedBox(
        width: 44,
        height: 44,
        child: logo.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  logo,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const _ChannelFallback(),
                ),
              )
            : const _ChannelFallback(),
      ),
      title: Text(
        ch['name'] as String? ?? 'Canal',
        style: const TextStyle(color: Colors.white, fontSize: 14),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.play_arrow_rounded, color: GtvTheme.red),
      onTap: () => widget.onPlay(ch),
    );
  }
}

class _ChannelFallback extends StatelessWidget {
  const _ChannelFallback();
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: GtvTheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.live_tv_rounded, color: GtvTheme.textDim, size: 22),
      );
}


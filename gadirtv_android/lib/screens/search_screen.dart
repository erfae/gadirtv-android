import 'dart:async';

import 'package:flutter/material.dart';

import '../models/media.dart';
import '../models/profile.dart';
import '../services/playlist_store.dart';
import '../theme.dart';
import '../widgets/gtv_focusable.dart';
import '../widgets/gtv_tv_text_field.dart';
import '../widgets/poster_card.dart';
import '../widgets/poster_rail_focus.dart';

/// Global search — filters channels, movies and series from preloaded catalog.
class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
    required this.profile,
    required this.onChannel,
    required this.onMovie,
    required this.onSeries,
  });

  final Profile profile;
  final ValueChanged<LiveChannel> onChannel;
  final ValueChanged<Movie> onMovie;
  final ValueChanged<Series> onSeries;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  final _backFocus = FocusNode(debugLabel: 'search-back');
  final _searchBrowse = FocusNode(debugLabel: 'search-field');
  final _scrollController = ScrollController();
  final _channelFocus = PosterRailFocus();
  final _movieFocus = PosterRailFocus();
  final _seriesFocus = PosterRailFocus();

  List<LiveChannel> _channels = const [];
  List<Movie> _movies = const [];
  List<Series> _series = const [];

  List<LiveChannel> _channelResults = const [];
  List<Movie> _movieResults = const [];
  List<Series> _seriesResults = const [];

  bool _loading = true;
  String? _bootstrapError;
  String _query = '';
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onControllerChanged);
    _bootstrap();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _searchBrowse.requestFocus();
    });
  }

  void _onControllerChanged() {
    if (mounted) setState(() {});
    _onQueryChanged(_controller.text);
  }

  Future<void> _bootstrap() async {
    final store = PlaylistStore.instance;
    if (!store.isLoadedFor(widget.profile)) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _bootstrapError = 'Contenido no cargado. Reinicia la app.';
      });
      return;
    }

    setState(() {
      _channels = store.liveStreams;
      _movies = store.vodStreams;
      _series = store.seriesList;
      _loading = false;
    });
  }

  void _onQueryChanged(String q) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 250), () {
      if (!mounted) return;
      final needle = q.trim().toLowerCase();
      setState(() {
        _query = needle;
        if (needle.isEmpty) {
          _channelResults = const [];
          _movieResults = const [];
          _seriesResults = const [];
          _channelFocus.rebuild(0);
          _movieFocus.rebuild(0);
          _seriesFocus.rebuild(0);
          return;
        }
        _channelResults =
            _channels.where((c) => c.name.toLowerCase().contains(needle)).take(40).toList();
        _movieResults =
            _movies.where((m) => m.name.toLowerCase().contains(needle)).take(40).toList();
        _seriesResults =
            _series.where((s) => s.name.toLowerCase().contains(needle)).take(40).toList();
      });
      _channelFocus.rebuild(_channelResults.length);
      _movieFocus.rebuild(_movieResults.length);
      _seriesFocus.rebuild(_seriesResults.length);
      if (_channelResults.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _channelFocus.focus(0);
        });
      } else if (_movieResults.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _movieFocus.focus(0);
        });
      } else if (_seriesResults.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _seriesFocus.focus(0);
        });
      }
    });
  }

  void _focusFirstResult() {
    if (_channelResults.isNotEmpty) {
      _channelFocus.focus(0);
    } else if (_movieResults.isNotEmpty) {
      _movieFocus.focus(0);
    } else if (_seriesResults.isNotEmpty) {
      _seriesFocus.focus(0);
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.removeListener(_onControllerChanged);
    _controller.dispose();
    _backFocus.dispose();
    _searchBrowse.dispose();
    _scrollController.dispose();
    _channelFocus.dispose();
    _movieFocus.dispose();
    _seriesFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildBar(),
            const SizedBox(height: 8),
            Expanded(
              child: _buildBody(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: Row(
        children: [
          GtvFocusable(
            focusNode: _backFocus,
            borderRadius: BorderRadius.circular(999),
            onTap: () => Navigator.of(context).pop(),
            onMoveRight: () => _searchBrowse.requestFocus(),
            onMoveDown: _query.isNotEmpty ? _focusFirstResult : null,
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.arrow_back_rounded, color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GtvTvTextField(
              controller: _controller,
              browseFocusNode: _searchBrowse,
              scrollController: _scrollController,
              textInputAction: TextInputAction.search,
              onSubmitted: _onQueryChanged,
              onMoveLeft: () => _backFocus.requestFocus(),
              onMoveDown: _query.isNotEmpty ? _focusFirstResult : null,
              decoration: const InputDecoration(
                hintText: 'Buscar canales, películas o series…',
                prefixIcon: Icon(Icons.search_rounded, color: GtvTheme.textDim),
              ),
            ),
          ),
          if (_controller.text.isNotEmpty)
            GtvFocusable(
              borderRadius: BorderRadius.circular(999),
              onTap: () {
                _controller.clear();
                _onQueryChanged('');
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.clear_rounded, color: GtvTheme.textDim),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_bootstrapError != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(_bootstrapError!, textAlign: TextAlign.center, style: const TextStyle(color: GtvTheme.redHi)),
        ),
      );
    }
    if (_query.isEmpty) {
      return const Center(
        child: Text(
          'Selecciona el campo de búsqueda y pulsa OK para escribir',
          textAlign: TextAlign.center,
          style: TextStyle(color: GtvTheme.textDim),
        ),
      );
    }
    final empty = _channelResults.isEmpty && _movieResults.isEmpty && _seriesResults.isEmpty;
    if (empty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(
            'No hay resultados para "$_query"',
            textAlign: TextAlign.center,
            style: const TextStyle(color: GtvTheme.textDim),
          ),
        ),
      );
    }

    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.only(bottom: 32),
      children: [
        if (_channelResults.isNotEmpty)
          _buildSection(
            title: 'Canales (${_channelResults.length})',
            focus: _channelFocus,
            count: _channelResults.length,
            aspectRatio: 16 / 9,
            tileHeight: 140,
            tileWidth: 220,
            onMoveUp: () => _searchBrowse.requestFocus(),
            onMoveDown: _movieResults.isNotEmpty
                ? () => _movieFocus.focus(0)
                : (_seriesResults.isNotEmpty ? () => _seriesFocus.focus(0) : null),
            builder: (i) {
              final c = _channelResults[i];
              return PosterCard(
                focusNode: _channelFocus.nodes[i],
                title: c.name,
                imageUrl: c.icon,
                aspectRatio: 16 / 9,
                showTitle: false,
                onTap: () => widget.onChannel(c),
                onMoveLeft: () => _channelFocus.moveHorizontal(i, -1),
                onMoveRight: () => _channelFocus.moveHorizontal(i, 1),
                onMoveUp: i == 0 ? () => _searchBrowse.requestFocus() : () => _channelFocus.focus(i - 1),
                onMoveDown: _movieResults.isNotEmpty
                    ? () => _movieFocus.focus(0)
                    : (_seriesResults.isNotEmpty ? () => _seriesFocus.focus(0) : null),
              );
            },
          ),
        if (_movieResults.isNotEmpty)
          _buildSection(
            title: 'Películas (${_movieResults.length})',
            focus: _movieFocus,
            count: _movieResults.length,
            aspectRatio: 2 / 3,
            tileHeight: 220,
            tileWidth: 130,
            onMoveUp: _channelResults.isNotEmpty
                ? () => _channelFocus.focus(0)
                : () => _searchBrowse.requestFocus(),
            onMoveDown: _seriesResults.isNotEmpty ? () => _seriesFocus.focus(0) : null,
            builder: (i) {
              final m = _movieResults[i];
              return PosterCard(
                focusNode: _movieFocus.nodes[i],
                title: m.name,
                imageUrl: m.icon,
                rating: m.rating,
                showTitle: false,
                onTap: () => widget.onMovie(m),
                onMoveLeft: () => _movieFocus.moveHorizontal(i, -1),
                onMoveRight: () => _movieFocus.moveHorizontal(i, 1),
                onMoveUp: i == 0
                    ? (_channelResults.isNotEmpty
                        ? () => _channelFocus.focus(0)
                        : () => _searchBrowse.requestFocus())
                    : () => _movieFocus.focus(i - 1),
                onMoveDown: _seriesResults.isNotEmpty ? () => _seriesFocus.focus(0) : null,
              );
            },
          ),
        if (_seriesResults.isNotEmpty)
          _buildSection(
            title: 'Series (${_seriesResults.length})',
            focus: _seriesFocus,
            count: _seriesResults.length,
            aspectRatio: 2 / 3,
            tileHeight: 220,
            tileWidth: 130,
            onMoveUp: _movieResults.isNotEmpty
                ? () => _movieFocus.focus(0)
                : (_channelResults.isNotEmpty
                    ? () => _channelFocus.focus(0)
                    : () => _searchBrowse.requestFocus()),
            builder: (i) {
              final s = _seriesResults[i];
              return PosterCard(
                focusNode: _seriesFocus.nodes[i],
                title: s.name,
                imageUrl: s.cover,
                rating: s.rating,
                showTitle: false,
                onTap: () => widget.onSeries(s),
                onMoveLeft: () => _seriesFocus.moveHorizontal(i, -1),
                onMoveRight: () => _seriesFocus.moveHorizontal(i, 1),
                onMoveUp: i == 0
                    ? (_movieResults.isNotEmpty
                        ? () => _movieFocus.focus(0)
                        : (_channelResults.isNotEmpty
                            ? () => _channelFocus.focus(0)
                            : () => _searchBrowse.requestFocus()))
                    : () => _seriesFocus.focus(i - 1),
              );
            },
          ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required PosterRailFocus focus,
    required int count,
    required double aspectRatio,
    required double tileHeight,
    required double tileWidth,
    required Widget Function(int) builder,
    VoidCallback? onMoveUp,
    VoidCallback? onMoveDown,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: tileHeight,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: count,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, i) => SizedBox(width: tileWidth, child: builder(i)),
            ),
          ),
        ],
      ),
    );
  }
}

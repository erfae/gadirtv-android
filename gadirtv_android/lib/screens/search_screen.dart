import 'dart:async';

import 'package:flutter/material.dart';

import '../models/media.dart';
import '../models/profile.dart';
import '../services/api_service.dart';
import '../theme.dart';
import '../widgets/gtv_focusable.dart';
import '../widgets/gtv_tv_text_field.dart';
import '../widgets/poster_card.dart';

/// Global search — filters channels, movies and series by name substring.
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
  final _api = ApiService();
  final _controller = TextEditingController();
  final _searchBrowse = FocusNode();
  final _scrollController = ScrollController();

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
  }

  void _onControllerChanged() {
    if (mounted) setState(() {});
    _onQueryChanged(_controller.text);
  }

  Future<void> _bootstrap() async {
    try {
      final results = await Future.wait([
        _api.liveStreams(widget.profile),
        _api.vodStreams(widget.profile),
        _api.seriesList(widget.profile),
      ]);
      if (!mounted) return;
      setState(() {
        _channels = results[0].map(LiveChannel.fromJson).toList();
        _movies = results[1].map(Movie.fromJson).toList();
        _series = results[2].map(Series.fromJson).toList();
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _bootstrapError = 'No se pudo cargar el catálogo: $e';
      });
    }
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
          return;
        }
        _channelResults = _channels.where((c) => c.name.toLowerCase().contains(needle)).take(40).toList();
        _movieResults = _movies.where((m) => m.name.toLowerCase().contains(needle)).take(40).toList();
        _seriesResults = _series.where((s) => s.name.toLowerCase().contains(needle)).take(40).toList();
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.removeListener(_onControllerChanged);
    _controller.dispose();
    _searchBrowse.dispose();
    _scrollController.dispose();
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
            borderRadius: BorderRadius.circular(999),
            onTap: () => Navigator.of(context).maybePop(),
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
      padding: const EdgeInsets.only(bottom: 32),
      children: [
        if (_channelResults.isNotEmpty)
          _buildSection(
            title: 'Canales (${_channelResults.length})',
            count: _channelResults.length,
            aspectRatio: 16 / 9,
            builder: (i) {
              final c = _channelResults[i];
              return PosterCard(
                title: c.name,
                imageUrl: c.icon,
                aspectRatio: 16 / 9,
                onTap: () => widget.onChannel(c),
              );
            },
          ),
        if (_movieResults.isNotEmpty)
          _buildSection(
            title: 'Películas (${_movieResults.length})',
            count: _movieResults.length,
            aspectRatio: 2 / 3,
            builder: (i) {
              final m = _movieResults[i];
              return PosterCard(
                title: m.name,
                imageUrl: m.icon,
                rating: m.rating,
                onTap: () => widget.onMovie(m),
              );
            },
          ),
        if (_seriesResults.isNotEmpty)
          _buildSection(
            title: 'Series (${_seriesResults.length})',
            count: _seriesResults.length,
            aspectRatio: 2 / 3,
            builder: (i) {
              final s = _seriesResults[i];
              return PosterCard(
                title: s.name,
                imageUrl: s.cover,
                rating: s.rating,
                onTap: () => widget.onSeries(s),
              );
            },
          ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required int count,
    required double aspectRatio,
    required Widget Function(int) builder,
  }) {
    final tileHeight = aspectRatio == 16 / 9 ? 140.0 : 220.0;
    final tileWidth = aspectRatio == 16 / 9 ? 220.0 : 130.0;
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

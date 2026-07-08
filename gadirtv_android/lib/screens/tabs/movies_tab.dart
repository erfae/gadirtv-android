import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
import '../../widgets/poster_card.dart';

/// Movies (VOD) tab — categories on top, portrait poster grid below.
class MoviesTab extends StatefulWidget {
  const MoviesTab({
    super.key,
    required this.profile,
    required this.onOpen,
  });

  final Profile profile;
  final ValueChanged<Movie> onOpen;

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab> {
  final _api = ApiService();

  List<Category> _categories = const [];
  List<Movie> _movies = const [];
  String _selected = '__all__';
  bool _loadingCats = true;
  bool _loading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  Future<void> _loadCategories() async {
    try {
      final raw = await _api.vodCategories(widget.profile);
      if (!mounted) return;
      setState(() {
        _categories = raw.map(Category.fromJson).toList();
        _loadingCats = false;
      });
      await _load('__all__');
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loadingCats = false;
        _error = 'No se pudieron cargar las categorías';
      });
    }
  }

  Future<void> _load(String id) async {
    setState(() {
      _selected = id;
      _loading = true;
      _error = null;
    });
    try {
      final raw = await _api.vodStreams(
        widget.profile,
        categoryId: id == '__all__' ? null : id,
      );
      if (!mounted) return;
      final list = raw.map(Movie.fromJson).toList()
        ..sort((a, b) => b.addedTs.compareTo(a.addedTs));
      setState(() {
        _movies = list;
        _loading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = 'No se pudieron cargar las películas';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingCats) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }

    final chips = <(String, String)>[
      ('__all__', 'Todas'),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return Column(
      children: [
        const SizedBox(height: 12),
        CategoryStrip(labels: chips, selectedId: _selected, onSelected: _load),
        const SizedBox(height: 16),
        Expanded(child: _buildGrid()),
      ],
    );
  }

  Widget _buildGrid() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_movies.isEmpty) {
      return const Center(
        child: Text('No hay películas en esta categoría', style: TextStyle(color: GtvTheme.textDim)),
      );
    }
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 32),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 140,
        mainAxisSpacing: 16,
        crossAxisSpacing: 14,
        childAspectRatio: 2 / 3.4,
      ),
      itemCount: _movies.length,
      itemBuilder: (_, i) {
        final m = _movies[i];
        return PosterCard(
          title: m.name,
          imageUrl: m.icon,
          rating: m.rating,
          onTap: () => widget.onOpen(m),
          autofocus: i == 0,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
import '../../widgets/poster_card.dart';

/// Series tab — categories on top, portrait cover grid below.
class SeriesTab extends StatefulWidget {
  const SeriesTab({
    super.key,
    required this.profile,
    required this.onOpen,
  });

  final Profile profile;
  final ValueChanged<Series> onOpen;

  @override
  State<SeriesTab> createState() => _SeriesTabState();
}

class _SeriesTabState extends State<SeriesTab> {
  final _api = ApiService();

  List<Category> _categories = const [];
  List<Series> _series = const [];
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
      final raw = await _api.seriesCategories(widget.profile);
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
      final raw = await _api.seriesList(
        widget.profile,
        categoryId: id == '__all__' ? null : id,
      );
      if (!mounted) return;
      final list = raw.map(Series.fromJson).toList()
        ..sort((a, b) => b.lastModifiedTs.compareTo(a.lastModifiedTs));
      setState(() {
        _series = list;
        _loading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = 'No se pudieron cargar las series';
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
    if (_series.isEmpty) {
      return const Center(
        child: Text('No hay series en esta categoría', style: TextStyle(color: GtvTheme.textDim)),
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
      itemCount: _series.length,
      itemBuilder: (_, i) {
        final s = _series[i];
        return PosterCard(
          title: s.name,
          imageUrl: s.cover,
          rating: s.rating,
          onTap: () => widget.onOpen(s),
          autofocus: i == 0,
        );
      },
    );
  }
}

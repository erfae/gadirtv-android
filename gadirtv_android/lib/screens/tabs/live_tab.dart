import 'package:flutter/material.dart';

import '../../models/media.dart';
import '../../models/profile.dart';
import '../../services/api_service.dart';
import '../../theme.dart';
import '../../widgets/category_strip.dart';
import '../../widgets/poster_card.dart';

/// Live TV tab — category chips on top, grid of channel logos below.
///
/// Uses 16/9 tiles because channel logos are typically landscape.
class LiveTab extends StatefulWidget {
  const LiveTab({
    super.key,
    required this.profile,
    required this.onPlay,
  });

  final Profile profile;
  final ValueChanged<LiveChannel> onPlay;

  @override
  State<LiveTab> createState() => _LiveTabState();
}

class _LiveTabState extends State<LiveTab> {
  final _api = ApiService();

  List<Category> _categories = const [];
  List<LiveChannel> _channels = const [];
  String _selected = '__all__';
  bool _loadingCats = true;
  bool _loadingChans = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  Future<void> _loadCategories() async {
    try {
      final raw = await _api.liveCategories(widget.profile);
      if (!mounted) return;
      setState(() {
        _categories = raw.map(Category.fromJson).toList();
        _loadingCats = false;
      });
      await _loadChannels('__all__');
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loadingCats = false;
        _error = 'No se pudieron cargar las categorías';
      });
    }
  }

  Future<void> _loadChannels(String id) async {
    setState(() {
      _selected = id;
      _loadingChans = true;
      _error = null;
    });

    try {
      final raw = await _api.liveStreams(
        widget.profile,
        categoryId: id == '__all__' ? null : id,
      );
      if (!mounted) return;
      setState(() {
        _channels = raw.map(LiveChannel.fromJson).toList();
        _loadingChans = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loadingChans = false;
        _error = 'No se pudieron cargar los canales';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingCats) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }

    final chips = <(String, String)>[
      ('__all__', 'Todos'),
      ..._categories.map((c) => (c.id, c.name)),
    ];

    return Column(
      children: [
        const SizedBox(height: 12),
        CategoryStrip(
          labels: chips,
          selectedId: _selected,
          onSelected: _loadChannels,
        ),
        const SizedBox(height: 16),
        Expanded(child: _buildGrid()),
      ],
    );
  }

  Widget _buildGrid() {
    if (_loadingChans) {
      return const Center(child: CircularProgressIndicator(color: GtvTheme.red));
    }
    if (_error != null) {
      return Center(child: Text(_error!, style: const TextStyle(color: GtvTheme.textDim)));
    }
    if (_channels.isEmpty) {
      return const Center(
        child: Text('No hay canales en esta categoría', style: TextStyle(color: GtvTheme.textDim)),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 32),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 16 / 11,
      ),
      itemCount: _channels.length,
      itemBuilder: (_, i) {
        final c = _channels[i];
        return PosterCard(
          title: c.name,
          imageUrl: c.icon,
          aspectRatio: 16 / 9,
          onTap: () => widget.onPlay(c),
          autofocus: i == 0,
        );
      },
    );
  }
}

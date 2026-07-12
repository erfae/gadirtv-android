/// Normalizes user-typed Xtream server URLs.
///
/// Handles common TV-keyboard typos such as `http//host` (missing colon) and
/// double schemes like `http://http//host` that break DNS (`Failed host lookup: 'http'`).
String normalizeXtreamHost(String raw) {
  var h = raw.trim();
  if (h.isEmpty) return h;

  while (h.endsWith('/')) {
    h = h.substring(0, h.length - 1);
  }

  // Missing colon after scheme — very common on TV soft keyboards.
  if (h.toLowerCase().startsWith('https//')) {
    h = 'https://${h.substring(7)}';
  } else if (h.toLowerCase().startsWith('http//')) {
    h = 'http://${h.substring(6)}';
  }

  final lower = h.toLowerCase();
  if (lower.startsWith('http://http://')) {
    h = h.substring(7);
  } else if (lower.startsWith('http://https://')) {
    h = 'https://${h.substring(12)}';
  } else if (lower.startsWith('https://http://')) {
    h = 'http://${h.substring(12)}';
  } else if (lower.startsWith('http://http//')) {
    h = 'http://${h.substring(12)}';
  } else if (lower.startsWith('http://https//')) {
    h = 'https://${h.substring(13)}';
  }

  if (!h.startsWith('http://') && !h.startsWith('https://')) {
    h = 'http://$h';
  }

  // Panels on plain HTTP often use port 80 — https://host:80 fails on many boxes.
  final uri = Uri.tryParse(h);
  if (uri != null && h.startsWith('https://') && uri.hasPort && uri.port == 80) {
    h = h.replaceFirst('https://', 'http://');
  }

  return h;
}

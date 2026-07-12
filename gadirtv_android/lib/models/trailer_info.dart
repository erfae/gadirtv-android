/// YouTube / trailer URLs from Xtream metadata (original + Spanish when available).
class TrailerInfo {
  const TrailerInfo({this.originalUrl, this.spanishUrl});

  final String? originalUrl;
  final String? spanishUrl;

  bool get hasAny =>
      (originalUrl != null && originalUrl!.isNotEmpty) ||
      (spanishUrl != null && spanishUrl!.isNotEmpty);

  /// True when the panel ships two distinct trailer IDs/URLs.
  bool get hasLanguageChoice {
    if (originalUrl == null || spanishUrl == null) return false;
    return originalUrl!.trim() != spanishUrl!.trim();
  }

  String? urlFor({required bool spanish}) {
    if (spanish) return spanishUrl ?? originalUrl;
    return originalUrl ?? spanishUrl;
  }
}

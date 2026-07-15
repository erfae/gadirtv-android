package com.gadir.tv.util

data class TrailerMatch(
    val url: String,
    val title: String,
)

object TrailerAvailability {
    fun resolveLocal(title: String, serverUrl: String = ""): TrailerMatch? {
        if (serverUrl.isNotBlank()) {
            MetaExtractor.normalizeTrailerUrl(serverUrl)?.let {
                return TrailerMatch(it, title)
            }
        }
        if (title.isNotBlank()) {
            TrailerCatalog.find(title)?.let { catalog ->
                MetaExtractor.normalizeTrailerUrl(catalog)?.let {
                    return TrailerMatch(it, title)
                }
            }
        }
        return null
    }

    fun resolve(title: String, serverUrl: String = ""): TrailerMatch? {
        resolveLocal(title, serverUrl)?.let { return it }
        if (title.isBlank()) return null
        val id = TrailerSearch.findYoutubeId(title) ?: return null
        return TrailerMatch("https://www.youtube.com/watch?v=$id", title)
    }

    fun hasTrailer(title: String, serverUrl: String = ""): Boolean =
        resolve(title, serverUrl) != null
}

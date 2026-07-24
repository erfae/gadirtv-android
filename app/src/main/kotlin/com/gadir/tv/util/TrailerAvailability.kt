package com.gadir.tv.util

import com.gadir.tv.data.TmdbApi

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
        val sources = TrailerResolver.resolveAll(serverUrl, title)
        TrailerResolver.firstPlayableUrl(sources)?.let { return TrailerMatch(it, title) }
        return null
    }

    fun resolve(title: String, serverUrl: String = "", isSeries: Boolean = false, releaseDate: String = ""): TrailerMatch? {
        resolveLocal(title, serverUrl)?.let { return it }
        if (title.isBlank() || !TmdbApi.isConfigured()) return null
        val tmdbUrl = TmdbApi.fetchTrailerUrl(
            title = title,
            releaseDate = releaseDate,
            isSeries = isSeries,
        )
        if (tmdbUrl.isNullOrBlank()) return null
        return TrailerMatch(tmdbUrl, title)
    }

    fun hasTrailer(
        title: String,
        serverUrl: String = "",
        isSeries: Boolean = false,
        releaseDate: String = "",
    ): Boolean = resolve(title, serverUrl, isSeries, releaseDate) != null
}

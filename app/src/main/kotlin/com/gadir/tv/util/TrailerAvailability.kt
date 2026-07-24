package com.gadir.tv.util

import com.gadir.tv.data.TmdbApi

data class TrailerMatch(
    val url: String,
    val title: String,
)

object TrailerAvailability {
    fun resolveLocal(title: String, serverUrl: String = ""): TrailerMatch? {
        TrailerResolver.firstPlayableUrl(TrailerResolver.resolveAll(serverUrl, title))?.let {
            return TrailerMatch(it, title)
        }
        return null
    }

    fun resolve(
        title: String,
        serverUrl: String = "",
        isSeries: Boolean = false,
        releaseDate: String = "",
    ): TrailerMatch? {
        resolveLocal(title, serverUrl)?.let { return it }
        if (title.isBlank()) return null
        if (TmdbApi.isConfigured()) {
            TmdbApi.fetchTrailerUrl(title, releaseDate, isSeries)?.let {
                return TrailerMatch(it, title)
            }
        }
        TrailerSearch.findFallbackSource(title)?.let {
            return TrailerMatch(
                url = "https://www.dailymotion.com/video/${(it as TrailerSource.Dailymotion).videoId}",
                title = title,
            )
        }
        return null
    }

    fun hasTrailer(
        title: String,
        serverUrl: String = "",
        isSeries: Boolean = false,
        releaseDate: String = "",
    ): Boolean = resolve(title, serverUrl, isSeries, releaseDate) != null
}

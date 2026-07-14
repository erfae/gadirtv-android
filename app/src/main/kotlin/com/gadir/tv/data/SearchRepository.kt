package com.gadir.tv.data

import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie

object SearchRepository {
    data class Results(
        val channels: List<LiveChannel> = emptyList(),
        val movies: List<VodMovie> = emptyList(),
        val series: List<SeriesItem> = emptyList(),
    )

    private var moviesIndex: List<VodMovie> = emptyList()
    private var seriesIndex: List<SeriesItem> = emptyList()
    private var loaded = false

    suspend fun ensureIndex(api: XtreamApi, profile: Profile) {
        if (loaded) return
        val cachedMovies = PlaylistRepository.allCachedVod()
        val cachedSeries = PlaylistRepository.allCachedSeries()
        moviesIndex = if (cachedMovies.isNotEmpty()) {
            cachedMovies
        } else {
            api.vodStreams(profile, null)
        }
        seriesIndex = if (cachedSeries.isNotEmpty()) {
            cachedSeries
        } else {
            api.seriesList(profile, null)
        }
        loaded = true
    }

    fun invalidate() {
        loaded = false
        moviesIndex = emptyList()
        seriesIndex = emptyList()
    }

    fun search(query: String): Results {
        val needle = query.trim().lowercase()
        if (needle.isEmpty()) return Results()

        val channels = PlaylistRepository.channelsFor(null)
            .filter { it.name.lowercase().contains(needle) }
            .take(40)

        val movies = moviesIndex
            .filter { it.name.lowercase().contains(needle) }
            .take(40)

        val series = seriesIndex
            .filter { it.name.lowercase().contains(needle) }
            .take(40)

        return Results(channels = channels, movies = movies, series = series)
    }
}

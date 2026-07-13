package com.gadir.tv.data

import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie

object HomeLoader {
    fun recentMoviesFromCache(): List<VodMovie> {
        val cached = PlaylistRepository.homeRecentMovies
        if (cached.isNotEmpty()) return cached
        return PlaylistRepository.allCachedVod()
            .sortedByDescending { it.added }
            .take(24)
    }

    fun recentSeriesFromCache(): List<SeriesItem> {
        val cached = PlaylistRepository.homeRecentSeries
        if (cached.isNotEmpty()) return cached
        return PlaylistRepository.allCachedSeries()
            .sortedByDescending { it.added }
            .take(24)
    }

    suspend fun loadRecentMovies(api: XtreamApi, profile: Profile): List<VodMovie> =
        loadRecent(
            fetchCategories = { api.vodCategories(profile) },
            fetchStreams = { categoryId -> api.vodStreams(profile, categoryId) },
        ) { it.added }

    suspend fun loadRecentSeries(api: XtreamApi, profile: Profile): List<SeriesItem> =
        loadRecent(
            fetchCategories = { api.seriesCategories(profile) },
            fetchStreams = { categoryId -> api.seriesList(profile, categoryId) },
        ) { it.added }

    private suspend fun <T> loadRecent(
        fetchCategories: suspend () -> List<com.gadir.tv.model.Category>,
        fetchStreams: suspend (String?) -> List<T>,
        addedAt: (T) -> Long,
    ): List<T> {
        val categories = fetchCategories()
        val items = if (categories.isNotEmpty()) {
            categories.take(4).flatMap { category ->
                runCatching { fetchStreams(category.id) }.getOrDefault(emptyList())
            }
        } else {
            emptyList()
        }
        val merged = if (items.isNotEmpty()) {
            items
        } else {
            runCatching { fetchStreams(null) }.getOrDefault(emptyList())
        }
        return merged.sortedByDescending(addedAt).take(24)
    }
}

package com.gadir.tv.data

import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie

object HomeLoader {
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

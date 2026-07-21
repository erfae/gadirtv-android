package com.gadir.tv.data

import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.text.Normalizer

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
        withContext(Dispatchers.IO) {
            moviesIndex = PlaylistRepository.allCachedVod().distinctBy { it.streamId }
            seriesIndex = PlaylistRepository.allCachedSeries().distinctBy { it.seriesId }
            if (moviesIndex.isEmpty()) {
                val categoryId = PlaylistRepository.vodCategories
                    .firstOrNull { it.id.isNotBlank() }
                    ?.id
                if (categoryId != null) {
                    moviesIndex = runCatching { api.vodStreams(profile, categoryId) }
                        .getOrDefault(emptyList())
                        .also { PlaylistRepository.cacheVod(categoryId, it) }
                }
            }
            if (seriesIndex.isEmpty()) {
                val categoryId = PlaylistRepository.seriesCategories
                    .firstOrNull { it.id.isNotBlank() }
                    ?.id
                if (categoryId != null) {
                    seriesIndex = runCatching { api.seriesList(profile, categoryId) }
                        .getOrDefault(emptyList())
                        .also { PlaylistRepository.cacheSeries(categoryId, it) }
                }
            }
            loaded = true
        }
    }

    fun invalidate() {
        loaded = false
        moviesIndex = emptyList()
        seriesIndex = emptyList()
    }

    fun search(query: String): Results {
        val needle = normalizeForSearch(query)
        if (needle.isEmpty()) return Results()

        val tokens = needle.split(Regex("\\s+")).filter { it.isNotBlank() }

        val channels = PlaylistRepository.channelsFor(null)
            .filter { matches(it.name, needle, tokens) }
            .take(40)

        val movies = moviesIndex
            .filter { matches(it.name, needle, tokens) }
            .take(40)

        val series = seriesIndex
            .filter { matches(it.name, needle, tokens) }
            .take(40)

        return Results(channels = channels, movies = movies, series = series)
    }

    private fun matches(text: String, needle: String, tokens: List<String>): Boolean {
        val haystack = normalizeForSearch(text)
        if (haystack.contains(needle)) return true
        return tokens.isNotEmpty() && tokens.all { token -> haystack.contains(token) }
    }

    private fun normalizeForSearch(text: String): String =
        Normalizer.normalize(text.trim().lowercase(), Normalizer.Form.NFD)
            .replace(Regex("\\p{M}+"), "")
}

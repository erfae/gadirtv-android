package com.gadir.tv.data

import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.CategorySort
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

            for (category in PlaylistRepository.vodCategories) {
                if (category.id.isBlank() || CategorySort.isAdultCategory(category.name)) continue
                val cached = PlaylistRepository.cachedVod(category.id)
                if (cached != null) {
                    moviesIndex = (moviesIndex + cached).distinctBy { it.streamId }
                    continue
                }
                val fetched = runCatching { api.vodStreams(profile, category.id) }
                    .getOrDefault(emptyList())
                if (fetched.isNotEmpty()) {
                    PlaylistRepository.cacheVod(category.id, fetched)
                    moviesIndex = (moviesIndex + fetched).distinctBy { it.streamId }
                }
            }

            for (category in PlaylistRepository.seriesCategories) {
                if (category.id.isBlank() || CategorySort.isAdultCategory(category.name)) continue
                val cached = PlaylistRepository.cachedSeries(category.id)
                if (cached != null) {
                    seriesIndex = (seriesIndex + cached).distinctBy { it.seriesId }
                    continue
                }
                val fetched = runCatching { api.seriesList(profile, category.id) }
                    .getOrDefault(emptyList())
                if (fetched.isNotEmpty()) {
                    PlaylistRepository.cacheSeries(category.id, fetched)
                    seriesIndex = (seriesIndex + fetched).distinctBy { it.seriesId }
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

        val moviesSource = if (moviesIndex.isNotEmpty()) {
            moviesIndex
        } else {
            PlaylistRepository.allCachedVod()
        }
        val seriesSource = if (seriesIndex.isNotEmpty()) {
            seriesIndex
        } else {
            PlaylistRepository.allCachedSeries()
        }

        val movies = moviesSource
            .filter { matches(it.name, needle, tokens) }
            .take(40)

        val series = seriesSource
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

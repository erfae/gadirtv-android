package com.gadir.tv.data

import com.gadir.tv.model.Category
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext

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
        fetchCategories: suspend () -> List<Category>,
        fetchStreams: suspend (String?) -> List<T>,
        addedAt: (T) -> Long,
    ): List<T> = coroutineScope {
        val categories = fetchCategories()
        val merged = if (categories.isNotEmpty()) {
            categories.take(6).map { category ->
                async {
                    runCatching { fetchStreams(category.id) }.getOrDefault(emptyList())
                }
            }.awaitAll().flatten()
        } else {
            runCatching { fetchStreams(null) }.getOrDefault(emptyList())
        }
        merged.sortedByDescending(addedAt).take(24)
    }
}

object CatalogPreloader {
    private const val MAX_PARALLEL = 5

    suspend fun preloadRemaining(
        api: XtreamApi,
        profile: Profile,
        onCategory: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            val semaphore = Semaphore(MAX_PARALLEL)
            val vodJobs = PlaylistRepository.vodCategories
                .filter { PlaylistRepository.cachedVod(it.id) == null }
                .map { category ->
                    async {
                        semaphore.withPermit {
                            onCategory?.invoke(category.name)
                            PlaylistRepository.cacheVod(
                                category.id,
                                api.vodStreams(profile, category.id),
                            )
                        }
                    }
                }
            val seriesJobs = PlaylistRepository.seriesCategories
                .filter { PlaylistRepository.cachedSeries(it.id) == null }
                .map { category ->
                    async {
                        semaphore.withPermit {
                            onCategory?.invoke(category.name)
                            PlaylistRepository.cacheSeries(
                                category.id,
                                api.seriesList(profile, category.id),
                            )
                        }
                    }
                }
            awaitAll(*(vodJobs + seriesJobs).toTypedArray())
        }
    }
}

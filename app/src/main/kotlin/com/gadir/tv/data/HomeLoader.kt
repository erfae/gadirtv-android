package com.gadir.tv.data

import com.gadir.tv.model.Category
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.CategorySort
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext

object HomeLoader {
    fun recentMoviesFromCache(): List<VodMovie> =
        filterAdultMovies(PlaylistRepository.homeRecentMovies.ifEmpty {
            PlaylistRepository.allCachedVod()
                .sortedByDescending { it.added }
                .take(48)
        })

    fun recentSeriesFromCache(): List<SeriesItem> =
        filterAdultSeries(PlaylistRepository.homeRecentSeries.ifEmpty {
            PlaylistRepository.allCachedSeries()
                .sortedByDescending { it.added }
                .take(48)
        })

    suspend fun loadRecentMovies(api: XtreamApi, profile: Profile): List<VodMovie> =
        filterAdultMovies(
            loadRecent(
                fetchCategories = { api.vodCategories(profile) },
                fetchStreams = { categoryId -> api.vodStreams(profile, categoryId) },
                addedAt = { it.added },
                idOf = { it.streamId },
            ),
        )

    suspend fun loadRecentSeries(api: XtreamApi, profile: Profile): List<SeriesItem> =
        filterAdultSeries(
            loadRecent(
                fetchCategories = { api.seriesCategories(profile) },
                fetchStreams = { categoryId -> api.seriesList(profile, categoryId) },
                addedAt = { it.added },
                idOf = { it.seriesId },
            ),
        )

    private fun filterAdultMovies(movies: List<VodMovie>): List<VodMovie> {
        val categoryNames = PlaylistRepository.vodCategories.associate { it.id to it.name }
        return movies.filter { movie ->
            val catName = categoryNames[movie.categoryId].orEmpty()
            !CategorySort.isAdultContent(movie.name, catName)
        }.take(24)
    }

    private fun filterAdultSeries(series: List<SeriesItem>): List<SeriesItem> {
        val categoryNames = PlaylistRepository.seriesCategories.associate { it.id to it.name }
        return series.filter { item ->
            val catName = categoryNames[item.categoryId].orEmpty()
            !CategorySort.isAdultContent(item.name, catName)
        }.take(24)
    }

    private suspend fun <T> loadRecent(
        fetchCategories: suspend () -> List<Category>,
        fetchStreams: suspend (String?) -> List<T>,
        addedAt: (T) -> Long,
        idOf: (T) -> Int,
    ): List<T> = coroutineScope {
        val categories = fetchCategories().filter { !CategorySort.isAdultCategory(it.name) }
        val allStreams = runCatching { fetchStreams(null) }.getOrDefault(emptyList())
        val merged = if (allStreams.isNotEmpty()) {
            allStreams
        } else if (categories.isNotEmpty()) {
            categories.map { category ->
                async {
                    runCatching { fetchStreams(category.id) }.getOrDefault(emptyList())
                }
            }.awaitAll().flatten()
        } else {
            emptyList()
        }
        merged
            .distinctBy(idOf)
            .sortedByDescending(addedAt)
            .take(48)
    }
}

object CatalogPreloader {
    private const val MAX_PARALLEL = 4
    private const val MAX_RETRIES = 3
    private const val INITIAL_PREFETCH = 16

    suspend fun preloadRemaining(
        api: XtreamApi,
        profile: Profile,
        onCategory: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        prefetchInitial(api, profile, INITIAL_PREFETCH, onCategory)
    }

    suspend fun prefetchInitial(
        api: XtreamApi,
        profile: Profile,
        maxCategories: Int = INITIAL_PREFETCH,
        onCategory: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            val semaphore = Semaphore(MAX_PARALLEL)
            val vodTargets = PlaylistRepository.vodCategories
                .filter { !CategorySort.isAdultCategory(it.name) }
                .filter { PlaylistRepository.cachedVod(it.id) == null }
                .take(maxCategories)
            val seriesTargets = PlaylistRepository.seriesCategories
                .filter { !CategorySort.isAdultCategory(it.name) }
                .filter { PlaylistRepository.cachedSeries(it.id) == null }
                .take(maxCategories)
            val jobs = vodTargets.map { category ->
                async {
                    semaphore.withPermit {
                        onCategory?.invoke(category.name)
                        loadVodCategory(api, profile, category.id)
                    }
                }
            } + seriesTargets.map { category ->
                async {
                    semaphore.withPermit {
                        onCategory?.invoke(category.name)
                        loadSeriesCategory(api, profile, category.id)
                    }
                }
            }
            awaitAll(*jobs.toTypedArray())
        }
    }

    private fun loadVodCategory(api: XtreamApi, profile: Profile, categoryId: String) {
        repeat(MAX_RETRIES) { attempt ->
            val movies = runCatching { api.vodStreams(profile, categoryId) }.getOrNull()
            if (movies != null) {
                PlaylistRepository.cacheVod(categoryId, movies)
                return
            }
            if (attempt < MAX_RETRIES - 1) Thread.sleep(800L * (attempt + 1))
        }
    }

    private fun loadSeriesCategory(api: XtreamApi, profile: Profile, categoryId: String) {
        repeat(MAX_RETRIES) { attempt ->
            val series = runCatching { api.seriesList(profile, categoryId) }.getOrNull()
            if (series != null) {
                PlaylistRepository.cacheSeries(categoryId, series)
                return
            }
            if (attempt < MAX_RETRIES - 1) Thread.sleep(800L * (attempt + 1))
        }
    }
}

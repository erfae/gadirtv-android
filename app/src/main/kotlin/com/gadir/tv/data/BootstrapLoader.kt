package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.R
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.CategorySort
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout

object BootstrapLoader {
    private const val BOOTSTRAP_HOME_TIMEOUT_MS = 20_000L
    private const val HOME_ITEM_LIMIT = 24

    suspend fun load(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        onProgress: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            ContentPreloader.cancelBackgroundPreload()
            val migratedProfile = profile.copy(host = com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host))
            PlaylistRepository.setProfile(migratedProfile)
            PlaylistRepository.clearContentCache()

            onProgress?.invoke(context.getString(R.string.loading_playlist))

            val login = api.login(migratedProfile)
            if (!login.ok) {
                throw IllegalStateException(login.error ?: context.getString(R.string.connection_failed))
            }
            PlaylistRepository.userAgent = api.activeUserAgent

            onProgress?.invoke(context.getString(R.string.bootstrap_live))
            val liveCategories = async { api.liveCategories(migratedProfile) }
            val liveStreams = async { api.liveStreams(migratedProfile) }
            val vodCategories = async { api.vodCategories(migratedProfile) }
            val seriesCategories = async { api.seriesCategories(migratedProfile) }

            PlaylistRepository.updateCatalog(liveCategories.await(), liveStreams.await())
            PlaylistRepository.updateVodCategories(vodCategories.await())
            PlaylistRepository.updateSeriesCategories(seriesCategories.await())

            onProgress?.invoke(context.getString(R.string.bootstrap_catalog))
            CatalogPreloader.prefetchInitial(api, migratedProfile) { categoryName ->
                onProgress?.invoke(context.getString(R.string.bootstrap_loading_group, categoryName))
            }

            PlaylistRepository.markBootstrapReady()

            onProgress?.invoke(context.getString(R.string.bootstrap_home))
            val (movies, series) = loadHomeQuick(api, migratedProfile)
            PlaylistRepository.setHomeRecent(movies, series)
        }
    }

    private suspend fun loadHomeQuick(
        api: XtreamApi,
        profile: Profile,
    ): Pair<List<VodMovie>, List<SeriesItem>> = coroutineScope {
        val moviesDeferred = async {
            runCatching {
                withTimeout(BOOTSTRAP_HOME_TIMEOUT_MS) {
                    filterRecentMovies(loadRecentMovies(api, profile))
                }
            }.getOrDefault(emptyList())
        }
        val seriesDeferred = async {
            runCatching {
                withTimeout(BOOTSTRAP_HOME_TIMEOUT_MS) {
                    filterRecentSeries(loadRecentSeries(api, profile))
                }
            }.getOrDefault(emptyList())
        }
        moviesDeferred.await() to seriesDeferred.await()
    }

    private fun loadRecentMovies(api: XtreamApi, profile: Profile): List<VodMovie> {
        PlaylistRepository.allCachedVod().takeIf { it.isNotEmpty() }?.let { return it }
        val first = PlaylistRepository.vodCategories
            .firstOrNull { !CategorySort.isAdultCategory(it.name) }
            ?: return emptyList()
        return runCatching { api.vodStreams(profile, first.id) }
            .getOrDefault(emptyList())
            .also { movies -> if (movies.isNotEmpty()) PlaylistRepository.cacheVod(first.id, movies) }
    }

    private fun loadRecentSeries(api: XtreamApi, profile: Profile): List<SeriesItem> {
        PlaylistRepository.allCachedSeries().takeIf { it.isNotEmpty() }?.let { return it }
        val first = PlaylistRepository.seriesCategories
            .firstOrNull { !CategorySort.isAdultCategory(it.name) }
            ?: return emptyList()
        return runCatching { api.seriesList(profile, first.id) }
            .getOrDefault(emptyList())
            .also { series -> if (series.isNotEmpty()) PlaylistRepository.cacheSeries(first.id, series) }
    }

    private fun filterRecentMovies(movies: List<VodMovie>): List<VodMovie> {
        val categoryNames = PlaylistRepository.vodCategories.associate { it.id to it.name }
        return movies
            .filter { movie ->
                val catName = categoryNames[movie.categoryId].orEmpty()
                !CategorySort.isAdultContent(movie.name, catName)
            }
            .sortedByDescending { it.added }
            .take(HOME_ITEM_LIMIT)
    }

    private fun filterRecentSeries(series: List<SeriesItem>): List<SeriesItem> {
        val categoryNames = PlaylistRepository.seriesCategories.associate { it.id to it.name }
        return series
            .filter { item ->
                val catName = categoryNames[item.categoryId].orEmpty()
                !CategorySort.isAdultContent(item.name, catName)
            }
            .sortedByDescending { it.added }
            .take(HOME_ITEM_LIMIT)
    }
}

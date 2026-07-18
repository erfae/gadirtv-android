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
    private const val BOOTSTRAP_HOME_TIMEOUT_MS = 12_000L
    private const val HOME_ITEM_LIMIT = 24

    suspend fun load(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        onProgress: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            ContentPreloader.cancelBackgroundPreload()
            PlaylistRepository.setProfile(profile)
            PlaylistRepository.clearContentCache()

            onProgress?.invoke(context.getString(R.string.loading_playlist))

            val login = api.login(profile)
            if (!login.ok) {
                throw IllegalStateException(login.error ?: context.getString(R.string.connection_failed))
            }
            PlaylistRepository.userAgent = api.activeUserAgent

            onProgress?.invoke(context.getString(R.string.bootstrap_live))
            val liveCategories = async { api.liveCategories(profile) }
            val liveStreams = async { api.liveStreams(profile) }
            val vodCategories = async { api.vodCategories(profile) }
            val seriesCategories = async { api.seriesCategories(profile) }

            PlaylistRepository.updateCatalog(liveCategories.await(), liveStreams.await())
            PlaylistRepository.updateVodCategories(vodCategories.await())
            PlaylistRepository.updateSeriesCategories(seriesCategories.await())

            PlaylistRepository.markBootstrapReady()

            onProgress?.invoke(context.getString(R.string.bootstrap_home))
            val (movies, series) = loadHomeQuick(api, profile)
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
                    filterRecentMovies(api.vodStreams(profile, null))
                }
            }.getOrDefault(emptyList())
        }
        val seriesDeferred = async {
            runCatching {
                withTimeout(BOOTSTRAP_HOME_TIMEOUT_MS) {
                    filterRecentSeries(api.seriesList(profile, null))
                }
            }.getOrDefault(emptyList())
        }
        moviesDeferred.await() to seriesDeferred.await()
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

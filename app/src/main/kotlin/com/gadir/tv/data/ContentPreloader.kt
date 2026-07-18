package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.R
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.HostUtils
import com.gadir.tv.util.ImagePreloader
import com.gadir.tv.util.ImageUrlResolver
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext

object ContentPreloader {
    private const val ICON_PARALLEL = 10
    private const val PLOT_PARALLEL = 4
    private const val EPG_PARALLEL = 4
    private const val EPG_CHANNEL_LIMIT = 120
    private const val PLOT_LIMIT = 64

    suspend fun preloadAll(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        onProgress: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            PlotCache.clear()
            EpgCache.clear()

            onProgress?.invoke(context.getString(R.string.bootstrap_channels))
            preloadChannelIcons(context, PlaylistRepository.allChannels)

            onProgress?.invoke(context.getString(R.string.bootstrap_catalog))
            CatalogPreloader.preloadRemaining(api, profile) { name ->
                onProgress?.invoke(context.getString(R.string.bootstrap_loading_group, name))
            }

            onProgress?.invoke(context.getString(R.string.bootstrap_plots))
            preloadPlots(context, api, profile)

            onProgress?.invoke(context.getString(R.string.bootstrap_posters))
            preloadPosters(context)

            onProgress?.invoke(context.getString(R.string.bootstrap_epg))
            preloadEpg(api, profile, PlaylistRepository.allChannels)
        }
    }

    private suspend fun preloadChannelIcons(context: Context, channels: List<LiveChannel>) {
        val profile = PlaylistRepository.profile
        val urls = channels.mapNotNull { channel ->
            primaryChannelIconUrl(profile, channel)
        }.distinct()
        ImagePreloader.preloadUrls(context, urls, 128, 128, ICON_PARALLEL)
    }

    fun primaryChannelIconUrl(profile: Profile?, channel: LiveChannel): String? {
        val primary = ImageUrlResolver.resolve(channel.icon)
        if (primary.isNotBlank()) return primary
        if (profile == null || channel.streamId <= 0) return null
        val base = HostUtils.baseUrl(profile.host).trimEnd('/')
        return "$base/images/${channel.streamId}.png"
    }

    private suspend fun preloadPosters(context: Context) {
        val urls = buildList {
            PlaylistRepository.homeRecentMovies.forEach { movie ->
                add(movie.icon)
                PlotCache.get("movie", movie.streamId)?.let { cached ->
                    add(cached.backdrop)
                    add(cached.poster)
                }
            }
            PlaylistRepository.homeRecentSeries.forEach { item ->
                add(item.cover)
                PlotCache.get("series", item.seriesId)?.let { cached ->
                    add(cached.backdrop)
                    add(cached.poster)
                }
            }
            PlaylistRepository.allCachedVod().forEach { add(it.icon) }
            PlaylistRepository.allCachedSeries().forEach { add(it.cover) }
        }
        ImagePreloader.preloadUrls(
            context,
            urls.filter { it.isNotBlank() }.distinct(),
            220,
            320,
            ICON_PARALLEL,
        )
    }

    private suspend fun preloadPlots(
        context: Context,
        api: XtreamApi,
        profile: Profile,
    ) = coroutineScope {
        val movies = PlaylistRepository.homeRecentMovies.take(PLOT_LIMIT)
        val series = PlaylistRepository.homeRecentSeries.take(PLOT_LIMIT)
        val semaphore = Semaphore(PLOT_PARALLEL)
        val jobs = buildList {
            movies.forEach { movie ->
                add(async {
                    semaphore.withPermit {
                        loadMoviePlot(context, api, profile, movie)
                    }
                })
            }
            series.forEach { item ->
                add(async {
                    semaphore.withPermit {
                        loadSeriesPlot(context, api, profile, item)
                    }
                })
            }
        }
        jobs.awaitAll()
    }

    private fun loadMoviePlot(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        movie: VodMovie,
    ) {
        val kind = "movie"
        if (PlotCache.get(kind, movie.streamId) != null) return
        val info = runCatching { api.vodInfo(profile, movie.streamId) }.getOrNull() ?: return
        val backdrop = info.backdrop.ifBlank { info.cover }
        PlotCache.put(
            kind,
            movie.streamId,
            PlotCache.Entry(
                plot = info.plot.ifBlank { context.getString(R.string.hero_plot_empty) },
                subtitle = listOf(info.genre, info.releaseDate, info.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · "),
                backdrop = backdrop,
                poster = info.cover,
                title = info.name,
            ),
        )
    }

    private fun loadSeriesPlot(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        item: SeriesItem,
    ) {
        val kind = "series"
        if (PlotCache.get(kind, item.seriesId) != null) return
        val detail = runCatching { api.seriesInfo(profile, item.seriesId) }.getOrNull() ?: return
        val backdrop = detail.backdrop.ifBlank { detail.cover }
        PlotCache.put(
            kind,
            item.seriesId,
            PlotCache.Entry(
                plot = detail.plot.ifBlank { context.getString(R.string.hero_plot_empty) },
                subtitle = listOf(detail.genre, detail.releaseDate, detail.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · "),
                backdrop = backdrop,
                poster = detail.cover,
                title = detail.name,
            ),
        )
    }

    private suspend fun preloadEpg(
        api: XtreamApi,
        profile: Profile,
        channels: List<LiveChannel>,
    ) = coroutineScope {
        val targets = channels.take(EPG_CHANNEL_LIMIT)
        val semaphore = Semaphore(EPG_PARALLEL)
        targets.map { channel ->
            async {
                semaphore.withPermit {
                    if (EpgCache.get(channel.streamId) != null) return@withPermit
                    val epg = runCatching {
                        api.shortEpg(
                            profile,
                            streamId = channel.streamId,
                            epgChannelId = channel.epgChannelId,
                            limit = 4,
                        )
                    }.getOrDefault(emptyList())
                    EpgCache.put(channel.streamId, epg)
                }
            }
        }.awaitAll()
    }
}

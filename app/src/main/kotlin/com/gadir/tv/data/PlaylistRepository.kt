package com.gadir.tv.data

import com.gadir.tv.util.CategorySort
import com.gadir.tv.model.AccountInfo
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie

object PlaylistRepository {
    var profile: Profile? = null
        private set

    var categories: List<Category> = emptyList()
        private set

    var allChannels: List<LiveChannel> = emptyList()
        private set

    var vodCategories: List<Category> = emptyList()
        private set

    var seriesCategories: List<Category> = emptyList()
        private set

    private val vodCache = mutableMapOf<String, List<VodMovie>>()
    private val seriesCache = mutableMapOf<String, List<SeriesItem>>()
    private val vodLoadFailed = mutableSetOf<String>()
    private val seriesLoadFailed = mutableSetOf<String>()

    var homeRecentMovies: List<VodMovie> = emptyList()
        private set

    var homeRecentSeries: List<SeriesItem> = emptyList()
        private set

    var bootstrapReady: Boolean = false
        private set

    var accountInfo: AccountInfo? = null
        private set

  var userAgent: String = "XCIPTV"

    fun setProfile(p: Profile) {
        profile = p
    }

    fun updateCatalog(cats: List<Category>, channels: List<LiveChannel>) {
        categories = CategorySort.sortWithAdultLast(cats)
        allChannels = channels
    }

    fun updateVodCategories(cats: List<Category>) {
        vodCategories = CategorySort.sortWithAdultLast(cats)
    }

    fun updateSeriesCategories(cats: List<Category>) {
        seriesCategories = CategorySort.sortWithAdultLast(cats)
    }

    fun channelsFor(categoryId: String?, sortMode: String = AppSettings.LIVE_SORT_PLAYLIST): List<LiveChannel> {
        val base = if (categoryId.isNullOrEmpty()) {
            playlistOrderedChannels()
        } else {
            allChannels
                .filter { it.categoryId == categoryId }
                .sortedWith(channelOrderComparator())
        }
        return if (sortMode == AppSettings.LIVE_SORT_ALPHA) {
            base.sortedBy { it.name.lowercase() }
        } else {
            base
        }
    }

    fun setAccountInfo(info: AccountInfo?) {
        accountInfo = info
    }

    private fun playlistOrderedChannels(): List<LiveChannel> {
        val groupOrder = categories.associate { it.id to it.order }
        return allChannels.sortedWith(
            compareBy<LiveChannel> { groupOrder[it.categoryId] ?: Int.MAX_VALUE }
                .thenBy { it.num }
                .thenBy { it.streamId },
        )
    }

    private fun channelOrderComparator() =
        compareBy<LiveChannel>({ it.num }, { it.streamId })

    fun cachedVod(categoryId: String): List<VodMovie>? {
        if (categoryId in vodLoadFailed) return null
        return vodCache[categoryId]
    }

    fun cacheVod(categoryId: String, items: List<VodMovie>) {
        vodLoadFailed.remove(categoryId)
        vodCache[categoryId] = items
    }

    fun markVodLoadFailed(categoryId: String) {
        vodLoadFailed.add(categoryId)
        vodCache.remove(categoryId)
    }

    fun clearVodLoadFailed(categoryId: String) {
        vodLoadFailed.remove(categoryId)
    }

    fun clearSeriesLoadFailed(categoryId: String) {
        seriesLoadFailed.remove(categoryId)
    }

    fun cachedSeries(categoryId: String): List<SeriesItem>? {
        if (categoryId in seriesLoadFailed) return null
        return seriesCache[categoryId]
    }

    fun cacheSeries(categoryId: String, items: List<SeriesItem>) {
        seriesLoadFailed.remove(categoryId)
        seriesCache[categoryId] = items
    }

    fun markSeriesLoadFailed(categoryId: String) {
        seriesLoadFailed.add(categoryId)
        seriesCache.remove(categoryId)
    }

    fun setHomeRecent(movies: List<VodMovie>, series: List<SeriesItem>) {
        homeRecentMovies = movies
        homeRecentSeries = series
    }

    fun markBootstrapReady() {
        bootstrapReady = true
    }

    fun allCachedVod(): List<VodMovie> = vodCache.values.flatten().distinctBy { it.streamId }

    fun allCachedSeries(): List<SeriesItem> = seriesCache.values.flatten().distinctBy { it.seriesId }

    fun exportVodCache(): Map<String, List<VodMovie>> = vodCache.toMap()

    fun exportSeriesCache(): Map<String, List<SeriesItem>> = seriesCache.toMap()

    fun hydrateFromSnapshot(snapshot: CatalogSnapshot) {
        categories = snapshot.categories
        allChannels = snapshot.allChannels
        vodCategories = snapshot.vodCategories
        seriesCategories = snapshot.seriesCategories
        vodCache.clear()
        seriesCache.clear()
        vodLoadFailed.clear()
        seriesLoadFailed.clear()
        snapshot.vodByCategory.forEach { (id, items) -> vodCache[id] = items }
        snapshot.seriesByCategory.forEach { (id, items) -> seriesCache[id] = items }
        homeRecentMovies = snapshot.homeRecentMovies
        homeRecentSeries = snapshot.homeRecentSeries
        userAgent = snapshot.userAgent.ifBlank { userAgent }
        markBootstrapReady()
    }

    fun clearContentCache() {
        vodCache.clear()
        seriesCache.clear()
        vodLoadFailed.clear()
        seriesLoadFailed.clear()
        homeRecentMovies = emptyList()
        homeRecentSeries = emptyList()
        bootstrapReady = false
        PlotCache.clear()
        SeriesDetailCache.clear()
        EpgCache.clear()
        com.gadir.tv.util.ChannelIconCache.clear()
    }

    fun clear() {
        profile = null
        categories = emptyList()
        allChannels = emptyList()
        vodCategories = emptyList()
        seriesCategories = emptyList()
        vodCache.clear()
        seriesCache.clear()
        vodLoadFailed.clear()
        seriesLoadFailed.clear()
        homeRecentMovies = emptyList()
        homeRecentSeries = emptyList()
        bootstrapReady = false
        accountInfo = null
        userAgent = "XCIPTV"
        PlotCache.clear()
        SeriesDetailCache.clear()
        EpgCache.clear()
        com.gadir.tv.util.ChannelIconCache.clear()
    }
}

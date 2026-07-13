package com.gadir.tv.data

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

  var userAgent: String = "XCIPTV"

    fun setProfile(p: Profile) {
        profile = p
    }

    fun updateCatalog(cats: List<Category>, channels: List<LiveChannel>) {
        categories = cats
        allChannels = channels
    }

    fun updateVodCategories(cats: List<Category>) {
        vodCategories = cats
    }

    fun updateSeriesCategories(cats: List<Category>) {
        seriesCategories = cats
    }

    fun channelsFor(categoryId: String?): List<LiveChannel> {
        if (categoryId.isNullOrEmpty()) return allChannels
        return allChannels.filter { it.categoryId == categoryId }
    }

    fun cachedVod(categoryId: String): List<VodMovie>? = vodCache[categoryId]

    fun cacheVod(categoryId: String, items: List<VodMovie>) {
        vodCache[categoryId] = items
    }

    fun cachedSeries(categoryId: String): List<SeriesItem>? = seriesCache[categoryId]

    fun cacheSeries(categoryId: String, items: List<SeriesItem>) {
        seriesCache[categoryId] = items
    }

    fun clear() {
        profile = null
        categories = emptyList()
        allChannels = emptyList()
        vodCategories = emptyList()
        seriesCategories = emptyList()
        vodCache.clear()
        seriesCache.clear()
        userAgent = "XCIPTV"
    }
}

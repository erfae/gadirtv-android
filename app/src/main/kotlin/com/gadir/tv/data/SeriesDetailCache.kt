package com.gadir.tv.data

import com.gadir.tv.model.SeriesDetail
import com.gadir.tv.model.SeriesEpisode
import java.util.concurrent.ConcurrentHashMap

object SeriesDetailCache {
    private val entries = ConcurrentHashMap<Int, SeriesDetail>()

    fun get(seriesId: Int): SeriesDetail? = entries[seriesId]

    fun findEpisode(episodeId: Int): SeriesEpisode? {
        if (episodeId <= 0) return null
        for (detail in entries.values) {
            for (episodes in detail.seasons.values) {
                episodes.firstOrNull { it.id == episodeId }?.let { return it }
            }
        }
        return null
    }

    fun put(seriesId: Int, detail: SeriesDetail) {
        entries[seriesId] = detail
    }

    fun clear() {
        entries.clear()
    }
}

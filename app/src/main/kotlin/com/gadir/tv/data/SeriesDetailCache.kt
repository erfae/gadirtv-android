package com.gadir.tv.data

import com.gadir.tv.model.SeriesDetail
import java.util.concurrent.ConcurrentHashMap

object SeriesDetailCache {
    private val entries = ConcurrentHashMap<Int, SeriesDetail>()

    fun get(seriesId: Int): SeriesDetail? = entries[seriesId]

    fun put(seriesId: Int, detail: SeriesDetail) {
        entries[seriesId] = detail
    }

    fun clear() {
        entries.clear()
    }
}

package com.gadir.tv.data

import com.gadir.tv.model.EpgEntry
import java.util.concurrent.ConcurrentHashMap

object EpgCache {
    private val entries = ConcurrentHashMap<Int, List<EpgEntry>>()

    fun get(streamId: Int): List<EpgEntry>? = entries[streamId]

    fun put(streamId: Int, epg: List<EpgEntry>) {
        if (epg.isNotEmpty()) {
            entries[streamId] = epg
        }
    }

    fun clear() {
        entries.clear()
    }
}

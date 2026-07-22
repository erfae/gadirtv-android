package com.gadir.tv.data

import com.gadir.tv.model.VodInfo
import java.util.concurrent.ConcurrentHashMap

object MovieDetailCache {
    private val entries = ConcurrentHashMap<Int, VodInfo>()

    fun get(streamId: Int): VodInfo? = entries[streamId]

    fun put(streamId: Int, info: VodInfo) {
        entries[streamId] = info
    }

    fun clear() {
        entries.clear()
    }
}

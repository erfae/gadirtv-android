package com.gadir.tv.util

import java.util.concurrent.ConcurrentHashMap

/** Recuerda qué URL de icono funcionó por canal (memoria + caché en disco). */
object ChannelIconCache {
    private val urls = ConcurrentHashMap<Int, String>()

    fun get(streamId: Int): String? = urls[streamId]

    fun put(streamId: Int, url: String) {
        if (streamId <= 0 || url.isBlank()) return
        urls[streamId] = url
    }

    fun hydrate(map: Map<Int, String>) {
        urls.clear()
        map.forEach { (id, url) ->
            if (id > 0 && url.isNotBlank()) urls[id] = url
        }
    }

    fun export(): Map<Int, String> = urls.toMap()

    fun clear() {
        urls.clear()
    }
}

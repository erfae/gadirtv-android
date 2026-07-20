package com.gadir.tv.util

import java.util.concurrent.ConcurrentHashMap

/** Recuerda qué URL de icono funcionó por canal (sesión actual). */
object ChannelIconCache {
    private val urls = ConcurrentHashMap<Int, String>()

    fun get(streamId: Int): String? = urls[streamId]

    fun put(streamId: Int, url: String) {
        if (streamId <= 0 || url.isBlank()) return
        urls[streamId] = url
    }

    fun clear() {
        urls.clear()
    }
}

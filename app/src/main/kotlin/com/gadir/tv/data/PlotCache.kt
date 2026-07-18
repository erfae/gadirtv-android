package com.gadir.tv.data

import java.util.concurrent.ConcurrentHashMap

object PlotCache {
    data class Entry(
        val plot: String,
        val subtitle: String = "",
        val backdrop: String = "",
        val poster: String = "",
        val title: String = "",
    )

    private val entries = ConcurrentHashMap<String, Entry>()

    fun key(kind: String, id: Int): String = "$kind:$id"

    fun get(kind: String, id: Int): Entry? = entries[key(kind, id)]

    fun put(kind: String, id: Int, entry: Entry) {
        entries[key(kind, id)] = entry
    }

    fun clear() {
        entries.clear()
    }
}

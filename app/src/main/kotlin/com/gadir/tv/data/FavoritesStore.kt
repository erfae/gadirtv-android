package com.gadir.tv.data

import android.content.Context
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

class FavoritesStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()
    private val cache = mutableMapOf(
        KIND_LIVE to mutableSetOf<Int>(),
        KIND_MOVIE to mutableSetOf<Int>(),
        KIND_SERIES to mutableSetOf<Int>(),
    )
    private var loaded = false

    fun load(kind: String): Set<Int> {
        hydrate()
        return cache[kind]?.toSet() ?: emptySet()
    }

    fun isFavorite(kind: String, id: Int): Boolean {
        hydrate()
        return cache[kind]?.contains(id) == true
    }

    fun toggle(kind: String, id: Int): Boolean {
        hydrate()
        val bucket = cache.getOrPut(kind) { mutableSetOf() }
        val nowFavorite = if (bucket.contains(id)) {
            bucket.remove(id)
            false
        } else {
            bucket.add(id)
            true
        }
        persist()
        return nowFavorite
    }

    private fun hydrate() {
        if (loaded) return
        val raw = prefs.getString(KEY, null)
        if (!raw.isNullOrBlank()) {
            try {
                val el = gson.fromJson(raw, Any::class.java)
                when (el) {
                    is List<*> -> {
                        cache[KIND_LIVE] = el.mapNotNull { (it as? Number)?.toInt() }.toMutableSet()
                    }
                    is Map<*, *> -> {
                        for (kind in cache.keys) {
                            val list = el[kind]
                            if (list is List<*>) {
                                cache[kind] = list.mapNotNull { (it as? Number)?.toInt() }.toMutableSet()
                            }
                        }
                    }
                }
            } catch (_: Exception) {
                // corrupt payload — start fresh
            }
        }
        loaded = true
    }

    private fun persist() {
        val map = cache.mapValues { it.value.toList() }
        prefs.edit().putString(KEY, gson.toJson(map)).apply()
    }

    companion object {
        const val KIND_LIVE = "live"
        const val KIND_MOVIE = "movie"
        const val KIND_SERIES = "series"
        const val FAVORITES_CATEGORY_ID = "__favorites__"
        private const val PREFS = "gadirtv_prefs"
        private const val KEY = "gf"
    }
}

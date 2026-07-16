package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.Category
import com.gadir.tv.util.CategorySort

class ParentalControlStore(context: Context) {
    private val prefs = (context.applicationContext ?: context)
        .getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var pin: String?
        get() = prefs.getString(KEY_PIN, null)?.takeIf { it.length == PIN_LENGTH }
        set(value) {
            prefs.edit().putString(KEY_PIN, value?.takeIf { it.length == PIN_LENGTH }).apply()
        }

    val hasPin: Boolean
        get() = !pin.isNullOrEmpty()

    fun isLocked(kind: String, categoryId: String): Boolean {
        if (categoryId.isEmpty()) return false
        return lockedIds(kind).contains(categoryId)
    }

    fun setLocked(kind: String, categoryId: String, locked: Boolean) {
        val set = lockedIds(kind).toMutableSet()
        if (locked) set.add(categoryId) else set.remove(categoryId)
        saveLocked(kind, set)
    }

    fun lockAdultCategories(
        live: List<Category>,
        vod: List<Category>,
        series: List<Category>,
    ): Int {
        var count = 0
        live.forEach { cat ->
            if (CategorySort.isAdultCategory(cat.name) && setLockedIfNeeded(KIND_LIVE, cat.id)) count++
        }
        vod.forEach { cat ->
            if (CategorySort.isAdultCategory(cat.name) && setLockedIfNeeded(KIND_VOD, cat.id)) count++
        }
        series.forEach { cat ->
            if (CategorySort.isAdultCategory(cat.name) && setLockedIfNeeded(KIND_SERIES, cat.id)) count++
        }
        return count
    }

    fun verifyPin(input: String): Boolean = pin != null && pin == input

    fun lockedIds(kind: String): Set<String> {
        val raw = prefs.getString(prefKey(kind), "").orEmpty()
        if (raw.isEmpty()) return emptySet()
        return raw.split(',').filter { it.isNotEmpty() }.toSet()
    }

    private fun setLockedIfNeeded(kind: String, categoryId: String): Boolean {
        if (isLocked(kind, categoryId)) return false
        setLocked(kind, categoryId, true)
        return true
    }

    private fun saveLocked(kind: String, ids: Set<String>) {
        prefs.edit().putString(prefKey(kind), ids.joinToString(",")).apply()
    }

    private fun prefKey(kind: String) = "locked_$kind"

    companion object {
        const val KIND_LIVE = "live"
        const val KIND_VOD = "vod"
        const val KIND_SERIES = "series"
        const val PIN_LENGTH = 4

        private const val PREFS = "gadirtv_parental"
        private const val KEY_PIN = "pin"
    }
}

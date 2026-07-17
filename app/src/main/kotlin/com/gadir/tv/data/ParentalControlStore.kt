package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.CategorySort
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

class ParentalControlStore(context: Context) {
    private val prefs = (context.applicationContext ?: context)
        .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()
    private var lockedChannels = mutableSetOf<Int>()
    private var blockedLiveGroups = mutableSetOf<String>()
    private var blockedVodGroups = mutableSetOf<String>()
    private var blockedSeriesGroups = mutableSetOf<String>()
    private var loaded = false

    fun getPin(): String = prefs.getString(KEY_PIN, DEFAULT_PIN) ?: DEFAULT_PIN

    fun changePin(current: String, newPin: String): Boolean {
        if (!verifyPin(current) || newPin.length != PIN_LENGTH) return false
        prefs.edit().putString(KEY_PIN, newPin).apply()
        return true
    }

    fun verifyPin(input: String): Boolean =
        getPin().equals(input.trim(), ignoreCase = true)

    fun ensureAdultDefaultsBlocked() {
        hydrate()
        var changed = false
        PlaylistRepository.categories
            .filter { isAdultLiveCategory(it.id) }
            .forEach { if (blockedLiveGroups.add(it.id)) changed = true }
        PlaylistRepository.vodCategories
            .filter { isAdultVodCategory(it.id) }
            .forEach { if (blockedVodGroups.add(it.id)) changed = true }
        PlaylistRepository.seriesCategories
            .filter { isAdultSeriesCategory(it.id) }
            .forEach { if (blockedSeriesGroups.add(it.id)) changed = true }
        if (!prefs.getBoolean(KEY_ADULT_DEFAULTS_APPLIED, false)) {
            prefs.edit().putBoolean(KEY_ADULT_DEFAULTS_APPLIED, true).apply()
        }
        if (changed) persistGroups()
    }

    fun isLiveGroupBlocked(categoryId: String): Boolean {
        hydrate()
        return categoryId in blockedLiveGroups
    }

    fun isVodGroupBlocked(categoryId: String): Boolean {
        hydrate()
        return categoryId in blockedVodGroups
    }

    fun isSeriesGroupBlocked(categoryId: String): Boolean {
        hydrate()
        return categoryId in blockedSeriesGroups
    }

    fun toggleLiveGroup(categoryId: String): Boolean {
        hydrate()
        val blocked = if (categoryId in blockedLiveGroups) {
            blockedLiveGroups.remove(categoryId)
            false
        } else {
            blockedLiveGroups.add(categoryId)
            true
        }
        persistGroups()
        return blocked
    }

    fun toggleVodGroup(categoryId: String): Boolean {
        hydrate()
        val blocked = if (categoryId in blockedVodGroups) {
            blockedVodGroups.remove(categoryId)
            false
        } else {
            blockedVodGroups.add(categoryId)
            true
        }
        persistGroups()
        return blocked
    }

    fun toggleSeriesGroup(categoryId: String): Boolean {
        hydrate()
        val blocked = if (categoryId in blockedSeriesGroups) {
            blockedSeriesGroups.remove(categoryId)
            false
        } else {
            blockedSeriesGroups.add(categoryId)
            true
        }
        persistGroups()
        return blocked
    }

    fun blockedLiveGroupCount(): Int {
        hydrate()
        return blockedLiveGroups.size
    }

    fun isChannelLocked(streamId: Int): Boolean {
        hydrate()
        return lockedChannels.contains(streamId)
    }

    fun hasLockedChannels(): Boolean {
        hydrate()
        return lockedChannels.isNotEmpty()
    }

    fun lockedChannelIds(): Set<Int> {
        hydrate()
        return lockedChannels.toSet()
    }

    fun toggleChannelLock(streamId: Int): Boolean {
        hydrate()
        val nowLocked = if (lockedChannels.contains(streamId)) {
            lockedChannels.remove(streamId)
            false
        } else {
            lockedChannels.add(streamId)
            true
        }
        persistChannels()
        return nowLocked
    }

    fun isAdultLiveCategory(categoryId: String): Boolean =
        categoryName(PlaylistRepository.categories, categoryId)?.let(CategorySort::isAdultCategory) == true

    fun isAdultVodCategory(categoryId: String): Boolean =
        categoryName(PlaylistRepository.vodCategories, categoryId)?.let(CategorySort::isAdultCategory) == true

    fun isAdultSeriesCategory(categoryId: String): Boolean =
        categoryName(PlaylistRepository.seriesCategories, categoryId)?.let(CategorySort::isAdultCategory) == true

    fun isAdultLiveChannel(channel: LiveChannel): Boolean =
        isAdultLiveCategory(channel.categoryId) ||
            CategorySort.isAdultContent(channel.name)

    fun requiresPinForLiveCategory(categoryId: String?): Boolean {
        if (categoryId.isNullOrEmpty()) return false
        if (categoryId == LOCK_CATEGORY_ID) {
            return hasLockedChannels() &&
                !ParentalSession.isUnlocked(ParentalSession.liveCategoryKey(categoryId))
        }
        if (!isLiveGroupBlocked(categoryId)) return false
        return !ParentalSession.isUnlocked(ParentalSession.liveCategoryKey(categoryId))
    }

    fun requiresPinForChannel(channel: LiveChannel, selectedCategoryId: String?): Boolean {
        if (isChannelLocked(channel.streamId)) {
            return !ParentalSession.isUnlocked(ParentalSession.liveChannelKey(channel.streamId))
        }
        val categoryId = channel.categoryId.ifBlank { selectedCategoryId.orEmpty() }
        if (categoryId.isNotBlank() && isLiveGroupBlocked(categoryId)) {
            return !ParentalSession.isUnlocked(ParentalSession.liveCategoryKey(categoryId))
        }
        return false
    }

    fun requiresPinForVodCategory(categoryId: String): Boolean {
        if (categoryId.isBlank() || !isVodGroupBlocked(categoryId)) return false
        return !ParentalSession.isUnlocked(ParentalSession.vodCategoryKey(categoryId))
    }

    fun requiresPinForSeriesCategory(categoryId: String): Boolean {
        if (categoryId.isBlank() || !isSeriesGroupBlocked(categoryId)) return false
        return !ParentalSession.isUnlocked(ParentalSession.seriesCategoryKey(categoryId))
    }

    fun requiresPinForMovie(movie: VodMovie): Boolean {
        if (movie.categoryId.isNotBlank() && requiresPinForVodCategory(movie.categoryId)) return true
        if (movie.categoryId.isBlank() && CategorySort.isAdultContent(movie.name)) {
            return !ParentalSession.isUnlocked("vodTitle:${movie.streamId}")
        }
        return false
    }

    fun requiresPinForSeriesItem(series: SeriesItem): Boolean {
        if (series.categoryId.isNotBlank() && requiresPinForSeriesCategory(series.categoryId)) return true
        if (series.categoryId.isBlank() && CategorySort.isAdultContent(series.name)) {
            return !ParentalSession.isUnlocked("seriesTitle:${series.seriesId}")
        }
        return false
    }

    fun canLockChannel(channel: LiveChannel): Boolean = true

    private fun categoryName(categories: List<Category>, categoryId: String): String? =
        categories.firstOrNull { it.id == categoryId }?.name

    private fun hydrate() {
        if (loaded) return
        loaded = true
        lockedChannels = readIntSet(KEY_LOCKED_CHANNELS)
        blockedLiveGroups = readStringSet(KEY_BLOCKED_LIVE)
        blockedVodGroups = readStringSet(KEY_BLOCKED_VOD)
        blockedSeriesGroups = readStringSet(KEY_BLOCKED_SERIES)
    }

    private fun readIntSet(key: String): MutableSet<Int> {
        val raw = prefs.getString(key, null) ?: return mutableSetOf()
        return try {
            val type = object : TypeToken<List<Int>>() {}.type
            (gson.fromJson<List<Int>>(raw, type) ?: emptyList()).toMutableSet()
        } catch (_: Exception) {
            mutableSetOf()
        }
    }

    private fun readStringSet(key: String): MutableSet<String> {
        val raw = prefs.getString(key, null) ?: return mutableSetOf()
        return try {
            val type = object : TypeToken<List<String>>() {}.type
            (gson.fromJson<List<String>>(raw, type) ?: emptyList()).toMutableSet()
        } catch (_: Exception) {
            mutableSetOf()
        }
    }

    private fun persistChannels() {
        prefs.edit()
            .putString(KEY_LOCKED_CHANNELS, gson.toJson(lockedChannels.toList()))
            .apply()
    }

    private fun persistGroups() {
        prefs.edit()
            .putString(KEY_BLOCKED_LIVE, gson.toJson(blockedLiveGroups.toList()))
            .putString(KEY_BLOCKED_VOD, gson.toJson(blockedVodGroups.toList()))
            .putString(KEY_BLOCKED_SERIES, gson.toJson(blockedSeriesGroups.toList()))
            .apply()
    }

    companion object {
        const val LOCK_CATEGORY_ID = "__parental_lock__"
        const val PIN_LENGTH = 4
        const val DEFAULT_PIN = "0000"

        private const val PREFS = "gadirtv_parental"
        private const val KEY_PIN = "pin"
        private const val KEY_LOCKED_CHANNELS = "locked_channels"
        private const val KEY_BLOCKED_LIVE = "blocked_live_groups"
        private const val KEY_BLOCKED_VOD = "blocked_vod_groups"
        private const val KEY_BLOCKED_SERIES = "blocked_series_groups"
        private const val KEY_ADULT_DEFAULTS_APPLIED = "adult_defaults_applied"
    }
}

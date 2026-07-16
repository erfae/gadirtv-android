package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.util.CategorySort
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

class ParentalControlStore(context: Context) {
    private val prefs = (context.applicationContext ?: context)
        .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()
    private var lockedChannels = mutableSetOf<Int>()
    private var channelsLoaded = false

    fun getPin(): String = prefs.getString(KEY_PIN, DEFAULT_PIN) ?: DEFAULT_PIN

    fun changePin(current: String, newPin: String): Boolean {
        if (!verifyPin(current) || newPin.length != PIN_LENGTH) return false
        prefs.edit().putString(KEY_PIN, newPin).apply()
        return true
    }

    fun verifyPin(input: String): Boolean =
        getPin().equals(input.trim(), ignoreCase = true)

    fun isChannelLocked(streamId: Int): Boolean {
        hydrateChannels()
        return lockedChannels.contains(streamId)
    }

    fun hasLockedChannels(): Boolean {
        hydrateChannels()
        return lockedChannels.isNotEmpty()
    }

    fun lockedChannelIds(): Set<Int> {
        hydrateChannels()
        return lockedChannels.toSet()
    }

    fun toggleChannelLock(streamId: Int): Boolean {
        hydrateChannels()
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

    fun requiresPinForLiveCategory(categoryId: String?): Boolean = when (categoryId) {
        null, "" -> false
        LOCK_CATEGORY_ID -> hasLockedChannels()
        else -> isAdultLiveCategory(categoryId)
    }

    fun requiresPinForChannel(channel: LiveChannel, selectedCategoryId: String?): Boolean {
        if (isChannelLocked(channel.streamId)) return true
        if (selectedCategoryId == null) {
            return isAdultLiveChannel(channel)
        }
        return false
    }

    fun canLockChannel(channel: LiveChannel): Boolean =
        !isAdultLiveChannel(channel)

    private fun categoryName(categories: List<Category>, categoryId: String): String? =
        categories.firstOrNull { it.id == categoryId }?.name

    private fun hydrateChannels() {
        if (channelsLoaded) return
        channelsLoaded = true
        val raw = prefs.getString(KEY_LOCKED_CHANNELS, null) ?: return
        try {
            val type = object : TypeToken<List<Int>>() {}.type
            val ids: List<Int> = gson.fromJson(raw, type) ?: emptyList()
            lockedChannels = ids.toMutableSet()
        } catch (_: Exception) {
            lockedChannels = mutableSetOf()
        }
    }

    private fun persistChannels() {
        prefs.edit()
            .putString(KEY_LOCKED_CHANNELS, gson.toJson(lockedChannels.toList()))
            .apply()
    }

    companion object {
        const val LOCK_CATEGORY_ID = "__parental_lock__"
        const val PIN_LENGTH = 4
        const val DEFAULT_PIN = "0000"

        private const val PREFS = "gadirtv_parental"
        private const val KEY_PIN = "pin"
        private const val KEY_LOCKED_CHANNELS = "locked_channels"
    }
}

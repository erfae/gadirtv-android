package com.gadir.tv.data

/** Unlocks parental gates for the current app session after a valid PIN. */
object ParentalSession {
    private val unlocked = mutableSetOf<String>()

    fun unlock(key: String) {
        unlocked.add(key)
    }

    fun lock(key: String) {
        unlocked.remove(key)
    }

    fun isUnlocked(key: String): Boolean = key in unlocked

    fun clear() {
        unlocked.clear()
    }

    fun liveCategoryKey(categoryId: String): String = "live:$categoryId"

    fun vodCategoryKey(categoryId: String): String = "vod:$categoryId"

    fun seriesCategoryKey(categoryId: String): String = "series:$categoryId"

    fun liveChannelKey(streamId: Int): String = "liveCh:$streamId"
}

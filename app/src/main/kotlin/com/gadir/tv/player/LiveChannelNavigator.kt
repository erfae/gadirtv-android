package com.gadir.tv.player

import android.content.Context
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.LiveChannel

object LiveChannelNavigator {
    fun setPlaybackContext(context: Context, channel: LiveChannel, groupCategoryId: String?) {
        val store = LiveChannelStore(context)
        store.lastStreamId = channel.streamId
        store.lastCategoryId = groupCategoryId ?: channel.categoryId
    }

    fun channelsInGroup(context: Context): List<LiveChannel> {
        val settings = AppSettings(context)
        val categoryId = LiveChannelStore(context).lastCategoryId.orEmpty()
        return when (categoryId) {
            FavoritesStore.FAVORITES_CATEGORY_ID -> {
                val favorites = FavoritesStore(context)
                PlaylistRepository.channelsFor(null, settings.liveSortMode).filter {
                    favorites.isFavorite(FavoritesStore.KIND_LIVE, it.streamId)
                }
            }
            else -> PlaylistRepository.channelsFor(categoryId.ifEmpty { null }, settings.liveSortMode)
        }
    }

    fun neighbor(context: Context, currentStreamId: Int, delta: Int): LiveChannel? {
        val channels = channelsInGroup(context)
        if (channels.isEmpty()) return null
        val index = channels.indexOfFirst { it.streamId == currentStreamId }.takeIf { it >= 0 } ?: 0
        val next = (index + delta).coerceIn(0, channels.lastIndex)
        if (next == index) return null
        return channels[next]
    }
}

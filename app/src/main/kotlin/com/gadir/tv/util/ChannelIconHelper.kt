package com.gadir.tv.util

import android.widget.ImageView
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import java.net.URLEncoder

object ChannelIconHelper {
    fun load(target: ImageView, channel: LiveChannel) {
        val fallbacks = panelFallbackUrls(PlaylistRepository.profile, channel.streamId)
        ImageLoader.loadChannelIcon(target, channel.icon, fallbacks)
    }

    fun panelFallbackUrls(profile: Profile?, streamId: Int): List<String> {
        if (profile == null || streamId <= 0) return emptyList()
        val base = HostUtils.baseUrl(profile.host)
        val user = encode(profile.username)
        val pass = encode(profile.password)
        return listOf(
            "$base/images/$streamId.png",
            "$base/images/$streamId.jpg",
            "$base/streaming/images/$streamId.png",
            "$base/streaming/images/$streamId.jpg",
            "$base/live/$user/$pass/$streamId.png",
            "$base/live/$user/$pass/$streamId.jpg",
        )
    }

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())
}

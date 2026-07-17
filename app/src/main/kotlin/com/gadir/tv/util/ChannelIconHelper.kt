package com.gadir.tv.util

import android.widget.ImageView
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import java.net.URLEncoder

object ChannelIconHelper {
    fun load(target: ImageView, channel: LiveChannel) {
        val fallbacks = panelFallbackUrls(PlaylistRepository.profile, channel)
        ImageLoader.loadChannelIcon(target, channel.icon, fallbacks)
    }

    fun panelFallbackUrls(profile: Profile?, channel: LiveChannel): List<String> {
        if (profile == null || channel.streamId <= 0) return emptyList()
        return panelFallbackUrls(profile, channel.streamId, channel.icon, channel.epgChannelId)
    }

    fun panelFallbackUrls(
        profile: Profile?,
        streamId: Int,
        icon: String = "",
        epgChannelId: String = "",
    ): List<String> {
        if (profile == null || streamId <= 0) return emptyList()
        val base = HostUtils.baseUrl(profile.host).trimEnd('/')
        val user = encode(profile.username)
        val pass = encode(profile.password)
        return buildList {
            val resolvedIcon = ImageUrlResolver.resolve(icon)
            if (resolvedIcon.isNotBlank()) add(resolvedIcon)
            add("$base/images/$streamId.png")
            add("$base/images/$streamId.jpg")
            add("$base/images/$streamId.jpeg")
            add("$base/images/$streamId.webp")
            add("$base/imgs/$streamId.png")
            add("$base/imgs/$streamId.jpg")
            add("$base/logo/$streamId.png")
            add("$base/logos/$streamId.png")
            add("$base/stream/logo/$streamId.png")
            add("$base/streaming/images/$streamId.png")
            add("$base/streaming/images/$streamId.jpg")
            add("$base/live/$user/$pass/$streamId.png")
            add("$base/live/$user/$pass/$streamId.jpg")
            add("$base/live/$user/$pass/$streamId.ts.png")
            add("$base/streaming/clients_live.php?username=$user&password=$pass&stream=$streamId&type=image")
            if (epgChannelId.isNotBlank()) {
                val epg = encode(epgChannelId)
                add("$base/images/$epg.png")
                add("$base/images/$epg.jpg")
                add("$base/imgs/$epg.png")
            }
        }.distinct().filter { it.isNotBlank() }
    }

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())
}

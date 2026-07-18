package com.gadir.tv.util

import android.widget.ImageView
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import java.net.URLEncoder

object ChannelIconHelper {
    fun load(target: ImageView, channel: LiveChannel) {
        val fallbacks = panelFallbackUrls(PlaylistRepository.profile, channel)
        val density = target.resources.displayMetrics.density
        val size = (44 * density).toInt().coerceAtLeast(96)
        ImageLoader.loadChannelIcon(target, channel.icon, fallbacks, size)
    }

    fun panelFallbackUrls(profile: Profile?, channel: LiveChannel): List<String> {
        if (profile == null || channel.streamId <= 0) return emptyList()
        val baseFallbacks = panelFallbackUrls(
            profile = profile,
            streamId = channel.streamId,
            icon = channel.icon,
            epgChannelId = channel.epgChannelId,
            channelName = channel.name,
        )
        val direct = channel.directSource.trim()
        return if (direct.startsWith("http") && looksLikeImage(direct)) {
            (listOf(direct) + baseFallbacks).distinct()
        } else {
            baseFallbacks
        }
    }

    fun panelFallbackUrls(
        profile: Profile?,
        streamId: Int,
        icon: String = "",
        epgChannelId: String = "",
        channelName: String = "",
    ): List<String> {
        if (profile == null || streamId <= 0) return emptyList()
        val base = HostUtils.baseUrl(profile.host).trimEnd('/')
        val user = encode(profile.username)
        val pass = encode(profile.password)
        val slug = slugify(channelName)
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
            add("$base/static/logos/$streamId.png")
            add("$base/stream/logo/$streamId.png")
            add("$base/streaming/images/$streamId.png")
            add("$base/streaming/images/$streamId.jpg")
            add("$base/live/$user/$pass/$streamId.png")
            add("$base/live/$user/$pass/$streamId.jpg")
            add("$base/live/$user/$pass/$streamId.ts.png")
            add("$base/streaming/clients_live.php?username=$user&password=$pass&stream=$streamId&type=image")
            if (slug.isNotBlank()) {
                add("$base/images/$slug.png")
                add("$base/logos/$slug.png")
            }
            slugVariants(channelName).forEach { variant ->
                add("$base/images/$variant.png")
                add("$base/images/$variant.jpg")
                add("$base/logos/$variant.png")
                add("$base/imgs/$variant.png")
            }
            if (epgChannelId.isNotBlank()) {
                val epg = encode(epgChannelId)
                add("$base/images/$epg.png")
                add("$base/images/$epg.jpg")
                add("$base/imgs/$epg.png")
            }
        }.distinct().filter { it.isNotBlank() }
    }

    private fun slugify(name: String): String =
        name.lowercase()
            .replace(Regex("[^a-z0-9]+"), "")
            .take(48)

    private fun slugVariants(name: String): List<String> = buildList {
        val base = slugify(name)
        if (base.isNotBlank()) add(base)
        val compact = name.lowercase().replace(Regex("[^a-z0-9]"), "")
        if (compact.isNotBlank() && compact != base) add(compact)
        val dashed = name.lowercase()
            .trim()
            .replace(Regex("\\s+"), "-")
            .replace(Regex("[^a-z0-9-]"), "")
        if (dashed.isNotBlank() && dashed !in this) add(dashed)
    }

    private fun looksLikeImage(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains(".png") ||
            lower.contains(".jpg") ||
            lower.contains(".jpeg") ||
            lower.contains(".webp") ||
            lower.contains(".gif") ||
            lower.contains("/images/") ||
            lower.contains("type=image")
    }

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())
}

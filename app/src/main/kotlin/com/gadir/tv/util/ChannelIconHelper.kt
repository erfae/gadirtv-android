package com.gadir.tv.util

import android.widget.ImageView
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.util.ChannelIconCache
import com.gadir.tv.util.ImagePreloader
import com.gadir.tv.util.NetworkUrlResolver
import java.net.URLEncoder

object ChannelIconHelper {
    private const val LIST_ICON_MAX_FALLBACKS = 32
    private const val PANEL_FALLBACK_LIMIT = 10

    // Building fallback URLs touches PiconUrls + panelFallbackUrls (regex slugify, URL
    // encoding, NetworkUrlResolver) on every call. The result only depends on the channel's
    // own fields, but RecyclerView re-binds the same channel on every scroll pass — memoize
    // per streamId to keep D-pad scrolling through the channel list smooth.
    private val fallbackCache = java.util.concurrent.ConcurrentHashMap<Int, List<String>>()

    fun clearFallbackCache() {
        fallbackCache.clear()
    }

    fun loadListIcon(target: ImageView, channel: LiveChannel) {
        val density = target.resources.displayMetrics.density
        val size = (44 * density).toInt().coerceAtLeast(96)
        val primary = channel.icon.trim()
        val fallbacks = iconFallbackUrls(channel, primary)
        ImageLoader.loadChannelIcon(
            target = target,
            url = primary,
            fallbacks = fallbacks,
            sizePx = size,
            loadTag = channel.streamId,
            maxFallbacks = LIST_ICON_MAX_FALLBACKS,
            channelName = channel.name,
        )
    }

    suspend fun preloadListIcon(context: android.content.Context, channel: LiveChannel) {
        val urls = buildList {
            ChannelIconCache.get(channel.streamId)?.let { add(it) }
            if (channel.icon.isNotBlank()) add(channel.icon)
            addAll(PiconUrls.candidates(channel))
            addAll(panelFallbackUrls(PlaylistRepository.profile, channel).take(PANEL_FALLBACK_LIMIT))
        }.distinct().filter { it.isNotBlank() }.take(LIST_ICON_MAX_FALLBACKS)
        if (urls.isEmpty()) return
        ImagePreloader.preloadUrls(context, urls, 128, 128, 4)
    }

    fun loadPanelIcon(target: ImageView, channel: LiveChannel) {
        val density = target.resources.displayMetrics.density
        val size = (64 * density).toInt().coerceAtLeast(128)
        val primary = channel.icon.trim()
        val fallbacks = iconFallbackUrls(channel, primary)
        ImageLoader.loadChannelIcon(
            target = target,
            url = primary,
            fallbacks = fallbacks,
            sizePx = size,
            loadTag = channel.streamId,
            maxFallbacks = LIST_ICON_MAX_FALLBACKS,
            channelName = channel.name,
        )
    }

    private fun iconFallbackUrls(channel: LiveChannel, primary: String): List<String> {
        if (channel.streamId > 0) {
            fallbackCache[channel.streamId]?.let { return it }
        }
        val result = buildList {
            addAll(PiconUrls.candidates(channel))
            addAll(panelFallbackUrls(PlaylistRepository.profile, channel).take(PANEL_FALLBACK_LIMIT))
        }
            .map { ImageUrlResolver.resolve(it) }
            .filter { it.isNotBlank() && it != primary }
            .distinct()
            .take(LIST_ICON_MAX_FALLBACKS)
        if (channel.streamId > 0 && result.isNotEmpty()) {
            fallbackCache[channel.streamId] = result
        }
        return result
    }

    /** @deprecated Use [loadListIcon] or [loadPanelIcon]. */
    fun load(target: ImageView, channel: LiveChannel) = loadPanelIcon(target, channel)

    fun panelFallbackUrls(profile: Profile?, channel: LiveChannel): List<String> {
        if (profile == null || channel.streamId <= 0) return emptyList()
        return panelFallbackUrls(
            profile = profile,
            streamId = channel.streamId,
            icon = channel.icon,
            epgChannelId = channel.epgChannelId,
            channelName = channel.name,
        )
    }

    fun panelFallbackUrls(
        profile: Profile?,
        streamId: Int,
        icon: String = "",
        epgChannelId: String = "",
        channelName: String = "",
    ): List<String> {
        if (profile == null || streamId <= 0) return emptyList()
        val base = HostUtils.baseUrl(
            com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host),
        ).trimEnd('/')
        val user = encode(profile.username)
        val pass = encode(profile.password)
        val slug = slugify(channelName)
        return buildList {
            val resolvedIcon = ImageUrlResolver.resolve(icon)
            if (resolvedIcon.isNotBlank() && resolvedIcon != icon) add(resolvedIcon)
            add("$base/images/$streamId.png")
            add("$base/images/$streamId.jpg")
            add("$base/imgs/$streamId.png")
            add("$base/logo/$streamId.png")
            add("$base/logos/$streamId.png")
            add("$base/live/$user/$pass/$streamId.png")
            add("$base/streaming/clients_live.php?username=$user&password=$pass&stream=$streamId&type=image")
            if (slug.isNotBlank()) {
                add("$base/images/$slug.png")
                add("$base/logos/$slug.png")
            }
            if (epgChannelId.isNotBlank()) {
                val epg = encode(epgChannelId)
                add("$base/images/$epg.png")
                add("$base/imgs/$epg.png")
            }
        }.distinct().filter { it.isNotBlank() }.map { NetworkUrlResolver.resolveUrl(it) }
    }

    private fun slugify(name: String): String =
        name.lowercase()
            .replace(Regex("[^a-z0-9]+"), "")
            .take(48)

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())
}

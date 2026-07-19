package com.gadir.tv.player

import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/**
 * Live playback URLs. Short form (no /live/ prefix) avoids nginx 301 → gadir.co redirect
 * that breaks on TV boxes when DNS fails.
 */
object LiveStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> =
        buildCandidates(api, profile, channel, tvSafe = false)

    fun tvCandidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val urls = linkedSetOf<String>()
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId))
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId, "ts"))
        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        if (ext.isNotEmpty() && ext !in setOf("ts", "m3u8")) {
            urls.add(api.liveStreamUrlDirect(profile, channel.streamId, ext))
        }
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId, "m3u8"))
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            urls.add(com.gadir.tv.util.NetworkUrlResolver.resolveUrl(direct))
        }
        return urls.filter { it.isNotBlank() }.distinct()
    }

    private fun buildCandidates(
        api: XtreamApi,
        profile: Profile,
        channel: LiveChannel,
        tvSafe: Boolean,
    ): List<String> {
        val urls = linkedSetOf<String>()
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId))
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId, "ts"))
        if (!tvSafe) {
            val ext = channel.extension.ifBlank { "ts" }.lowercase()
            if (ext.isNotEmpty() && ext !in setOf("ts", "m3u8")) {
                urls.add(api.liveStreamUrlDirect(profile, channel.streamId, ext))
            }
            val direct = channel.directSource.trim()
            if (direct.isNotEmpty() && direct.startsWith("http")) {
                urls.add(direct)
            }
        }
        return urls.filter { it.isNotBlank() }.distinct()
    }

    fun primary(api: XtreamApi, profile: Profile, channel: LiveChannel): String =
        candidates(api, profile, channel).first()

    fun mediaItem(url: String): MediaItem {
        val builder = MediaItem.Builder().setUri(url)
        when {
            url.contains(".m3u8", ignoreCase = true) ->
                builder.setMimeType(MimeTypes.APPLICATION_M3U8)
            url.contains(".ts", ignoreCase = true) ->
                builder.setMimeType(MimeTypes.VIDEO_MP2T)
            else -> builder.setMimeType(MimeTypes.VIDEO_MP2T)
        }
        return builder.build()
    }
}

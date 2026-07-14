package com.gadir.tv.player

import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

object LiveStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val urls = linkedSetOf<String>()
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            urls.add(direct)
        }

        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        if (ext.isNotEmpty() && ext !in setOf("ts", "m3u8")) {
            urls.add(api.streamUrl(profile, channel.streamId, ext))
        }
        // TS primero en canales nativos (más fluido); HLS como alternativa con audio.
        if (ext == "m3u8") {
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        } else {
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
        }
        urls.add(api.streamUrlWithoutExtension(profile, channel.streamId))
        if (ext == "mp4") {
            urls.add(api.streamUrl(profile, channel.streamId, "mp4"))
        }
        return urls.filter { it.isNotBlank() }.toList()
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
        }
        return builder.build()
    }
}

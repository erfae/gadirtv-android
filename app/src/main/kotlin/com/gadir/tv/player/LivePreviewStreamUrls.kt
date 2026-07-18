package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/** Preview live: TS primero (FHD/4K); HLS como alternativa. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        if (isHighBitrateChannel(channel)) {
            return LiveStreamUrls.candidates(api, profile, channel)
        }

        val urls = linkedSetOf<String>()
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            urls.add(direct)
        }

        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        if (ext.isNotEmpty() && ext !in setOf("ts", "m3u8")) {
            urls.add(api.streamUrl(profile, channel.streamId, ext))
        }
        if (ext == "m3u8") {
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        } else {
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
        }
        urls.add(api.streamUrlWithoutExtension(profile, channel.streamId))
        return urls.filter { it.isNotBlank() }
    }

    private fun isHighBitrateChannel(channel: LiveChannel): Boolean {
        val name = channel.name.uppercase()
        return name.contains("4K") ||
            name.contains("FHD") ||
            name.contains("UHD") ||
            name.contains("1080") ||
            name.contains("2160") ||
            name.contains("HEVC")
    }
}

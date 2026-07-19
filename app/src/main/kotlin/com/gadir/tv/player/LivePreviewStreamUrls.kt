package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/** Preview live: HLS primero (adaptativo), sin direct_source 4K que crashea en TV. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val urls = linkedSetOf<String>()
        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        // HLS primero en preview: arranca en bitrate bajo y evita OOM en FHD/4K.
        when (ext) {
            "m3u8" -> {
                urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
                urls.add(api.streamUrl(profile, channel.streamId, "ts"))
            }
            "ts" -> {
                urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
                urls.add(api.streamUrl(profile, channel.streamId, "ts"))
            }
            else -> {
                urls.add(api.streamUrl(profile, channel.streamId, ext))
                urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
                urls.add(api.streamUrl(profile, channel.streamId, "ts"))
            }
        }
        urls.add(api.streamUrlWithoutExtension(profile, channel.streamId))
        if (ext == "mp4") {
            urls.add(api.streamUrl(profile, channel.streamId, "mp4"))
        }
        return urls.filter { it.isNotBlank() }.toList()
    }
}

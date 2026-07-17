package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/** Preview live: prioriza HLS para audio más fiable en mini reproductor. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val urls = linkedSetOf<String>()
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            urls.add(direct)
        }

        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        if (ext == "m3u8") {
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        } else {
            urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
            urls.add(api.streamUrl(profile, channel.streamId, ext))
            urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        }
        urls.add(api.streamUrlWithoutExtension(profile, channel.streamId))
        return urls.filter { it.isNotBlank() }
    }
}

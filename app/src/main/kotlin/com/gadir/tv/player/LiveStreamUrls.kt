package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

object LiveStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val ext = channel.extension.ifBlank { "ts" }
        val urls = linkedSetOf<String>()
        urls.add(api.streamUrl(profile, channel.streamId, ext))
        urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
        urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        if (ext !in setOf("m3u8", "ts", "mp4")) {
            urls.add(api.streamUrl(profile, channel.streamId, "mp4"))
        }
        return urls.toList()
    }

    fun primary(api: XtreamApi, profile: Profile, channel: LiveChannel): String =
        candidates(api, profile, channel).first()
}

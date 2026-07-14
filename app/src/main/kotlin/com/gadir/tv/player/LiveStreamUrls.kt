package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

object LiveStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val ext = channel.extension.ifBlank { "ts" }
        val urls = linkedSetOf<String>()
        urls.add(api.streamUrl(profile, channel.streamId, ext))
        if (ext != "m3u8") urls.add(api.streamUrl(profile, channel.streamId, "m3u8"))
        if (ext != "ts") urls.add(api.streamUrl(profile, channel.streamId, "ts"))
        return urls.toList()
    }

    fun primary(api: XtreamApi, profile: Profile, channel: LiveChannel): String =
        candidates(api, profile, channel).first()
}

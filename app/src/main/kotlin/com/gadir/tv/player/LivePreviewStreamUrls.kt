package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.util.NetworkUrlResolver

/** Preview: lightweight ts/direct URLs only (no m3u8) for fast startup on TV boxes. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val urls = linkedSetOf<String>()
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            urls.add(NetworkUrlResolver.resolveUrl(direct))
        }
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId, "ts"))
        urls.add(api.liveStreamUrlDirect(profile, channel.streamId))
        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        if (ext.isNotEmpty() && ext !in setOf("ts", "m3u8")) {
            urls.add(api.liveStreamUrlDirect(profile, channel.streamId, ext))
        }
        return urls.filter { it.isNotBlank() }.distinct()
    }
}

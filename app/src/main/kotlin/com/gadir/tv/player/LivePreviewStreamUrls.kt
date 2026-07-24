package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.util.NetworkUrlResolver

/** Preview: one URL per channel to avoid opening multiple panel connections per zap. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> {
        val direct = channel.directSource.trim()
        if (direct.isNotEmpty() && direct.startsWith("http")) {
            return listOf(NetworkUrlResolver.resolveUrl(direct))
        }
        val ext = channel.extension.ifBlank { "ts" }.lowercase()
        val primary = if (ext.isNotEmpty() && ext != "ts") {
            api.liveStreamUrlDirect(profile, channel.streamId, ext)
        } else {
            api.liveStreamUrlDirect(profile, channel.streamId, "ts")
        }
        return listOf(primary).filter { it.isNotBlank() }
    }
}

package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile
import com.gadir.tv.util.NetworkUrlResolver

/** Preview live: solo HLS (adaptativo) para evitar OOM/crash en FHD/4K en TV. */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> =
        listOf(NetworkUrlResolver.resolveUrl(api.streamUrl(profile, channel.streamId, "m3u8")))
            .filter { it.isNotBlank() }
}

package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/** Preview live: mismas URLs que pantalla completa (TS primero, FHD/4K). */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> =
        LiveStreamUrls.candidates(api, profile, channel)
}

package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.Profile

/** Preview: short direct URLs (no m3u8 redirect to gadir.co). */
object LivePreviewStreamUrls {
    fun candidates(api: XtreamApi, profile: Profile, channel: LiveChannel): List<String> =
        LiveStreamUrls.tvCandidates(api, profile, channel)
}

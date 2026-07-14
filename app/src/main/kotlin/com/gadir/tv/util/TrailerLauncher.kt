package com.gadir.tv.util

import android.content.Context
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(context: Context, rawUrl: String, title: String = "") {
        val url = MetaExtractor.normalizeTrailerUrl(rawUrl) ?: rawUrl.trim()
        if (url.isEmpty()) return
        context.startActivity(TrailerActivity.intent(context, url, title))
    }
}

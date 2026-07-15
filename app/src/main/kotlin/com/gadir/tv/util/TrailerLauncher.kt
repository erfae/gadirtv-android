package com.gadir.tv.util

import android.content.Context
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(context: Context, rawUrl: String, title: String = "") {
        val url = MetaExtractor.normalizeTrailerUrl(rawUrl) ?: return
        if (url.isEmpty()) return
        context.startActivity(TrailerActivity.intent(context, url, title))
    }
}

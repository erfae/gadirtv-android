package com.gadir.tv.util

import android.content.Context
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(context: Context, rawUrl: String, title: String = "") {
        val sources = TrailerResolver.resolveAll(rawUrl, title)
        if (sources.isEmpty()) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
            return
        }
        if (DeviceUi.isTvUi(context)) {
            val youtubeId = YoutubeTrailerHelper.extractId(rawUrl)
                ?: sources.filterIsInstance<TrailerSource.Youtube>().firstOrNull()?.videoId
            if (youtubeId != null && YoutubeTrailerHelper.openExternally(context, youtubeId)) {
                return
            }
        }
        context.startActivity(TrailerActivity.intent(context, rawUrl, title))
    }
}

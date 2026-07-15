package com.gadir.tv.util

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(context: Context, rawUrl: String, title: String = "") {
        val sources = TrailerResolver.resolveAll(rawUrl, title)
        if (sources.isEmpty()) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
            return
        }

        for (source in sources) {
            when (source) {
                is TrailerSource.DirectVideo -> {
                    playDirectVideo(context, title, source.url)
                    return
                }
                is TrailerSource.Youtube -> {
                    if (YoutubeTrailerHelper.openInYoutubeApp(context, source.videoId)) return
                }
                is TrailerSource.ExternalLink -> {
                    if (openExternalViewer(context, source.url)) return
                }
                is TrailerSource.WebPage -> {
                    if (openExternalViewer(context, source.url)) return
                }
            }
        }

        val webUrl = TrailerResolver.firstWebUrl(sources)
        if (webUrl != null) {
            context.startActivity(TrailerActivity.intent(context, webUrl, title))
            return
        }
        Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
    }

    private fun playDirectVideo(context: Context, title: String, url: String) {
        PlaybackLauncher.play(
            context = context,
            request = PlaybackRequest(
                title = title.ifBlank { context.getString(R.string.hero_trailer) },
                url = url,
                kind = ResumeStore.KIND_MOVIE,
            ),
        )
    }

    private fun openExternalViewer(context: Context, url: String): Boolean {
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        if (intent.resolveActivity(context.packageManager) == null) return false
        return try {
            context.startActivity(intent)
            true
        } catch (_: Exception) {
            false
        }
    }
}

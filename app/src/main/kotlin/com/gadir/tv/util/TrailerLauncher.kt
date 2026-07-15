package com.gadir.tv.util

import android.content.Context
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
                    openInApp(context, source.videoId, title)
                    return
                }
                is TrailerSource.ExternalLink -> {
                    if (MetaExtractor.isDirectVideoUrl(source.url)) {
                        playDirectVideo(context, title, source.url)
                        return
                    }
                }
                is TrailerSource.WebPage -> {
                    if (MetaExtractor.isDirectVideoUrl(source.url)) {
                        playDirectVideo(context, title, source.url)
                        return
                    }
                }
            }
        }

        val webUrl = TrailerResolver.firstWebUrl(sources)
        if (webUrl != null) {
            openInApp(context, webUrl, title)
            return
        }
        Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
    }

    private fun openInApp(context: Context, urlOrId: String, title: String) {
        val url = YoutubeTrailerHelper.extractId(urlOrId)?.let { id ->
            "https://www.youtube.com/watch?v=$id"
        } ?: urlOrId
        context.startActivity(TrailerActivity.intent(context, url, title))
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
}

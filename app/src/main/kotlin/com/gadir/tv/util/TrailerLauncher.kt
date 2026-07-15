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
                    if (YoutubeTrailerHelper.openInYoutubeApp(context, source.videoId)) return
                    openInApp(context, "https://www.youtube.com/watch?v=${source.videoId}", title)
                    return
                }
                is TrailerSource.ExternalLink -> {
                    if (MetaExtractor.isDirectVideoUrl(source.url)) {
                        playDirectVideo(context, title, source.url)
                        return
                    }
                    YoutubeTrailerHelper.vimeoEmbedUrl(source.url)?.let { vimeo ->
                        openInApp(context, vimeo, title)
                        return
                    }
                    openInApp(context, source.url, title)
                    return
                }
                is TrailerSource.WebPage -> {
                    if (MetaExtractor.isDirectVideoUrl(source.url)) {
                        playDirectVideo(context, title, source.url)
                        return
                    }
                    YoutubeTrailerHelper.extractId(source.url)?.let { id ->
                        if (YoutubeTrailerHelper.openInYoutubeApp(context, id)) return
                    }
                    openInApp(context, source.url, title)
                    return
                }
            }
        }

        Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
    }

    private fun openInApp(context: Context, url: String, title: String) {
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

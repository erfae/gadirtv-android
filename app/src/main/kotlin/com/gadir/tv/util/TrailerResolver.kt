package com.gadir.tv.util

sealed class TrailerSource {
    data class DirectVideo(val url: String) : TrailerSource()
    data class Vimeo(val videoId: String, val pageUrl: String = "") : TrailerSource()
    data class ExternalLink(val url: String) : TrailerSource()
}

object TrailerResolver {
    fun resolveAll(rawUrl: String, title: String = ""): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        addRaw(sources, rawUrl)
        return sources.toList()
    }

    private fun addRaw(sources: LinkedHashSet<TrailerSource>, raw: String) {
        val trimmed = raw.trim()
        if (trimmed.isEmpty()) return
        if (isYoutubeUrl(trimmed)) return
        classify(trimmed)?.let { sources.add(it) }
        MetaExtractor.normalizeTrailerUrl(trimmed)?.let { normalized ->
            if (normalized != trimmed && !isYoutubeUrl(normalized)) {
                classify(normalized)?.let { sources.add(it) }
            }
        }
    }

    private fun classify(url: String): TrailerSource? {
        if (isYoutubeUrl(url)) return null
        if (MetaExtractor.isDirectVideoUrl(url)) return TrailerSource.DirectVideo(url)
        VimeoStreamResolver.extractId(url)?.let { id ->
            return TrailerSource.Vimeo(id, VimeoStreamResolver.pageUrl(url).orEmpty())
        }
        val lower = url.lowercase()
        when {
            lower.contains("dailymotion.com") ||
                lower.contains("twitch.tv") ||
                lower.contains("facebook.com/watch") -> return TrailerSource.ExternalLink(url)
            url.startsWith("http") && !isYoutubeUrl(url) -> {
                if (MetaExtractor.isDirectVideoUrl(url)) return TrailerSource.DirectVideo(url)
            }
        }
        return null
    }

    private fun isYoutubeUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains("youtube.com") ||
            lower.contains("youtu.be") ||
            lower.contains("youtube-nocookie.com") ||
            lower.contains("piped.video") ||
            lower.contains("yewtu.be") ||
            lower.contains("invidious")
    }

    fun firstPlayableUrl(sources: List<TrailerSource>): String? {
        for (source in sources) {
            when (source) {
                is TrailerSource.DirectVideo -> return source.url
                is TrailerSource.Vimeo -> return source.pageUrl.ifBlank { "https://vimeo.com/${source.videoId}" }
                is TrailerSource.ExternalLink -> return source.url
            }
        }
        return null
    }
}

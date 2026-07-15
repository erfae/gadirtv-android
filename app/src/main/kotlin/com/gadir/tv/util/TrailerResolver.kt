package com.gadir.tv.util

sealed class TrailerSource {
    data class DirectVideo(val url: String) : TrailerSource()
    data class Youtube(val videoId: String) : TrailerSource()
    data class ExternalLink(val url: String) : TrailerSource()
    data class WebPage(val url: String) : TrailerSource()
}

object TrailerResolver {
    fun resolveAll(rawUrl: String, title: String = ""): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        if (title.isNotBlank()) {
            TrailerCatalog.find(title)?.let { addRaw(sources, it) }
        }
        addRaw(sources, rawUrl)
        return sources.toList()
    }

    private fun addRaw(sources: LinkedHashSet<TrailerSource>, raw: String) {
        val trimmed = raw.trim()
        if (trimmed.isEmpty()) return
        classify(trimmed)?.let { sources.add(it) }
        MetaExtractor.normalizeTrailerUrl(trimmed)?.let { normalized ->
            if (normalized != trimmed) classify(normalized)?.let { sources.add(it) }
        }
    }

    private fun classify(url: String): TrailerSource? {
        if (MetaExtractor.isDirectVideoUrl(url)) return TrailerSource.DirectVideo(url)
        YoutubeTrailerHelper.extractId(url)?.let { return TrailerSource.Youtube(it) }
        val lower = url.lowercase()
        when {
            lower.contains("vimeo.com") ||
                lower.contains("dailymotion.com") ||
                lower.contains("twitch.tv") ||
                lower.contains("facebook.com/watch") -> return TrailerSource.ExternalLink(url)
            url.startsWith("http") -> return TrailerSource.WebPage(url)
        }
        return null
    }

    fun firstWebUrl(sources: List<TrailerSource>): String? {
        for (source in sources) {
            when (source) {
                is TrailerSource.Youtube ->
                    return "https://www.youtube.com/watch?v=${source.videoId}"
                is TrailerSource.WebPage -> return source.url
                is TrailerSource.ExternalLink -> return source.url
                is TrailerSource.DirectVideo -> Unit
            }
        }
        return null
    }
}

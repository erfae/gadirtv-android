package com.gadir.tv.util

sealed class TrailerSource {
    data class DirectVideo(val url: String) : TrailerSource()
    /** YouTube video id — resolved to direct MP4 via Invidious/Piped, never opens YouTube app. */
    data class StreamVideo(val videoId: String) : TrailerSource()
    data class Vimeo(val videoId: String, val pageUrl: String = "") : TrailerSource()
    data class Dailymotion(val videoId: String) : TrailerSource()
}

object TrailerResolver {
    fun resolveAll(rawUrl: String, title: String = ""): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        addRaw(sources, rawUrl)
        return sources.toList()
    }

    fun resolveFromTmdb(site: String, key: String): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        when {
            site.equals("YouTube", ignoreCase = true) && key.isNotBlank() ->
                sources.add(TrailerSource.StreamVideo(key))
            site.equals("Vimeo", ignoreCase = true) && key.isNotBlank() ->
                sources.add(TrailerSource.Vimeo(key, "https://vimeo.com/$key"))
            site.equals("Dailymotion", ignoreCase = true) && key.isNotBlank() ->
                sources.add(TrailerSource.Dailymotion(key))
            key.startsWith("http") -> addRaw(sources, key)
        }
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
        YoutubeTrailerHelper.extractId(url)?.let { return TrailerSource.StreamVideo(it) }
        VimeoStreamResolver.extractId(url)?.let { id ->
            return TrailerSource.Vimeo(id, VimeoStreamResolver.pageUrl(url).orEmpty())
        }
        DailymotionStreamResolver.extractId(url)?.let { return TrailerSource.Dailymotion(it) }
        return null
    }

    fun firstPlayableUrl(sources: List<TrailerSource>): String? {
        for (source in sources) {
            when (source) {
                is TrailerSource.DirectVideo -> return source.url
                is TrailerSource.StreamVideo -> return "stream:${source.videoId}"
                is TrailerSource.Vimeo ->
                    return source.pageUrl.ifBlank { "https://vimeo.com/${source.videoId}" }
                is TrailerSource.Dailymotion ->
                    return "https://www.dailymotion.com/video/${source.videoId}"
            }
        }
        return null
    }
}

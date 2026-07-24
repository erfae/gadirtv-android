package com.gadir.tv.util

sealed class TrailerSource {
    data class DirectVideo(val url: String) : TrailerSource()
    data class Vimeo(val videoId: String, val pageUrl: String = "") : TrailerSource()
    data class Dailymotion(val videoId: String) : TrailerSource()
}

object TrailerResolver {
    fun resolveAll(rawUrl: String, title: String = ""): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        addRaw(sources, rawUrl)
        if (sources.isEmpty() && title.isNotBlank()) {
            TrailerSearch.findFallbackSource(title)?.let { sources.add(it) }
        }
        return sources.toList()
    }

    fun resolveFromTmdb(site: String, key: String): List<TrailerSource> {
        val sources = LinkedHashSet<TrailerSource>()
        when {
            site.equals("Vimeo", ignoreCase = true) && key.isNotBlank() ->
                sources.add(TrailerSource.Vimeo(key, "https://vimeo.com/$key"))
            site.equals("Dailymotion", ignoreCase = true) && key.isNotBlank() ->
                sources.add(TrailerSource.Dailymotion(key))
            site.equals("Direct", ignoreCase = true) && key.startsWith("http") ->
                addRaw(sources, key)
        }
        return sources.toList()
    }

    fun hasPlayableSource(rawUrl: String, title: String = ""): Boolean =
        resolveAll(rawUrl, title).isNotEmpty()

    private fun addRaw(sources: LinkedHashSet<TrailerSource>, raw: String) {
        val trimmed = raw.trim()
        if (trimmed.isEmpty() || isYoutubeUrl(trimmed)) return
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
        DailymotionStreamResolver.extractId(url)?.let { return TrailerSource.Dailymotion(it) }
        return null
    }

    fun isYoutubeUrl(url: String): Boolean {
        if (url.isBlank()) return false
        if (YoutubeTrailerHelper.extractId(url) != null) return true
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
                is TrailerSource.Vimeo ->
                    return source.pageUrl.ifBlank { "https://vimeo.com/${source.videoId}" }
                is TrailerSource.Dailymotion ->
                    return "https://www.dailymotion.com/video/${source.videoId}"
            }
        }
        return null
    }
}

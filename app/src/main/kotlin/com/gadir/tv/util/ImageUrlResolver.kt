package com.gadir.tv.util

import com.gadir.tv.data.PlaylistRepository

object ImageUrlResolver {
    private val tmdbSizedPath = Regex(
        "^/w\\d+/[\\w.-]+\\.(jpg|jpeg|png|webp)$",
        RegexOption.IGNORE_CASE,
    )
    private val tmdbSizedBare = Regex(
        "^w\\d+/[\\w.-]+\\.(jpg|jpeg|png|webp)$",
        RegexOption.IGNORE_CASE,
    )
    private val tmdbFilePath = Regex(
        "^/[\\w.-]+\\.(jpg|jpeg|png|webp)$",
        RegexOption.IGNORE_CASE,
    )
    private val tmdbBareFile = Regex(
        "^[\\w.-]+\\.(jpg|jpeg|png|webp)$",
        RegexOption.IGNORE_CASE,
    )
    private val panelPathPrefixes = listOf(
        "/images/", "/imgs/", "/logo", "/logos/", "/live/", "/streaming/",
        "/movie/", "/series/", "/static/", "/media/",
    )

    private val tmdbSizedInPath = Regex(
        "(?:^|/)(w\\d+/[\\w.-]+\\.(?:jpg|jpeg|png|webp))$",
        RegexOption.IGNORE_CASE,
    )

    fun resolve(raw: String?, host: String? = PlaylistRepository.profile?.host): String {
        var url = raw?.trim().orEmpty()
        if (url.isEmpty()) return ""

        url = url
            .replace("&amp;", "&")
            .replace("\\/", "/")

        if (url.startsWith("//")) {
            url = "https:$url"
        }

        if (url.startsWith("http://") || url.startsWith("https://")) {
            return url
        }

        if (url.startsWith("/t/p/")) {
            return "https://image.tmdb.org$url"
        }
        tmdbSizedInPath.find(url)?.groupValues?.getOrNull(1)?.let { sized ->
            return "https://image.tmdb.org/t/p/$sized"
        }

        if (tmdbSizedBare.matches(url)) {
            return "https://image.tmdb.org/t/p/$url"
        }
        if (tmdbBareFile.matches(url)) {
            return "https://image.tmdb.org/t/p/w185/$url"
        }

        if (url.startsWith("/")) {
            if (panelPathPrefixes.any { prefix -> url.startsWith(prefix, ignoreCase = true) }) {
                val base = host?.let { HostUtils.baseUrl(it) }.orEmpty()
                return if (base.isEmpty()) url else "$base$url"
            }
            if (tmdbSizedPath.matches(url)) {
                return "https://image.tmdb.org/t/p$url"
            }
            if (tmdbFilePath.matches(url)) {
                return "https://image.tmdb.org/t/p/w500$url"
            }
        }

        val base = host?.let { HostUtils.baseUrl(it) }.orEmpty()
        if (base.isEmpty()) return url

        return if (url.startsWith("/")) {
            "$base$url"
        } else {
            "$base/$url"
        }
    }
}

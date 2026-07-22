package com.gadir.tv.util

import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.net.PanelHttp

/** Resolves cast/actor image paths from Xtream panels and TMDB. */
object CastImageResolver {
    private val htmlImgSrc = Regex(
        """<img[^>]+src\s*=\s*["']([^"']+)["']""",
        RegexOption.IGNORE_CASE,
    )

    fun resolve(raw: String?): String {
        val trimmed = raw?.trim().orEmpty()
        if (trimmed.isEmpty()) return ""

        ImageUrlResolver.resolve(trimmed).takeIf { isLikelyImageUrl(it) }?.let { return it }

        if (trimmed.startsWith("http", ignoreCase = true)) return trimmed

        val path = trimmed.removePrefix("/")
        if (path.startsWith("t/p/", ignoreCase = true)) {
            return "https://image.tmdb.org/$path"
        }
        if (path.matches(Regex("^w\\d+/.+", RegexOption.IGNORE_CASE))) {
            return "https://image.tmdb.org/t/p/$path"
        }

        listOf(
            "/$path",
            "/images/$path",
            "/images/cast/$path",
            "/cast/$path",
            "/actor/$path",
            "/actors/$path",
            "/images/actor/$path",
            "/images/actors/$path",
            path,
        ).forEach { candidate ->
            ImageUrlResolver.resolve(candidate).takeIf { isLikelyImageUrl(it) }?.let { return it }
        }

        if (path.contains('.')) {
            return "https://image.tmdb.org/t/p/w185/$path"
        }
        return ""
    }

    fun candidates(raw: String?): List<String> {
        val trimmed = raw?.trim().orEmpty()
        if (trimmed.isEmpty()) return emptyList()

        return buildList {
            val primary = resolve(trimmed)
            if (primary.isNotBlank()) add(primary)

            if (trimmed.startsWith("http", ignoreCase = true)) return@buildList

            val path = trimmed.removePrefix("/")
            if (path.isBlank()) return@buildList

            add("https://image.tmdb.org/t/p/w185/$path")
            add("https://image.tmdb.org/t/p/w342/$path")
            add("https://image.tmdb.org/t/p/w500/$path")
            if (path.startsWith("t/p/", ignoreCase = true)) {
                add("https://image.tmdb.org/$path")
            }

            val profile = PlaylistRepository.profile ?: return@buildList
            val base = HostUtils.baseUrl(PanelHttp.migrateProfileHost(profile.host)).trimEnd('/')
            listOf(
                "$base/$path",
                "$base/images/$path",
                "$base/images/cast/$path",
                "$base/cast/$path",
                "$base/actor/$path",
                "$base/actors/$path",
                "$base/images/actor/$path",
                "$base/images/actors/$path",
            ).forEach { url ->
                val resolved = NetworkUrlResolver.resolveUrl(url)
                if (resolved.isNotBlank() && resolved !in this) add(resolved)
            }

            ImageUrlResolver.resolve("/$path").takeIf { isLikelyImageUrl(it) && it !in this }?.let { add(it) }
        }.distinct().filter { it.isNotBlank() }
    }

    fun membersFromHtml(html: String): List<Pair<String, String>> {
        if (!html.contains("<img", ignoreCase = true)) return emptyList()
        val members = mutableListOf<Pair<String, String>>()
        for (match in htmlImgSrc.findAll(html)) {
            val image = resolve(match.groupValues[1])
            val tail = html.substring(match.range.last + 1)
            val name = Regex("""[^<]+""").find(tail)?.value?.let { MetaExtractor.stripHtml(it).trim() }.orEmpty()
            if (name.isNotBlank()) {
                members.add(name to image)
            }
        }
        return members
    }

    private fun isLikelyImageUrl(url: String): Boolean {
        if (url.isBlank()) return false
        val lower = url.lowercase()
        return lower.contains("image.tmdb.org") ||
            lower.contains("/images/") ||
            lower.contains("/cast/") ||
            lower.contains("/actor") ||
            lower.matches(Regex(".*\\.(jpg|jpeg|png|gif|webp|bmp)(\\?.*)?$", RegexOption.IGNORE_CASE))
    }
}

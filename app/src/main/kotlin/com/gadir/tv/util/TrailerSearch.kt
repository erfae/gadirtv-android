package com.gadir.tv.util

import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.TmdbApi
import com.gadir.tv.net.NativeHttpClient
import com.google.gson.JsonArray
import com.google.gson.JsonParser
import java.net.URLEncoder

/** Busca tráilers sin YouTube (Dailymotion API pública). */
object TrailerSearch {
    fun findFallbackSource(title: String): TrailerSource? {
        findDailymotionId(title)?.let { return TrailerSource.Dailymotion(it) }
        return null
    }

    fun findDailymotionId(title: String): String? {
        val clean = cleanTitle(title)
        if (clean.isBlank()) return null
        val queries = listOf(
            "$clean tráiler oficial",
            "$clean trailer oficial",
            "$clean tráiler",
            "$clean trailer",
        )
        for (query in queries) {
            searchDailymotion(query)?.let { return it }
        }
        return null
    }

    private fun cleanTitle(title: String): String =
        TmdbApi.cleanTitle(title)
            .replace(Regex("(?i)\\b(4k|uhd|hdr|hd|fhd|1080p|2160p|hevc|x265|x264)\\b"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()

    private fun searchDailymotion(query: String): String? {
        val encoded = encode(query)
        val url =
            "https://api.dailymotion.com/videos?search=$encoded&limit=12&fields=id,title&localization=es_ES"
        val body = fetch(url) ?: return null
        val list = runCatching { JsonParser.parseString(body).asJsonObject.getAsJsonArray("list") }.getOrNull()
            ?: return null
        return pickDailymotionId(list)
    }

    private fun pickDailymotionId(results: JsonArray): String? {
        var fallback: String? = null
        for (element in results) {
            if (!element.isJsonObject) continue
            val item = element.asJsonObject
            val id = item.get("id")?.asString?.takeIf { it.isNotBlank() } ?: continue
            val itemTitle = item.get("title")?.asString.orEmpty().lowercase()
            if (itemTitle.contains("trailer") || itemTitle.contains("tráiler") || itemTitle.contains("teaser")) {
                return id
            }
            if (fallback == null) fallback = id
        }
        return fallback
    }

    private fun fetch(url: String): String? {
        val response = NativeHttpClient.request(url, PlaylistRepository.userAgent, "GET")
        if (response.error != null || response.status != 200 || response.body.isBlank()) return null
        return response.body
    }

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())
}

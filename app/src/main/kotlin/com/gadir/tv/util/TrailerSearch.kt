package com.gadir.tv.util

import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.net.NativeHttpClient
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.net.URLEncoder

object TrailerSearch {
    private val invidiousHosts = listOf(
        "https://invidious.fdn.fr",
        "https://inv.tux.pizza",
        "https://invidious.protokolla.fi",
        "https://yt.artemislena.eu",
    )

    private val pipedHosts = listOf(
        "https://pipedapi.kavin.rocks",
        "https://pipedapi.adminforge.de",
        "https://pipedapi.in.projectsegfau.lt",
    )

    fun findYoutubeId(title: String): String? {
        val clean = cleanTitle(title)
        if (clean.isBlank()) return null
        val queries = listOf(
            "$clean tráiler oficial español",
            "$clean trailer oficial español",
            "$clean tráiler español",
            "$clean trailer español",
            "$clean official trailer",
            "$clean trailer",
        )
        for (query in queries) {
            searchInvidious(query)?.let { return it }
            searchPiped(query)?.let { return it }
        }
        return null
    }

    private fun cleanTitle(title: String): String =
        title
            .replace(Regex("\\(.*?\\)"), " ")
            .replace(Regex("\\[.*?\\]"), " ")
            .replace(Regex("(?i)\\b(4k|uhd|hdr|hd|fhd|1080p|2160p|hevc|x265|x264)\\b"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()

    private fun searchInvidious(query: String): String? {
        val encoded = encode(query)
        for (host in invidiousHosts) {
            val url = "$host/api/v1/search?q=$encoded&type=video"
            val body = fetch(url) ?: continue
            val results = runCatching { JsonParser.parseString(body).asJsonArray }.getOrNull() ?: continue
            pickVideoId(results)?.let { return it }
        }
        return null
    }

    private fun searchPiped(query: String): String? {
        val encoded = encode(query)
        for (host in pipedHosts) {
            val url = "$host/search?q=$encoded&filter=videos"
            val body = fetch(url) ?: continue
            val root = runCatching { JsonParser.parseString(body).asJsonObject }.getOrNull() ?: continue
            val items = root.getAsJsonArray("items") ?: continue
            pickPipedVideoId(items)?.let { return it }
        }
        return null
    }

    private fun pickVideoId(results: JsonArray): String? {
        var fallback: String? = null
        for (element in results) {
            if (!element.isJsonObject) continue
            val item = element.asJsonObject
            if (item.get("type")?.asString != "video") continue
            val id = item.get("videoId")?.asString?.takeIf { it.length >= 8 } ?: continue
            val itemTitle = item.get("title")?.asString.orEmpty().lowercase()
            if (itemTitle.contains("trailer") || itemTitle.contains("tráiler") || itemTitle.contains("teaser")) {
                return id
            }
            if (fallback == null) fallback = id
        }
        return fallback
    }

    private fun pickPipedVideoId(items: JsonArray): String? {
        var fallback: String? = null
        for (element in items) {
            if (!element.isJsonObject) continue
            val item = element.asJsonObject
            val rawUrl = item.get("url")?.asString.orEmpty()
            val id = YoutubeTrailerHelper.extractId(rawUrl) ?: continue
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

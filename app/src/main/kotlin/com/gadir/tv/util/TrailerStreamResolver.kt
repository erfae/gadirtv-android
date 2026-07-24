package com.gadir.tv.util

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.Request

object TrailerStreamResolver {
    private val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .connectTimeout(8, TimeUnit.SECONDS)
            .readTimeout(12, TimeUnit.SECONDS)
            .writeTimeout(8, TimeUnit.SECONDS)
            .followRedirects(true)
            .build()
    }

    private val invidiousHosts = listOf(
        "https://yewtu.be",
        "https://inv.nadeko.net",
        "https://invidious.nerdvpn.de",
        "https://invidious.fdn.fr",
        "https://inv.tux.pizza",
    )

    private val pipedHosts = listOf(
        "https://pipedapi.kavin.rocks",
        "https://pipedapi.adminforge.de",
        "https://api.piped.projectsegfau.lt",
    )

    fun directPlayUrl(videoId: String): String? {
        if (videoId.isBlank()) return null
        for (host in invidiousHosts) {
            invidiousStream(host, videoId)?.let { return it }
        }
        for (host in pipedHosts) {
            pipedStream(host, videoId)?.let { return it }
        }
        return null
    }

    private fun invidiousStream(host: String, videoId: String): String? {
        val body = fetch("$host/api/v1/videos/$videoId") ?: return null
        val root = runCatching { JsonParser.parseString(body).asJsonObject }.getOrNull() ?: return null
        root.getAsJsonArray("formatStreams")?.let { streams ->
            pickStreamUrl(streams, progressive = true)?.let { return it }
        }
        root.getAsJsonArray("adaptiveFormats")?.let { streams ->
            pickStreamUrl(streams, progressive = false)?.let { return it }
        }
        return null
    }

    private fun pipedStream(host: String, videoId: String): String? {
        val body = fetch("$host/streams/$videoId") ?: return null
        val root = runCatching { JsonParser.parseString(body).asJsonObject }.getOrNull() ?: return null
        root.getAsJsonArray("videoStreams")?.let { streams ->
            pickPipedStream(streams)?.let { return it }
        }
        return null
    }

    private fun pickStreamUrl(streams: JsonArray, progressive: Boolean): String? {
        val candidates = mutableListOf<Pair<Int, String>>()
        for (element in streams) {
            if (!element.isJsonObject) continue
            val stream = element.asJsonObject
            val url = stream.get("url")?.asString?.takeIf { it.startsWith("http") } ?: continue
            if (!progressive && stream.get("type")?.asString?.contains("video") != true) continue
            val quality = stream.get("quality")?.asString.orEmpty()
            val score = qualityScore(quality)
            candidates.add(score to url)
        }
        return candidates.maxByOrNull { it.first }?.second
    }

    private fun pickPipedStream(streams: JsonArray): String? {
        val candidates = mutableListOf<Pair<Int, String>>()
        for (element in streams) {
            if (!element.isJsonObject) continue
            val stream = element.asJsonObject
            if (stream.get("videoOnly")?.asBoolean == true) continue
            val url = stream.get("url")?.asString?.takeIf { it.startsWith("http") } ?: continue
            val quality = stream.get("quality")?.asString.orEmpty()
            candidates.add(qualityScore(quality) to url)
        }
        return candidates.maxByOrNull { it.first }?.second
    }

    private fun qualityScore(quality: String): Int {
        val digits = Regex("(\\d+)").find(quality)?.groupValues?.getOrNull(1)?.toIntOrNull() ?: 0
        return digits.coerceAtMost(1080)
    }

    private fun fetch(url: String): String? {
        val request = Request.Builder()
            .url(url)
            .header(
                "User-Agent",
                "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            )
            .header("Accept", "application/json")
            .build()
        return try {
            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) return null
                val body = response.body?.string().orEmpty()
                if (body.isBlank() || body.startsWith("<")) return null
                body
            }
        } catch (_: Exception) {
            null
        }
    }
}

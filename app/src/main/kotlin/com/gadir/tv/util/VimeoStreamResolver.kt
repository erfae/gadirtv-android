package com.gadir.tv.util

import com.google.gson.JsonArray
import com.google.gson.JsonParser
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.Request

/** Resolves Vimeo page URLs to direct progressive MP4 streams for ExoPlayer. */
object VimeoStreamResolver {
    private val idPattern = Regex(
        "(?:vimeo\\.com/(?:video/)?|player\\.vimeo\\.com/video/)(\\d+)",
        RegexOption.IGNORE_CASE,
    )

    private val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .connectTimeout(8, TimeUnit.SECONDS)
            .readTimeout(12, TimeUnit.SECONDS)
            .writeTimeout(8, TimeUnit.SECONDS)
            .followRedirects(true)
            .build()
    }

    fun extractId(url: String): String? {
        val trimmed = url.trim()
        if (trimmed.all { it.isDigit() } && trimmed.length >= 5) return trimmed
        return idPattern.find(trimmed)?.groupValues?.getOrNull(1)
    }

    fun pageUrl(urlOrId: String): String? {
        val id = extractId(urlOrId) ?: return null
        return "https://vimeo.com/$id"
    }

    fun directPlayUrl(urlOrId: String): String? {
        val id = extractId(urlOrId) ?: return null
        val body = fetch("https://player.vimeo.com/video/$id/config") ?: return null
        val root = runCatching { JsonParser.parseString(body).asJsonObject }.getOrNull() ?: return null
        val progressive = root
            .getAsJsonObject("request")
            ?.getAsJsonObject("files")
            ?.getAsJsonArray("progressive")
            ?: return null
        return pickProgressive(progressive)
    }

    private fun pickProgressive(streams: JsonArray): String? {
        val candidates = mutableListOf<Pair<Int, String>>()
        for (element in streams) {
            if (!element.isJsonObject) continue
            val stream = element.asJsonObject
            val url = stream.get("url")?.asString?.takeIf { it.startsWith("http") } ?: continue
            val quality = stream.get("quality")?.asString.orEmpty()
            val height = stream.get("height")?.asInt ?: quality.filter { it.isDigit() }.toIntOrNull() ?: 0
            candidates.add(height to url)
        }
        return candidates.maxByOrNull { it.first }?.second
    }

    private fun fetch(url: String): String? {
        val request = Request.Builder()
            .url(url)
            .header(
                "User-Agent",
                "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            )
            .header("Accept", "application/json")
            .header("Referer", "https://vimeo.com/")
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

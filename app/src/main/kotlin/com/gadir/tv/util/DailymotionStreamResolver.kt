package com.gadir.tv.util

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.Request

/** Resolves Dailymotion video IDs to direct MP4/HLS for ExoPlayer. */
object DailymotionStreamResolver {
    private val idPattern = Regex(
        "dailymotion\\.com/video/([\\w-]+)",
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
        if (trimmed.matches(Regex("[\\w-]{5,}")) && !trimmed.contains('/')) return trimmed
        return idPattern.find(trimmed)?.groupValues?.getOrNull(1)
    }

    fun directPlayUrl(urlOrId: String): String? {
        val id = extractId(urlOrId) ?: return null
        val body = fetch("https://www.dailymotion.com/player/metadata/video/$id") ?: return null
        val root = runCatching { JsonParser.parseString(body).asJsonObject }.getOrNull() ?: return null
        pickFromQualities(root.getAsJsonObject("qualities"))
            ?.let { return it }
        return root.get("url")?.asString?.takeIf { it.startsWith("http") }
    }

    private fun pickFromQualities(qualities: JsonObject?): String? {
        if (qualities == null) return null
        val order = listOf("1080", "720", "480", "380", "240", "144")
        for (quality in order) {
            val streams = qualities.getAsJsonArray(quality) ?: continue
            for (element in streams) {
                if (!element.isJsonObject) continue
                val url = element.asJsonObject.get("url")?.asString?.takeIf { it.startsWith("http") }
                if (url != null) return url
            }
        }
        for (entry in qualities.entrySet()) {
            val streams = entry.value?.asJsonArray ?: continue
            for (element in streams) {
                if (!element.isJsonObject) continue
                val url = element.asJsonObject.get("url")?.asString?.takeIf { it.startsWith("http") }
                if (url != null) return url
            }
        }
        return null
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

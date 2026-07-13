package com.gadir.tv.util

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject

object MetaExtractor {
    private val plotKeys = listOf(
        "plot", "description", "overview", "synopsis", "bio", "storyline", "summary",
    )

    private val trailerSpanishKeys = listOf(
        "youtube_trailer_es", "trailer_es", "trailer_spanish", "youtube_id_es",
        "trailer_lang_es", "youtube_trailer_spanish",
    )

    private val trailerKeys = listOf(
        "youtube_trailer", "trailer", "youtube_id", "trailer_url",
    )

    fun plotFrom(vararg sources: JsonObject?): String {
        for (source in sources) {
            if (source == null) continue
            for (key in plotKeys) {
                val value = stripHtml(source.get(key)?.asStringOrNull())
                if (value.isNotBlank()) return value
            }
        }
        return ""
    }

    fun trailerFrom(title: String, vararg sources: JsonObject?): String? {
        TrailerCatalog.find(title)?.let { return it }
        for (source in sources) {
            if (source == null) continue
            for (key in trailerSpanishKeys) {
                normalizeTrailerUrl(source.get(key)?.asStringOrNull())?.let { return it }
            }
        }
        for (source in sources) {
            if (source == null) continue
            for (key in trailerKeys) {
                normalizeTrailerUrl(source.get(key)?.asStringOrNull())?.let { return it }
            }
        }
        return null
    }

    fun imageFrom(json: JsonObject?, vararg keys: String): String {
        if (json == null) return ""
        for (key in keys) {
            val el = json.get(key) ?: continue
            val value = when {
                el.isJsonArray -> el.asJsonArray.firstString()
                else -> el.asStringOrNull()
            }
            if (!value.isNullOrBlank()) return value
        }
        return ""
    }

    fun normalizeTrailerUrl(raw: String?): String? {
        val value = raw?.trim().orEmpty()
        if (value.isEmpty()) return null
        if (value.startsWith("http")) return value
        if (value.length >= 8) return "https://www.youtube.com/watch?v=$value"
        return null
    }

    fun stripHtml(text: String?): String {
        if (text.isNullOrBlank()) return ""
        return text
            .replace(Regex("<[^>]+>"), " ")
            .replace("&nbsp;", " ")
            .replace("&amp;", "&")
            .replace("&quot;", "\"")
            .replace("&#39;", "'")
            .replace(Regex("\\s+"), " ")
            .trim()
    }

    private fun JsonArray.firstString(): String? {
        for (el in this) {
            val value = el.asStringOrNull()
            if (!value.isNullOrBlank()) return value
        }
        return null
    }

    private fun JsonElement.asStringOrNull(): String? =
        if (isJsonNull) null else try {
            asString
        } catch (_: Exception) {
            null
        }
}

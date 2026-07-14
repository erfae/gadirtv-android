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
        "youtube_trailer_id", "trailer_youtube", "yt_trailer", "video_trailer",
        "trailer_link", "trailer_youtube_id",
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
                trailerFromElement(source.get(key))?.let { return it }
            }
        }
        for (source in sources) {
            if (source == null) continue
            for (key in trailerKeys) {
                trailerFromElement(source.get(key))?.let { return it }
            }
        }
        for (source in sources) {
            if (source == null) continue
            trailerFromElement(source.get("trailers"))?.let { return it }
            trailerFromElement(source.get("videos"))?.let { return it }
        }
        return null
    }

    fun textFrom(json: JsonObject?, vararg keys: String): String {
        if (json == null) return ""
        for (key in keys) {
            val value = stripHtml(json.get(key)?.asStringOrNull())
            if (value.isNotBlank()) return value
        }
        return ""
    }

    fun castFrom(vararg sources: JsonObject?): String {
        val keys = listOf("cast", "actors", "starring", "actor")
        for (source in sources) {
            if (source == null) continue
            for (key in keys) {
                val value = stripHtml(source.get(key)?.asStringOrNull())
                if (value.isNotBlank()) return value
            }
        }
        return ""
    }

    fun directorFrom(vararg sources: JsonObject?): String {
        val keys = listOf("director", "directors")
        for (source in sources) {
            if (source == null) continue
            for (key in keys) {
                val value = stripHtml(source.get(key)?.asStringOrNull())
                if (value.isNotBlank()) return value
            }
        }
        return ""
    }

    fun imageFrom(json: JsonObject?, vararg keys: String): String {
        if (json == null) return ""
        for (key in keys) {
            val el = json.get(key) ?: continue
            val value = when {
                el.isJsonArray -> el.asJsonArray.firstString()
                el.isJsonPrimitive -> el.asStringOrNull()
                el.isJsonObject -> imageFrom(el.asJsonObject, "url", "path", "cover", "image")
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

    private fun trailerFromElement(el: JsonElement?): String? {
        if (el == null || el.isJsonNull) return null
        return when {
            el.isJsonPrimitive -> normalizeTrailerUrl(el.asString)
            el.isJsonArray -> {
                for (item in el.asJsonArray) {
                    trailerFromElement(item)?.let { return it }
                }
                null
            }
            el.isJsonObject -> {
                val obj = el.asJsonObject
                normalizeTrailerUrl(obj.get("url")?.asStringOrNull())
                    ?: normalizeTrailerUrl(obj.get("trailer")?.asStringOrNull())
                    ?: normalizeTrailerUrl(obj.get("youtube_id")?.asStringOrNull())
                    ?: normalizeTrailerUrl(obj.get("id")?.asStringOrNull())
                    ?: normalizeTrailerUrl(obj.get("source")?.asStringOrNull())
            }
            else -> null
        }
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
            val value = when {
                el.isJsonPrimitive -> el.asStringOrNull()
                el.isJsonObject -> imageFrom(el.asJsonObject, "url", "path", "cover", "image")
                else -> null
            }
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

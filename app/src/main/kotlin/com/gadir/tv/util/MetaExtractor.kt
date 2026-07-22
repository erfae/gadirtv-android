package com.gadir.tv.util

import com.gadir.tv.model.CastMember
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject

object MetaExtractor {
    private val plotKeys = listOf(
        "plot", "description", "overview", "synopsis", "bio", "storyline", "summary",
        "descripcion", "sinopsis", "argumento", "descr",
    )

    private val trailerSpanishKeys = listOf(
        "youtube_trailer_es", "trailer_es", "trailer_spanish", "youtube_id_es",
        "trailer_lang_es", "youtube_trailer_spanish", "trailer_url_es",
    )

    private val trailerKeys = listOf(
        "youtube_trailer", "trailer", "youtube_id", "trailer_url",
        "youtube_trailer_id", "trailer_youtube", "yt_trailer", "video_trailer",
        "trailer_link", "trailer_youtube_id", "youtube_trailer_url",
        "video_id", "trailer_1", "trailer_link_youtube",
        "movie_trailer", "serie_trailer", "series_trailer",
    )

    private val imageUrlPattern = Regex(
        "\\.(jpg|jpeg|png|gif|webp|bmp|svg)(\\?|#|$)",
        RegexOption.IGNORE_CASE,
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
            trailerFromElement(source.get("youtube_trailers"))?.let { return it }
        }
        for (source in sources) {
            if (source == null) continue
            deepScanTrailer(source)?.let { return it }
        }
        return null
    }

    private fun deepScanTrailer(obj: JsonObject): String? {
        for ((_, value) in obj.entrySet()) {
            when {
                value.isJsonPrimitive -> {
                    val text = value.asStringOrNull() ?: continue
                    if (text.contains("youtube.com", ignoreCase = true) ||
                        text.contains("youtu.be", ignoreCase = true) ||
                        text.contains("vimeo.com", ignoreCase = true) ||
                        isDirectVideoUrl(text)
                    ) {
                        normalizeTrailerUrl(text)?.let { return it }
                    }
                }
                value.isJsonObject -> deepScanTrailer(value.asJsonObject)?.let { return it }
                value.isJsonArray -> trailerFromElement(value)?.let { return it }
            }
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
        val fromMembers = castMembersFrom(*sources).joinToString(", ") { it.name }
        if (fromMembers.isNotBlank()) return fromMembers
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

    fun castMembersFrom(vararg sources: JsonObject?): List<CastMember> {
        val keys = listOf(
            "cast", "actors", "starring", "actor", "actor_list",
        )
        for (source in sources) {
            if (source == null) continue
            for (key in keys) {
                val element = source.get(key) ?: continue
                when {
                    element.isJsonArray -> {
                        val members = element.asJsonArray.mapNotNull { parseCastElement(it) }
                        if (members.isNotEmpty()) return members
                    }
                    element.isJsonObject -> {
                        val members = element.asJsonObject.entrySet()
                            .sortedBy { it.key.toIntOrNull() ?: Int.MAX_VALUE }
                            .mapNotNull { parseCastElement(it.value) }
                        if (members.isNotEmpty()) return members
                    }
                    element.isJsonPrimitive -> {
                        val text = stripHtml(element.asStringOrNull())
                        if (text.isNotBlank()) {
                            return text.split(",")
                                .mapNotNull { parseCastNameToken(it.trim()) }
                                .filter { it.name.isNotBlank() }
                        }
                    }
                }
            }
            val credits = source.getAsJsonObject("credits")
            if (credits != null) {
                val castArr = credits.get("cast")
                if (castArr != null && castArr.isJsonArray) {
                    val members = castArr.asJsonArray.mapNotNull { parseCastElement(it) }
                    if (members.isNotEmpty()) return members
                }
            }
        }
        return emptyList()
    }

    private fun parseCastNameToken(token: String): CastMember? {
        if (token.isBlank()) return null
        val pipeParts = token.split("|", limit = 2)
        if (pipeParts.size == 2) {
            val name = pipeParts[0].trim()
            val image = resolveCastImage(pipeParts[1].trim())
            if (name.isNotBlank()) return CastMember(name, image)
        }
        return CastMember(token)
    }

    private fun parseCastElement(element: JsonElement): CastMember? {
        if (element.isJsonPrimitive) {
            val name = stripHtml(element.asStringOrNull()).orEmpty()
            return name.takeIf { it.isNotBlank() }?.let { CastMember(it) }
        }
        if (!element.isJsonObject) return null
        val obj = element.asJsonObject
        val name = stripHtml(
            obj.get("name")?.asStringOrNull()
                ?: obj.get("actor")?.asStringOrNull()
                ?: obj.get("cast")?.asStringOrNull()
                ?: obj.get("character")?.asStringOrNull(),
        ).orEmpty()
        if (name.isBlank()) return null
        val image = imageFrom(
            obj,
            "profile_path",
            "profile",
            "image",
            "photo",
            "avatar",
            "cast_image",
            "actor_image",
            "star_image",
            "thumb",
            "portrait",
            "url",
            "cover",
        ).ifBlank {
            obj.getAsJsonObject("person")?.let { person ->
                imageFrom(person, "profile_path", "profile", "image", "photo", "avatar")
            }.orEmpty()
        }
        val resolvedImage = resolveCastImage(image)
        return CastMember(name = name, imageUrl = resolvedImage)
    }

    private fun resolveCastImage(raw: String): String {
        val trimmed = raw.trim()
        if (trimmed.isEmpty()) return ""
        ImageUrlResolver.resolve(trimmed).takeIf { it.isNotBlank() }?.let { return it }
        if (trimmed.startsWith("http", ignoreCase = true)) return trimmed
        val path = trimmed.removePrefix("/")
        if (path.startsWith("t/p/", ignoreCase = true)) {
            return "https://image.tmdb.org/$path"
        }
        if (path.matches(Regex("^w\\d+/.+", RegexOption.IGNORE_CASE))) {
            return "https://image.tmdb.org/t/p/$path"
        }
        if (path.contains('.')) {
            return "https://image.tmdb.org/t/p/w185/$path"
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
        if (value.isEmpty() || isImageUrl(value)) return null
        if (isDirectVideoUrl(value)) return value
        if (value.startsWith("http")) return value
        if (value.length >= 8) return "https://www.youtube.com/watch?v=$value"
        return null
    }

    fun isDirectVideoUrl(url: String): Boolean =
        directVideoPattern.containsMatchIn(url)

    fun isValidTrailerUrl(raw: String?): Boolean = normalizeTrailerUrl(raw) != null

    private val directVideoPattern = Regex(
        "\\.(mp4|m3u8|webm|mkv|mov)(\\?|#|$)",
        RegexOption.IGNORE_CASE,
    )

    private fun isImageUrl(url: String): Boolean = imageUrlPattern.containsMatchIn(url)

    private fun trailerFromElement(el: JsonElement?): String? {
        if (el == null || el.isJsonNull) return null
        return when {
            el.isJsonPrimitive -> normalizeTrailerUrl(el.asString)
            el.isJsonArray -> {
                var fallback: String? = null
                for (item in el.asJsonArray) {
                    if (item.isJsonObject) {
                        val obj = item.asJsonObject
                        val type = obj.get("type")?.asStringOrNull()?.lowercase().orEmpty()
                        val url = normalizeTrailerUrl(obj.get("url")?.asStringOrNull())
                            ?: normalizeTrailerUrl(obj.get("trailer")?.asStringOrNull())
                            ?: normalizeTrailerUrl(obj.get("youtube_id")?.asStringOrNull())
                            ?: normalizeTrailerUrl(obj.get("id")?.asStringOrNull())
                            ?: normalizeTrailerUrl(obj.get("source")?.asStringOrNull())
                        if (url != null) {
                            if (type.contains("trailer") || type.contains("teaser")) return url
                            if (fallback == null) fallback = url
                        }
                    } else {
                        trailerFromElement(item)?.let { return it }
                    }
                }
                fallback
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

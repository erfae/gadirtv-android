package com.gadir.tv.data

import android.util.Log
import com.gadir.tv.BuildConfig
import com.gadir.tv.model.CastMember
import com.google.gson.JsonParser
import java.net.URLEncoder
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.Request

/** TMDB cast photos + trailers Vimeo/Dailymotion/direct (never YouTube). */
object TmdbApi {
    private const val TAG = "GadirIPTV-Tmdb"
    private const val BASE = "https://api.themoviedb.org/3"
    private const val IMAGE_BASE = "https://image.tmdb.org/t/p/w185"

    private val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .connectTimeout(8, TimeUnit.SECONDS)
            .readTimeout(10, TimeUnit.SECONDS)
            .writeTimeout(8, TimeUnit.SECONDS)
            .build()
    }

    private val searchCache = ConcurrentHashMap<String, Int>()
    private val creditsCache = ConcurrentHashMap<String, List<CastMember>>()
    private val trailerCache = ConcurrentHashMap<String, TmdbTrailer>()

    data class TmdbTrailer(val site: String, val key: String)

    fun isConfigured(): Boolean =
        BuildConfig.TMDB_API_KEY.isNotBlank() || BuildConfig.TMDB_ACCESS_TOKEN.isNotBlank()

    fun cleanTitle(title: String): String {
        var cleaned = title
            .substringBefore("(")
            .replace(Regex("\\s*[-–—]\\s*\\d{4}\\s*$"), "")
            .replace(Regex("\\s+"), " ")
            .trim()
        if ('|' in cleaned) {
            val left = cleaned.substringBefore('|').trim()
            val right = cleaned.substringAfter('|').trim()
            cleaned = when {
                right.isBlank() -> left
                left.length <= 4 || left.matches(Regex("(?i)(es|en|fr|de|it|pt|4k|hd|fhd|uhd|lat|sub|dub|vod|tv).*")) -> right
                else -> left
            }
        }
        return cleaned.trim()
    }

    fun isTrustedCastPhoto(url: String): Boolean {
        val trimmed = url.trim()
        if (trimmed.isBlank()) return false
        val lower = trimmed.lowercase()
        return lower.contains("image.tmdb.org") || lower.contains("themoviedb.org")
    }

    fun extractYear(title: String, releaseDate: String = ""): String? {
        releaseDate.trim().take(4).takeIf { it.length == 4 && it.all(Char::isDigit) }?.let { return it }
        return Regex("(19|20)\\d{2}").findAll(title).map { it.value }.lastOrNull()
    }

    /** Full cast list with photos from TMDB (used when the panel omits images). */
    fun fetchCast(
        title: String,
        releaseDate: String,
        isSeries: Boolean,
        tmdbId: Int? = null,
        limit: Int = 15,
    ): List<CastMember> {
        if (!isConfigured() || title.isBlank()) return emptyList()
        val contentId = tmdbId?.takeIf { it > 0 }
            ?: searchContentId(cleanTitle(title), releaseDate, isSeries)
            ?: return emptyList()
        return creditsFor(contentId, isSeries).take(limit)
    }

    fun enrichCastMembers(
        members: List<CastMember>,
        title: String,
        releaseDate: String,
        tmdbId: Int?,
        isSeries: Boolean,
    ): List<CastMember> {
        if (!isConfigured()) return members
        val id = tmdbId?.takeIf { it > 0 }
        if (id != null && members.none { isTrustedCastPhoto(it.imageUrl) }) {
            val tmdbCast = creditsFor(id, isSeries)
            if (tmdbCast.isNotEmpty()) {
                if (members.none { it.name.isNotBlank() }) return tmdbCast
                val photos = tmdbCast.associate { normalizeName(it.name) to it.imageUrl }
                return members.map { member ->
                    if (isTrustedCastPhoto(member.imageUrl)) return@map member
                    val url = matchProfileUrl(member.name, photos) ?: return@map member
                    member.copy(imageUrl = url)
                }
            }
        }
        val photos = fetchCast(title, releaseDate, isSeries, id)
            .associate { normalizeName(it.name) to it.imageUrl }
        if (photos.isEmpty()) return members

        return members.map { member ->
            if (isTrustedCastPhoto(member.imageUrl)) return@map member
            val url = matchProfileUrl(member.name, photos) ?: return@map member
            member.copy(imageUrl = url)
        }
    }

    fun fetchTrailer(
        title: String,
        releaseDate: String = "",
        isSeries: Boolean = false,
        tmdbId: Int? = null,
    ): TmdbTrailer? {
        if (!isConfigured() || title.isBlank()) return null
        val cleaned = cleanTitle(title)
        val year = extractYear(title, releaseDate)
        val cacheKey = "trailer|${if (isSeries) "tv" else "movie"}|$cleaned|$year|${tmdbId ?: 0}"
        trailerCache[cacheKey]?.let { cached ->
            return cached.takeIf { it.key.isNotBlank() }
        }

        val contentId = tmdbId?.takeIf { it > 0 }
            ?: searchContentId(cleaned, year.orEmpty(), isSeries)
            ?: return null
        val path = if (isSeries) "tv/$contentId/videos" else "movie/$contentId/videos"
        val body = get("$BASE/$path") ?: return null
        val trailer = parseTrailer(body)
        if (trailer != null) trailerCache[cacheKey] = trailer
        return trailer
    }

    fun fetchTrailerUrl(
        title: String,
        releaseDate: String = "",
        isSeries: Boolean = false,
        tmdbId: Int? = null,
    ): String? {
        val trailer = fetchTrailer(title, releaseDate, isSeries, tmdbId) ?: return null
        return when {
            trailer.site.equals("Vimeo", ignoreCase = true) ->
                "https://vimeo.com/${trailer.key}"
            trailer.site.equals("Dailymotion", ignoreCase = true) ->
                "https://www.dailymotion.com/video/${trailer.key}"
            trailer.key.startsWith("http") -> trailer.key
            else -> null
        }
    }

    private fun parseTrailer(body: String): TmdbTrailer? {
        return try {
            val results = JsonParser.parseString(body).asJsonObject.getAsJsonArray("results") ?: return null
            var fallback: TmdbTrailer? = null
            for (element in results) {
                val obj = element.asJsonObject
                val site = obj.get("site")?.asString?.trim().orEmpty()
                val type = obj.get("type")?.asString?.lowercase().orEmpty()
                val key = obj.get("key")?.asString?.trim().orEmpty()
                if (key.isBlank()) continue
                if (site.equals("YouTube", ignoreCase = true)) continue
                val trailer = when {
                    site.equals("Vimeo", ignoreCase = true) -> TmdbTrailer(site = "Vimeo", key = key)
                    site.equals("Dailymotion", ignoreCase = true) -> TmdbTrailer(site = "Dailymotion", key = key)
                    site.equals("Direct", ignoreCase = true) && key.startsWith("http") ->
                        TmdbTrailer(site = "Direct", key = key)
                    else -> null
                } ?: continue
                if (type.contains("trailer") || type.contains("teaser")) return trailer
                if (fallback == null) fallback = trailer
            }
            fallback
        } catch (e: Exception) {
            Log.w(TAG, "trailer parse failed: ${e.message}")
            null
        }
    }

    private fun searchContentId(title: String, releaseDate: String, isSeries: Boolean): Int? {
        val query = cleanTitle(title).ifBlank { title.trim() }
        if (query.isBlank()) return null
        val year = extractYear(title, releaseDate)
        val cacheKey = "${if (isSeries) "tv" else "movie"}|$query|$year"
        searchCache[cacheKey]?.let { return it }

        val encoded = URLEncoder.encode(query, Charsets.UTF_8.name())
        val path = if (isSeries) "search/tv" else "search/movie"
        val yearParam = when {
            year == null -> ""
            isSeries -> "&first_air_date_year=$year"
            else -> "&year=$year"
        }
        val body = get("$BASE/$path?query=$encoded$yearParam") ?: return null
        return try {
            val results = JsonParser.parseString(body).asJsonObject.getAsJsonArray("results")
            val id = results?.firstOrNull()?.asJsonObject?.get("id")?.asInt ?: return null
            searchCache[cacheKey] = id
            id
        } catch (e: Exception) {
            Log.w(TAG, "search parse failed: ${e.message}")
            null
        }
    }

    private fun creditsFor(contentId: Int, isSeries: Boolean): List<CastMember> {
        val cacheKey = "${if (isSeries) "tv" else "movie"}|$contentId"
        creditsCache[cacheKey]?.let { return it }

        val path = if (isSeries) "tv/$contentId/credits" else "movie/$contentId/credits"
        val body = get("$BASE/$path") ?: return emptyList()
        val cast = parseCreditsList(body)
        if (cast.isNotEmpty() && cast.any { it.imageUrl.isNotBlank() }) {
            creditsCache[cacheKey] = cast
        }
        return cast
    }

    private fun parseCreditsList(body: String): List<CastMember> {
        return try {
            val arr = JsonParser.parseString(body).asJsonObject.getAsJsonArray("cast") ?: return emptyList()
            buildList {
                for (element in arr) {
                    val obj = element.asJsonObject
                    val name = obj.get("name")?.asString?.trim().orEmpty()
                    if (name.isBlank()) continue
                    val profile = obj.get("profile_path")?.asString?.trim().orEmpty()
                    val image = if (profile.isNotBlank()) "$IMAGE_BASE$profile" else ""
                    add(CastMember(name, image))
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "credits parse failed: ${e.message}")
            emptyList()
        }
    }

    private fun matchProfileUrl(name: String, photos: Map<String, String>): String? {
        val normalized = normalizeName(name)
        if (normalized.isBlank()) return null
        photos[normalized]?.let { return it }
        val tokens = normalized.split(' ').filter { it.length > 1 }
        if (tokens.size >= 2) {
            photos["${tokens.first()} ${tokens.last()}"]?.let { return it }
        }
        return photos.entries.firstOrNull { (key, _) ->
            key.contains(normalized) || normalized.contains(key)
        }?.value
    }

    private fun normalizeName(raw: String): String =
        raw
            .substringBefore("(")
            .substringBefore("|")
            .lowercase()
            .substringBefore(" as ")
            .substringBefore(" como ")
            .replace(Regex("[^a-z0-9\\s]"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()

    private fun get(url: String): String? {
        if (!isConfigured()) return null
        val requestBuilder = Request.Builder()
            .url(appendApiKey(url))
            .header("Accept", "application/json")
        if (BuildConfig.TMDB_ACCESS_TOKEN.isNotBlank()) {
            requestBuilder.header("Authorization", "Bearer ${BuildConfig.TMDB_ACCESS_TOKEN}")
        }
        return try {
            client.newCall(requestBuilder.build()).execute().use { response ->
                if (!response.isSuccessful) {
                    Log.w(TAG, "HTTP ${response.code} for $url")
                    return null
                }
                response.body?.string()
            }
        } catch (e: Exception) {
            Log.w(TAG, "request failed: ${e.message}")
            null
        }
    }

    private fun appendApiKey(url: String): String {
        val key = BuildConfig.TMDB_API_KEY
        if (key.isBlank()) return url
        val separator = if (url.contains('?')) "&" else "?"
        return "$url${separator}api_key=$key"
    }

    fun clearCache() {
        searchCache.clear()
        creditsCache.clear()
        trailerCache.clear()
    }
}

package com.gadir.tv.data

import android.util.Log
import com.gadir.tv.BuildConfig
import com.gadir.tv.model.CastMember
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.net.URLEncoder
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.Request

/** TMDB metadata lookup for cast profile photos when the panel omits them. */
object TmdbApi {
    private const val TAG = "GadirIPTV-Tmdb"
    private const val BASE = "https://api.themoviedb.org/3"
    private const val IMAGE_BASE = "https://image.tmdb.org/t/p/w185"

    private val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .connectTimeout(8, TimeUnit.SECONDS)
            .readTimeout(12, TimeUnit.SECONDS)
            .writeTimeout(8, TimeUnit.SECONDS)
            .build()
    }

    private val searchCache = ConcurrentHashMap<String, Int>()
    private val creditsCache = ConcurrentHashMap<String, Map<String, String>>()

    fun enrichCastMembers(
        members: List<CastMember>,
        title: String,
        releaseDate: String,
        tmdbId: Int?,
        isSeries: Boolean,
    ): List<CastMember> {
        if (members.isEmpty() || !isConfigured()) return members
        if (members.all { it.imageUrl.isNotBlank() }) return members

        val contentId = tmdbId?.takeIf { it > 0 }
            ?: searchContentId(title, releaseDate, isSeries)
            ?: return members

        val photos = creditsFor(contentId, isSeries)
        if (photos.isEmpty()) return members

        return members.map { member ->
            if (member.imageUrl.isNotBlank()) return@map member
            val url = matchProfileUrl(member.name, photos) ?: return@map member
            member.copy(imageUrl = url)
        }
    }

    fun isConfigured(): Boolean =
        BuildConfig.TMDB_API_KEY.isNotBlank() || BuildConfig.TMDB_ACCESS_TOKEN.isNotBlank()

    private fun searchContentId(title: String, releaseDate: String, isSeries: Boolean): Int? {
        val query = title.trim()
        if (query.isBlank()) return null
        val year = releaseDate.trim().take(4).takeIf { it.length == 4 && it.all(Char::isDigit) }
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

    private fun creditsFor(contentId: Int, isSeries: Boolean): Map<String, String> {
        val cacheKey = "${if (isSeries) "tv" else "movie"}|$contentId"
        creditsCache[cacheKey]?.let { return it }

        val path = if (isSeries) "tv/$contentId/credits" else "movie/$contentId/credits"
        val body = get("$BASE/$path") ?: return emptyMap()
        val photos = parseCredits(body)
        if (photos.isNotEmpty()) creditsCache[cacheKey] = photos
        return photos
    }

    private fun parseCredits(body: String): Map<String, String> {
        return try {
            val cast = JsonParser.parseString(body).asJsonObject.getAsJsonArray("cast") ?: return emptyMap()
            buildMap {
                for (element in cast) {
                    val obj = element.asJsonObject
                    val name = obj.get("name")?.asString?.trim().orEmpty()
                    val profile = obj.get("profile_path")?.asString?.trim().orEmpty()
                    if (name.isBlank() || profile.isBlank()) continue
                    val key = normalizeName(name)
                    if (key.isBlank() || key in this) continue
                    put(key, "$IMAGE_BASE$profile")
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "credits parse failed: ${e.message}")
            emptyMap()
        }
    }

    private fun matchProfileUrl(name: String, photos: Map<String, String>): String? {
        val normalized = normalizeName(name)
        if (normalized.isBlank()) return null
        photos[normalized]?.let { return it }

        val tokens = normalized.split(' ').filter { it.length > 1 }
        if (tokens.size >= 2) {
            val firstLast = "${tokens.first()} ${tokens.last()}"
            photos[firstLast]?.let { return it }
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
    }
}

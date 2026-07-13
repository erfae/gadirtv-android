package com.gadir.tv.data

import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.LoginResult
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesDetail
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.net.NativeHttpClient
import com.gadir.tv.util.HostUtils
import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import java.net.URLEncoder

class XtreamApi(
    initialUserAgent: String = PlaylistRepository.userAgent,
) {
    var activeUserAgent: String = initialUserAgent.ifBlank { "XCIPTV" }
        private set

    private val gson = Gson()

    private val userAgents = listOf(
        "okhttp/4.9.3",
        "XCIPTV",
        "IPTVSmartersPlayer",
        "IPTV Smarters Pro",
        "VLC/3.0.20 LibVLC/3.0.20",
        "TiviMate/4.6.0 (Linux;Android 12)",
    )

    fun login(profile: Profile, onProgress: ((String) -> Unit)? = null): LoginResult {
        val host = HostUtils.normalize(profile.host)
        if (host.isEmpty()) {
            return LoginResult(false, "Introduce el servidor")
        }
        if (profile.username.isBlank() || profile.password.isBlank()) {
            return LoginResult(false, "Usuario y contraseña obligatorios")
        }

        val url = buildString {
            append(host.trimEnd('/'))
            append("/player_api.php?username=")
            append(encode(profile.username))
            append("&password=")
            append(encode(profile.password))
        }

        var lastDiag: String? = null
        for ((index, ua) in userAgents.withIndex()) {
            onProgress?.invoke("Intento ${index + 1}/${userAgents.size}…")
            try {
                val get = NativeHttpClient.request(url, ua, "GET")
                if (get.status in 500..599) {
                    lastDiag = "HTTP ${get.status} GET"
                    Thread.sleep(400L * (index + 1))
                    continue
                }
                if (get.status != 200) {
                    lastDiag = "HTTP ${get.status}"
                    continue
                }
                if (parseAuth(get.body)) {
                    activeUserAgent = ua
                    PlaylistRepository.userAgent = ua
                    return LoginResult(true)
                }

                val post = NativeHttpClient.request(url, ua, "POST")
                if (post.status == 200 && parseAuth(post.body)) {
                    activeUserAgent = ua
                    PlaylistRepository.userAgent = ua
                    return LoginResult(true)
                }
                lastDiag = "GET ${get.status}, POST ${post.status}"
            } catch (e: Exception) {
                lastDiag = e.message
                Thread.sleep(400L * (index + 1))
            }
        }

        return LoginResult(
            ok = false,
            error = "No se pudo conectar al servidor",
            diagnostic = lastDiag,
        )
    }

    fun liveCategories(profile: Profile): List<Category> {
        return fetchList(profile, "get_live_categories").map {
            Category(
                id = it.get("category_id")?.asStringOrNull() ?: "",
                name = it.get("category_name")?.asStringOrNull() ?: "",
            )
        }.filter { it.id.isNotEmpty() }
    }

    fun liveStreams(profile: Profile, categoryId: String? = null): List<LiveChannel> {
        val extra = if (!categoryId.isNullOrEmpty()) mapOf("category_id" to categoryId) else emptyMap()
        return fetchList(profile, "get_live_streams", extra).map { row ->
            LiveChannel(
                streamId = row.get("stream_id")?.asIntOrZero() ?: 0,
                name = row.get("name")?.asStringOrNull() ?: "",
                icon = row.get("stream_icon")?.asStringOrNull() ?: "",
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
            )
        }.filter { it.streamId > 0 }
    }

    fun vodCategories(profile: Profile): List<Category> =
        fetchCategories(profile, "get_vod_categories")

    fun vodStreams(profile: Profile, categoryId: String? = null): List<VodMovie> {
        val extra = if (!categoryId.isNullOrEmpty()) mapOf("category_id" to categoryId) else emptyMap()
        return fetchList(profile, "get_vod_streams", extra).map { row ->
            VodMovie(
                streamId = row.get("stream_id")?.asIntOrZero() ?: row.get("num")?.asIntOrZero() ?: 0,
                name = row.get("name")?.asStringOrNull() ?: "",
                icon = row.get("stream_icon")?.asStringOrNull()
                    ?: row.get("cover")?.asStringOrNull()
                    ?: "",
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                extension = row.get("container_extension")?.asStringOrNull() ?: "mp4",
            )
        }.filter { it.streamId > 0 }
    }

    fun seriesCategories(profile: Profile): List<Category> =
        fetchCategories(profile, "get_series_categories")

    fun seriesList(profile: Profile, categoryId: String? = null): List<SeriesItem> {
        val extra = if (!categoryId.isNullOrEmpty()) mapOf("category_id" to categoryId) else emptyMap()
        return fetchList(profile, "get_series", extra).map { row ->
            SeriesItem(
                seriesId = row.get("series_id")?.asIntOrZero() ?: 0,
                name = row.get("name")?.asStringOrNull() ?: "",
                cover = row.get("cover")?.asStringOrNull()
                    ?: row.get("stream_icon")?.asStringOrNull()
                    ?: "",
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
            )
        }.filter { it.seriesId > 0 }
    }

    fun seriesInfo(profile: Profile, seriesId: Int): SeriesDetail? {
        val host = HostUtils.normalize(profile.host).trimEnd('/')
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=get_series_info")
            append("&series_id=").append(seriesId)
        }
        val url = "$host/player_api.php?$query"
        val response = NativeHttpClient.request(url, activeUserAgent)
        if (response.status != 200 || response.body.isBlank()) return null
        return try {
            val root = gson.fromJson(response.body, JsonObject::class.java) ?: return null
            val info = root.getAsJsonObject("info")
            val episodesObj = root.getAsJsonObject("episodes") ?: JsonObject()
            val seasons = linkedMapOf<String, List<SeriesEpisode>>()
            for ((seasonKey, seasonValue) in episodesObj.entrySet()) {
                if (!seasonValue.isJsonArray) continue
                val eps = seasonValue.asJsonArray.mapNotNull { el ->
                    val ep = el.asJsonObjectOrNull() ?: return@mapNotNull null
                    val epInfo = ep.getAsJsonObject("info")
                    SeriesEpisode(
                        id = ep.get("id")?.asIntOrZero() ?: 0,
                        title = ep.get("title")?.asStringOrNull() ?: "",
                        episodeNum = ep.get("episode_num")?.asIntOrZero() ?: 0,
                        season = seasonKey,
                        extension = ep.get("container_extension")?.asStringOrNull() ?: "mp4",
                        plot = epInfo?.get("plot")?.asStringOrNull() ?: "",
                        image = epInfo?.get("movie_image")?.asStringOrNull()
                            ?: epInfo?.get("cover_big")?.asStringOrNull()
                            ?: "",
                    )
                }.filter { it.id > 0 }
                if (eps.isNotEmpty()) seasons[seasonKey] = eps
            }
            SeriesDetail(
                name = info?.get("name")?.asStringOrNull() ?: "",
                cover = info?.get("cover")?.asStringOrNull() ?: "",
                plot = info?.get("plot")?.asStringOrNull() ?: "",
                genre = info?.get("genre")?.asStringOrNull() ?: "",
                releaseDate = info?.get("releaseDate")?.asStringOrNull() ?: "",
                rating = info?.get("rating_5based")?.asStringOrNull()
                    ?: info?.get("rating")?.asStringOrNull()
                    ?: "",
                seasons = seasons,
            )
        } catch (_: Exception) {
            null
        }
    }

    fun streamUrl(profile: Profile, streamId: Int, ext: String = "ts"): String =
        buildStreamUrl(profile, "live", streamId, ext)

    fun movieStreamUrl(profile: Profile, streamId: Int, ext: String = "mp4"): String =
        buildStreamUrl(profile, "movie", streamId, ext)

    fun seriesStreamUrl(profile: Profile, episodeId: Int, ext: String = "mp4"): String =
        buildStreamUrl(profile, "series", episodeId, ext)

    private fun buildStreamUrl(profile: Profile, kind: String, streamId: Int, ext: String): String {
        val host = HostUtils.normalize(profile.host).trimEnd('/')
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return "$host/$kind/$u/$pw/$streamId.$ext"
    }

    private fun fetchCategories(profile: Profile, action: String): List<Category> =
        fetchList(profile, action).map {
            Category(
                id = it.get("category_id")?.asStringOrNull() ?: "",
                name = it.get("category_name")?.asStringOrNull() ?: "",
            )
        }.filter { it.id.isNotEmpty() }

    private fun fetchList(
        profile: Profile,
        action: String,
        extra: Map<String, String> = emptyMap(),
    ): List<JsonObject> {
        val host = HostUtils.normalize(profile.host).trimEnd('/')
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=").append(action)
            extra.forEach { (k, v) ->
                append("&").append(k).append("=").append(encode(v))
            }
        }
        val url = "$host/player_api.php?$query"
        val response = NativeHttpClient.request(url, activeUserAgent)
        if (response.status != 200 || response.body.isBlank()) return emptyList()
        return try {
            val el = gson.fromJson(response.body, JsonElement::class.java)
            when {
                el == null || el.isJsonNull -> emptyList()
                el.isJsonArray -> el.asJsonArray.mapNotNull { it.asJsonObjectOrNull() }
                else -> emptyList()
            }
        } catch (_: Exception) {
            emptyList()
        }
    }

    private fun parseAuth(body: String): Boolean {
        if (body.isBlank()) return false
        return try {
            val root = gson.fromJson(body, JsonObject::class.java) ?: return false
            val user = root.getAsJsonObject("user_info") ?: return false
            val auth = user.get("auth")?.asStringOrNull() ?: user.get("auth")?.toString()
            auth == "1" || auth == "1.0"
        } catch (_: Exception) {
            false
        }
    }

    private fun encode(value: String): String =
        URLEncoder.encode(value, Charsets.UTF_8.name())

    private fun JsonElement.asJsonObjectOrNull(): JsonObject? =
        if (isJsonObject) asJsonObject else null

    private fun JsonElement.asStringOrNull(): String? =
        if (isJsonNull) null else asString

    private fun JsonElement.asIntOrZero(): Int? =
        try {
            when {
                isJsonNull -> 0
                isJsonPrimitive && asJsonPrimitive.isNumber -> asInt
                else -> asString.toIntOrNull() ?: 0
            }
        } catch (_: Exception) {
            0
        }
}

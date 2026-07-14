package com.gadir.tv.data

import com.gadir.tv.model.Category
import com.gadir.tv.model.EpgEntry
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.LoginResult
import com.gadir.tv.model.Profile
import com.gadir.tv.model.SeriesDetail
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodInfo
import com.gadir.tv.model.VodMovie
import com.gadir.tv.net.NativeHttpClient
import com.gadir.tv.util.HostUtils
import com.gadir.tv.util.ImageUrlResolver
import com.gadir.tv.util.MetaExtractor
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

        val base = HostUtils.baseUrl(host)
        val url = buildString {
            append(base)
            append("/player_api.php?username=")
            append(encode(profile.username))
            append("&password=")
            append(encode(profile.password))
        }

        var lastDiag: String? = null
        var hadConnectionError = false
        for ((index, ua) in userAgents.withIndex()) {
            onProgress?.invoke("Intento ${index + 1}/${userAgents.size}…")
            try {
                val get = NativeHttpClient.request(url, ua, "GET")
                if (get.error != null || get.status == 0) {
                    hadConnectionError = true
                    lastDiag = get.error ?: "Sin respuesta HTTP"
                    Thread.sleep(400L * (index + 1))
                    continue
                }
                if (get.status == 512 || get.status == 405 || get.status == 403) {
                    onProgress?.invoke("Reintentando POST…")
                    val post = NativeHttpClient.request(url, ua, "POST")
                    if (post.error == null && post.status == 200 && parseAuth(post.body)) {
                        activeUserAgent = ua
                        PlaylistRepository.userAgent = ua
                        return LoginResult(true)
                    }
                    lastDiag = "HTTP ${get.status} GET, POST ${post.status}"
                    continue
                }
                if (get.status in 500..599) {
                    lastDiag = "HTTP ${get.status} GET"
                    Thread.sleep(600L * (index + 1))
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

                if (get.body.isBlank()) {
                    onProgress?.invoke("Reintentando POST…")
                    val post = NativeHttpClient.request(url, ua, "POST")
                    if (post.error == null && post.status == 200 && parseAuth(post.body)) {
                        activeUserAgent = ua
                        PlaylistRepository.userAgent = ua
                        return LoginResult(true)
                    }
                }

                val post = NativeHttpClient.request(url, ua, "POST")
                if (post.error == null && post.status == 200 && parseAuth(post.body)) {
                    activeUserAgent = ua
                    PlaylistRepository.userAgent = ua
                    return LoginResult(true)
                }
                lastDiag = when {
                    get.body.isBlank() -> "Respuesta vacía del servidor"
                    else -> "Credenciales rechazadas (auth≠1)"
                }
            } catch (e: Exception) {
                hadConnectionError = true
                lastDiag = e.message
                Thread.sleep(400L * (index + 1))
            }
        }

        onProgress?.invoke("Probando vía M3U…")
        if (verifyM3u(profile)) {
            activeUserAgent = userAgents.first()
            PlaylistRepository.userAgent = activeUserAgent
            return LoginResult(true)
        }

        return LoginResult(
            ok = false,
            error = "No se pudo conectar al servidor",
            diagnostic = lastDiag,
        )
    }

    private fun verifyM3u(profile: Profile): Boolean {
        val base = HostUtils.baseUrl(profile.host)
        val url = buildString {
            append(base)
            append("/get.php?username=")
            append(encode(profile.username))
            append("&password=")
            append(encode(profile.password))
            append("&type=m3u_plus&output=mpegts")
        }
        for (ua in userAgents) {
            val res = NativeHttpClient.request(url, ua, "GET")
            if (res.error != null) continue
            if (res.status == 200 && res.body.startsWith("#EXTM3U")) return true
        }
        return false
    }

    fun liveCategories(profile: Profile): List<Category> =
        fetchCategories(profile, "get_live_categories")

    fun liveStreams(profile: Profile, categoryId: String? = null): List<LiveChannel> {
        val extra = if (!categoryId.isNullOrEmpty()) mapOf("category_id" to categoryId) else emptyMap()
        return fetchList(profile, "get_live_streams", extra).mapIndexed { index, row ->
            LiveChannel(
                streamId = row.get("stream_id")?.asIntOrZero() ?: 0,
                name = row.get("name")?.asStringOrNull() ?: "",
                icon = imageUrl(row, "stream_icon"),
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                num = row.channelNum(index),
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
                icon = imageUrl(row, "stream_icon", "cover"),
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                extension = row.get("container_extension")?.asStringOrNull() ?: "mp4",
                added = row.addedTimestamp(),
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
                cover = imageUrl(row, "cover", "stream_icon", "cover_big"),
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                added = row.addedTimestamp(),
            )
        }.filter { it.seriesId > 0 }
    }

    fun seriesInfo(profile: Profile, seriesId: Int): SeriesDetail? {
        val host = HostUtils.baseUrl(profile.host)
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
                        image = imageUrl(epInfo, "movie_image", "cover_big", "cover")
                            .ifBlank { imageUrl(ep, "movie_image", "cover_big", "cover") },
                    )
                }.filter { it.id > 0 }
                if (eps.isNotEmpty()) seasons[seasonKey] = eps
            }
            val name = info?.get("name")?.asStringOrNull() ?: ""
            SeriesDetail(
                name = name,
                cover = imageUrl(info, "cover", "cover_big", "stream_icon", "movie_image"),
                backdrop = imageUrl(info, "backdrop_path", "cover_big", "cover", "stream_icon"),
                plot = MetaExtractor.plotFrom(info),
                genre = info?.get("genre")?.asStringOrNull() ?: "",
                releaseDate = info?.get("releaseDate")?.asStringOrNull() ?: "",
                rating = info?.get("rating_5based")?.asStringOrNull()
                    ?: info?.get("rating")?.asStringOrNull()
                    ?: "",
                trailerUrl = MetaExtractor.trailerFrom(name, info, root).orEmpty(),
                cast = MetaExtractor.castFrom(info),
                seasons = seasons,
            )
        } catch (_: Exception) {
            null
        }
    }

    fun vodInfo(profile: Profile, vodId: Int): VodInfo? {
        val host = HostUtils.baseUrl(profile.host)
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=get_vod_info")
            append("&vod_id=").append(vodId)
        }
        val url = "$host/player_api.php?$query"
        val response = NativeHttpClient.request(url, activeUserAgent)
        if (response.status != 200 || response.body.isBlank()) return null
        return try {
            val root = gson.fromJson(response.body, JsonObject::class.java) ?: return null
            val info = root.getAsJsonObject("info")
            val movieData = root.getAsJsonObject("movie_data")
            val name = info?.get("name")?.asStringOrNull()
                ?: movieData?.get("name")?.asStringOrNull()
                ?: ""
            VodInfo(
                name = name,
                plot = MetaExtractor.plotFrom(info, movieData),
                cover = imageUrl(info, "movie_image", "cover", "cover_big")
                    .ifBlank { imageUrl(movieData, "stream_icon", "cover", "movie_image") },
                backdrop = imageUrl(info, "backdrop_path", "cover_big", "movie_image", "cover")
                    .ifBlank { imageUrl(movieData, "backdrop_path", "cover_big", "cover") },
                rating = info?.get("rating")?.asStringOrNull()
                    ?: info?.get("rating_5based")?.asStringOrNull()
                    ?: "",
                genre = info?.get("genre")?.asStringOrNull() ?: "",
                releaseDate = info?.get("releasedate")?.asStringOrNull()
                    ?: info?.get("releaseDate")?.asStringOrNull()
                    ?: "",
                trailerUrl = MetaExtractor.trailerFrom(name, info, movieData, root).orEmpty(),
                cast = MetaExtractor.castFrom(info, movieData),
                director = MetaExtractor.directorFrom(info, movieData),
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

    fun shortEpg(profile: Profile, streamId: Int, limit: Int = 2): List<EpgEntry> {
        val host = HostUtils.baseUrl(profile.host)
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=get_short_epg")
            append("&stream_id=").append(streamId)
            append("&limit=").append(limit)
        }
        val url = "$host/player_api.php?$query"
        val response = NativeHttpClient.request(url, activeUserAgent)
        if (response.status != 200 || response.body.isBlank()) return emptyList()
        return try {
            val root = gson.fromJson(response.body, JsonObject::class.java) ?: return emptyList()
            val listings = root.getAsJsonArray("epg_listings") ?: return emptyList()
            listings.mapNotNull { el ->
                val row = el.asJsonObjectOrNull() ?: return@mapNotNull null
                val rawTitle = row.get("title")?.asStringOrNull().orEmpty()
                EpgEntry(
                    title = decodeEpgTitle(rawTitle),
                    start = row.get("start_timestamp")?.asStringOrNull()?.toLongOrNull() ?: 0L,
                    end = row.get("stop_timestamp")?.asStringOrNull()?.toLongOrNull() ?: 0L,
                )
            }.filter { it.title.isNotBlank() }
        } catch (_: Exception) {
            emptyList()
        }
    }

    private fun decodeEpgTitle(raw: String): String {
        if (raw.isBlank()) return ""
        return try {
            val bytes = android.util.Base64.decode(raw, android.util.Base64.DEFAULT)
            String(bytes, Charsets.UTF_8).trim()
        } catch (_: Exception) {
            raw
        }
    }

    private fun buildStreamUrl(profile: Profile, kind: String, streamId: Int, ext: String): String {
        val host = HostUtils.baseUrl(profile.host)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return "$host/$kind/$u/$pw/$streamId.$ext"
    }

    private fun fetchCategories(profile: Profile, action: String): List<Category> =
        fetchList(profile, action).mapIndexed { index, row ->
            Category(
                id = row.get("category_id")?.asStringOrNull() ?: "",
                name = row.get("category_name")?.asStringOrNull() ?: "",
                order = row.playlistOrder(index),
            )
        }.filter { it.id.isNotEmpty() }
            .sortedBy { it.order }

    private fun fetchList(
        profile: Profile,
        action: String,
        extra: Map<String, String> = emptyMap(),
    ): List<JsonObject> {
        val host = HostUtils.baseUrl(profile.host)
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

    private fun imageUrl(json: JsonObject?, vararg keys: String): String =
        ImageUrlResolver.resolve(MetaExtractor.imageFrom(json, *keys))

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

    private fun JsonObject.addedTimestamp(): Long =
        get("added")?.asStringOrNull()?.toLongOrNull()
            ?: get("last_modified")?.asStringOrNull()?.toLongOrNull()
            ?: 0L

    private fun JsonObject.playlistOrder(fallbackIndex: Int): Int {
        for (key in listOf("category_order", "cat_order", "order", "num")) {
            val value = get(key)?.asIntOrZero() ?: continue
            if (value > 0) return value
        }
        return fallbackIndex
    }

    private fun JsonObject.channelNum(fallbackIndex: Int): Int {
        for (key in listOf("num", "order", "stream_order")) {
            val value = get(key)?.asIntOrZero() ?: continue
            if (value > 0) return value
        }
        return fallbackIndex
    }
}

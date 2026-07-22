package com.gadir.tv.data

import com.gadir.tv.model.AccountInfo
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
import com.gadir.tv.model.VodPlaybackMeta
import com.gadir.tv.net.HttpResult
import com.gadir.tv.net.NativeHttpClient
import com.gadir.tv.util.HostUtils
import com.gadir.tv.util.ImageUrlResolver
import com.gadir.tv.util.NetworkUrlResolver
import com.gadir.tv.util.MetaExtractor
import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import java.net.URLEncoder
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

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
                        return loginSuccess(ua, post.body)
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
                    return loginSuccess(ua, get.body)
                }

                if (get.body.isBlank()) {
                    onProgress?.invoke("Reintentando POST…")
                    val post = NativeHttpClient.request(url, ua, "POST")
                    if (post.error == null && post.status == 200 && parseAuth(post.body)) {
                        return loginSuccess(ua, post.body)
                    }
                }

                val post = NativeHttpClient.request(url, ua, "POST")
                if (post.error == null && post.status == 200 && parseAuth(post.body)) {
                    return loginSuccess(ua, post.body)
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
            return loginSuccess(userAgents.first(), "")
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
            val streamId = row.get("stream_id")?.asIntOrZero() ?: 0
            val rawIcon = MetaExtractor.imageFrom(
                row,
                "stream_icon",
                "logo",
                "tvg_logo",
                "icon",
                "channel_icon",
                "epg_icon",
                "thumbnail",
                "logo_url",
                "tv_archive_icon",
            )
            val icon = when {
                rawIcon.startsWith("http", ignoreCase = true) -> rawIcon
                rawIcon.isNotBlank() -> ImageUrlResolver.resolve(rawIcon)
                else -> ""
            }.ifBlank { fallbackLiveIcon(profile, streamId) }
            LiveChannel(
                streamId = streamId,
                name = row.get("name")?.asStringOrNull() ?: "",
                icon = icon,
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                num = row.channelNum(index),
                extension = row.get("container_extension")?.asStringOrNull()?.ifBlank { "ts" } ?: "ts",
                directSource = row.get("direct_source")?.asStringOrNull().orEmpty().trim(),
                epgChannelId = row.get("epg_channel_id")?.asStringOrNull()
                    ?: row.get("channel_id")?.asStringOrNull()
                    ?: "",
                tvArchive = row.get("tv_archive")?.asIntOrZero() ?: 0,
                tvArchiveDuration = row.get("tv_archive_duration")?.asIntOrZero() ?: 0,
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
                icon = imageUrl(row, "stream_icon", "cover", "cover_big", "movie_image")
                    .ifBlank { fallbackVodCover(profile, row.get("stream_id")?.asIntOrZero() ?: 0) },
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                extension = row.get("container_extension")?.asStringOrNull()?.ifBlank { "mp4" } ?: "mp4",
                added = row.addedTimestamp(),
                directSource = row.get("direct_source")?.asStringOrNull().orEmpty().trim(),
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
                cover = imageUrl(row, "cover", "stream_icon", "cover_big")
                    .ifBlank {
                        fallbackVodCover(
                            profile,
                            row.get("series_id")?.asIntOrZero() ?: 0,
                        )
                    },
                categoryId = row.get("category_id")?.asStringOrNull() ?: "",
                added = row.addedTimestamp(),
            )
        }.filter { it.seriesId > 0 }
    }

    fun seriesInfo(profile: Profile, seriesId: Int): SeriesDetail? {
        val host = HostUtils.baseUrl(com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host))
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=get_series_info")
            append("&series_id=").append(seriesId)
        }
        val body = fetchDetailBody("$host/player_api.php?$query") ?: return null
        return try {
            val root = gson.fromJson(body, JsonObject::class.java) ?: return null
            val info = root.getAsJsonObject("info")
            val seasons = linkedMapOf<String, MutableList<SeriesEpisode>>()
            val episodesEl = root.get("episodes")
            when {
                episodesEl?.isJsonObject == true -> {
                    for ((seasonKey, seasonValue) in episodesEl.asJsonObject.entrySet()) {
                        mergeSeasonEpisodes(seasons, seasonKey, seasonValue)
                    }
                }
                episodesEl?.isJsonArray == true -> {
                    for (element in episodesEl.asJsonArray) {
                        val episode = parseSeriesEpisode(element, "") ?: continue
                        val key = normalizeSeasonKey(episode.season)
                        seasons.getOrPut(key) { mutableListOf() }.add(episode)
                    }
                }
            }
            val normalized = seasons.mapValues { (_, eps) ->
                eps.sortedBy { it.episodeNum }
            }
            val name = info?.get("name")?.asStringOrNull() ?: ""
            SeriesDetail(
                name = name,
                cover = imageUrl(info, "cover", "cover_big", "stream_icon", "movie_image"),
                backdrop = imageUrl(info, "backdrop_path", "cover_big", "cover", "stream_icon"),
                plot = MetaExtractor.plotFrom(info, root),
                genre = info?.get("genre")?.asStringOrNull() ?: "",
                releaseDate = info?.get("releaseDate")?.asStringOrNull() ?: "",
                rating = info?.get("rating_5based")?.asStringOrNull()
                    ?: info?.get("rating")?.asStringOrNull()
                    ?: "",
                trailerUrl = MetaExtractor.trailerFrom(name, info, root).orEmpty(),
                cast = MetaExtractor.castFrom(info),
                castMembers = MetaExtractor.castMembersFrom(info, root),
                seasons = normalized,
            )
        } catch (_: Exception) {
            null
        }
    }

    private fun mergeSeasonEpisodes(
        seasons: LinkedHashMap<String, MutableList<SeriesEpisode>>,
        seasonKey: String,
        seasonValue: JsonElement,
    ) {
        val key = normalizeSeasonKey(seasonKey)
        val elements = when {
            seasonValue.isJsonArray -> seasonValue.asJsonArray.toList()
            seasonValue.isJsonObject -> seasonValue.asJsonObject.entrySet().map { it.value }
            else -> emptyList()
        }
        val eps = elements.mapNotNull { parseSeriesEpisode(it, key) }
        if (eps.isEmpty()) return
        val bucket = seasons.getOrPut(key) { mutableListOf() }
        bucket.addAll(eps)
    }

    private fun parseSeriesEpisode(element: JsonElement, seasonKey: String): SeriesEpisode? {
        val ep = element.asJsonObjectOrNull() ?: return null
        val epInfo = ep.getAsJsonObject("info")
        val id = ep.get("id")?.asIntOrZero()
            ?: ep.get("episode_id")?.asIntOrZero()
            ?: ep.get("stream_id")?.asIntOrZero()
            ?: epInfo?.get("id")?.asIntOrZero()
            ?: epInfo?.get("episode_id")?.asIntOrZero()
            ?: epInfo?.get("stream_id")?.asIntOrZero()
            ?: 0
        if (id <= 0) return null
        val season = normalizeSeasonKey(
            ep.get("season")?.asStringOrNull()?.takeIf { it.isNotBlank() }
                ?: ep.get("season_number")?.asStringOrNull()?.takeIf { it.isNotBlank() }
                ?: epInfo?.get("season")?.asStringOrNull()?.takeIf { it.isNotBlank() }
                ?: seasonKey,
        )
        val episodeNum = ep.get("episode_num")?.asIntOrZero()
            ?: ep.get("episode_number")?.asIntOrZero()
            ?: epInfo?.get("episode_num")?.asIntOrZero()
            ?: 0
        return SeriesEpisode(
            id = id,
            title = ep.get("title")?.asStringOrNull()?.trim()
                ?: epInfo?.get("title")?.asStringOrNull()?.trim().orEmpty(),
            episodeNum = episodeNum,
            season = season,
            extension = ep.get("container_extension")?.asStringOrNull()?.ifBlank { "mp4" }
                ?: epInfo?.get("container_extension")?.asStringOrNull()?.ifBlank { "mp4" }
                ?: "mp4",
            plot = epInfo?.get("plot")?.asStringOrNull()?.trim().orEmpty(),
            image = imageUrl(epInfo, "movie_image", "cover_big", "cover")
                .ifBlank { imageUrl(ep, "movie_image", "cover_big", "cover") },
            directSource = ep.get("direct_source")?.asStringOrNull()?.trim()
                ?: epInfo?.get("direct_source")?.asStringOrNull()?.trim().orEmpty(),
        )
    }

    private fun normalizeSeasonKey(raw: String): String {
        val trimmed = raw.trim()
        if (trimmed.isEmpty()) return "1"
        val numeric = trimmed.filter { it.isDigit() }
        if (numeric.isNotEmpty()) {
            return numeric.trimStart('0').ifEmpty { "0" }
        }
        return trimmed
    }

    fun vodInfo(profile: Profile, vodId: Int): VodInfo? {
        val host = HostUtils.baseUrl(com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host))
        val baseQuery = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=get_vod_info")
        }
        val idKeys = listOf("vod_id", "stream_id")
        val body = idKeys.firstNotNullOfOrNull { key ->
            fetchDetailBody("$host/player_api.php?$baseQuery&$key=$vodId")
        } ?: return null
        return try {
            val root = gson.fromJson(body, JsonObject::class.java) ?: return null
            val info = root.getAsJsonObject("info")
            val movieData = root.getAsJsonObject("movie_data")
            val name = info?.get("name")?.asStringOrNull()
                ?: movieData?.get("name")?.asStringOrNull()
                ?: ""
            VodInfo(
                name = name,
                plot = MetaExtractor.plotFrom(info, movieData, root),
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
                cast = MetaExtractor.castFrom(info, movieData, root),
                castMembers = MetaExtractor.castMembersFrom(info, movieData, root),
                director = MetaExtractor.directorFrom(info, movieData),
                extension = movieData?.get("container_extension")?.asStringOrNull()
                    ?.ifBlank { info?.get("container_extension")?.asStringOrNull().orEmpty() }
                    ?.ifBlank { "mp4" }
                    ?: "mp4",
                directSource = info?.get("direct_source")?.asStringOrNull()
                    ?.ifBlank { movieData?.get("direct_source")?.asStringOrNull().orEmpty() }
                    .orEmpty()
                    .trim(),
            )
        } catch (_: Exception) {
            null
        }
    }

    fun vodPlaybackMeta(profile: Profile, vodId: Int): VodPlaybackMeta? {
        val info = vodInfo(profile, vodId) ?: return null
        return VodPlaybackMeta(
            extension = info.extension.ifBlank { "mp4" },
            directSource = info.directSource,
        )
    }

    fun streamUrl(profile: Profile, streamId: Int, ext: String = "ts"): String =
        buildStreamUrl(profile, "live", streamId, ext)

    fun streamUrlWithoutExtension(profile: Profile, streamId: Int): String =
        liveStreamUrlDirect(profile, streamId)

    /** Short live URL — avoids 301 redirect to gadir.co hostname (breaks on TV DNS). */
    fun liveStreamUrlDirect(profile: Profile, streamId: Int, ext: String? = null): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        val path = if (ext.isNullOrBlank()) {
            "$host/$u/$pw/$streamId"
        } else {
            "$host/$u/$pw/$streamId.$ext"
        }
        return NetworkUrlResolver.resolveUrl(path)
    }

    fun timeshiftStreamUrl(
        profile: Profile,
        streamId: Int,
        startSec: Long,
        durationSec: Int,
        ext: String = "ts",
    ): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        val extension = ext.ifBlank { "ts" }
        val durationHours = ((durationSec + 3599) / 3600).coerceAtLeast(1)
        val start = SimpleDateFormat("yyyy-MM-dd:HH-mm", Locale.US).format(Date(startSec * 1000L))
        return NetworkUrlResolver.resolveUrl(
            "$host/timeshift/$u/$pw/$durationHours/$start/$streamId.$extension",
        )
    }

    fun movieStreamUrl(profile: Profile, streamId: Int, ext: String = "mp4"): String =
        buildStreamUrl(profile, "movie", streamId, ext)

    fun movieStreamUrlWithoutExtension(profile: Profile, streamId: Int): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return NetworkUrlResolver.resolveUrl("$host/movie/$u/$pw/$streamId")
    }

    fun movieStreamPhp(profile: Profile, streamId: Int, ext: String = "mp4"): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        val e = encode(ext.ifBlank { "mp4" })
        return NetworkUrlResolver.resolveUrl(
            "$host/streaming/movies.php?username=$u&password=$pw&stream=$streamId&extension=$e",
        )
    }

    fun seriesStreamUrl(profile: Profile, episodeId: Int, ext: String = "mp4"): String =
        buildStreamUrl(profile, "series", episodeId, ext)

    fun seriesStreamUrlWithoutExtension(profile: Profile, episodeId: Int): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return NetworkUrlResolver.resolveUrl("$host/series/$u/$pw/$episodeId")
    }

    fun seriesStreamPhp(profile: Profile, episodeId: Int, ext: String = "mp4"): String {
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        val e = encode(ext.ifBlank { "mp4" })
        return NetworkUrlResolver.resolveUrl(
            "$host/streaming/series.php?username=$u&password=$pw&stream=$episodeId&extension=$e",
        )
    }

    fun shortEpg(
        profile: Profile,
        streamId: Int,
        epgChannelId: String = "",
        limit: Int = 4,
    ): List<EpgEntry> {
        if (streamId <= 0 && epgChannelId.isBlank()) return emptyList()
        val attempts = buildList {
            if (streamId > 0) {
                add(Triple("get_short_epg", mapOf("stream_id" to streamId.toString()), limit))
                add(Triple("get_simple_data_table", mapOf("stream_id" to streamId.toString()), limit))
            }
            if (epgChannelId.isNotBlank()) {
                add(Triple("get_short_epg", mapOf("epg_channel_id" to epgChannelId), limit))
                add(Triple("get_short_epg", mapOf("stream_id" to epgChannelId), limit))
                add(Triple("get_short_epg", mapOf("channel_id" to epgChannelId), limit))
                add(Triple("get_simple_data_table", mapOf("epg_channel_id" to epgChannelId), limit))
                add(Triple("get_simple_data_table", mapOf("stream_id" to epgChannelId), limit))
            }
        }.distinct()
        for ((action, params, requestLimit) in attempts) {
            val listings = fetchEpgListings(profile, params, requestLimit, action)
            if (listings.isNotEmpty()) return listings
        }
        return emptyList()
    }

    private fun fetchEpgListings(
        profile: Profile,
        params: Map<String, String>,
        limit: Int,
        actionOverride: String = "get_short_epg",
    ): List<EpgEntry> {
        val host = panelHost(profile)
        val action = actionOverride
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=").append(action)
            params.forEach { (key, value) ->
                if (key != "action") {
                    append("&").append(key).append("=").append(encode(value))
                }
            }
            if (!params.containsKey("limit")) {
                append("&limit=").append(limit)
            }
        }
        val url = "$host/player_api.php?$query"
        val agents = linkedSetOf(activeUserAgent).apply { addAll(userAgents.take(2)) }
        for (ua in agents) {
            for (method in listOf("GET", "POST")) {
                val fast = if (method == "GET") {
                    NativeHttpClient.fastRequest(url, ua)
                } else {
                    NativeHttpClient.fastRequest(url, ua, "POST")
                }
                parseEpgResponse(fast)?.let { return it }
            }
            for (method in listOf("GET", "POST")) {
                val response = NativeHttpClient.request(url, ua, method)
                parseEpgResponse(response)?.let { return it }
            }
        }
        return emptyList()
    }

    private fun parseEpgResponse(response: HttpResult): List<EpgEntry>? {
        if (response.status != 200 || response.body.isBlank()) return null
        val parsed = parseEpgListings(response.body)
        return parsed.takeIf { it.isNotEmpty() }
    }

    private fun parseEpgListings(body: String): List<EpgEntry> {
        return try {
            val root = gson.fromJson(body, JsonElement::class.java) ?: return emptyList()
            val listings = when {
                root.isJsonArray -> root.asJsonArray
                root.isJsonObject -> {
                    val obj = root.asJsonObject
                    obj.getAsJsonArray("epg_listings")
                        ?: obj.getAsJsonArray("epg")
                        ?: obj.getAsJsonArray("data")
                        ?: obj.getAsJsonArray("listings")
                }
                else -> null
            } ?: return emptyList()
            listings.mapNotNull { el ->
                val row = el.asJsonObjectOrNull() ?: return@mapNotNull null
                val title = decodeEpgTitle(row.get("title")?.asStringOrNull().orEmpty())
                EpgEntry(
                    title = title,
                    start = epgTimestamp(row, "start_timestamp", "start"),
                    end = epgTimestamp(row, "stop_timestamp", "end_timestamp", "stop", "end"),
                )
            }.filter { it.title.isNotBlank() }
        } catch (_: Exception) {
            emptyList()
        }
    }

    private fun epgTimestamp(row: JsonObject, vararg keys: String): Long {
        for (key in keys) {
            val el = row.get(key) ?: continue
            val value = when {
                el.isJsonPrimitive && el.asJsonPrimitive.isNumber -> el.asLong
                else -> {
                    val text = el.asStringOrNull().orEmpty()
                    text.toLongOrNull() ?: parseEpgDateTime(text)
                }
            }
            if (value > 0L) return normalizeEpgEpoch(value)
        }
        return 0L
    }

    private fun normalizeEpgEpoch(value: Long): Long =
        if (value > 9_999_999_999L) value / 1000L else value

    private fun parseEpgDateTime(raw: String): Long {
        if (raw.isBlank()) return 0L
        val patterns = listOf(
            "yyyy-MM-dd HH:mm:ss",
            "yyyy-MM-dd'T'HH:mm:ss",
            "dd-MM-yyyy HH:mm:ss",
        )
        for (pattern in patterns) {
            try {
                val sdf = java.text.SimpleDateFormat(pattern, java.util.Locale.US)
                sdf.timeZone = java.util.TimeZone.getDefault()
                val date = sdf.parse(raw.trim()) ?: continue
                return date.time / 1000L
            } catch (_: Exception) {
            }
        }
        return 0L
    }

    private fun decodeEpgTitle(raw: String): String {
        if (raw.isBlank()) return ""
        val trimmed = raw.trim()
        val base64Decoded = try {
            val bytes = android.util.Base64.decode(trimmed, android.util.Base64.DEFAULT)
            String(bytes, Charsets.UTF_8).trim()
        } catch (_: Exception) {
            ""
        }
        val candidate = base64Decoded.ifBlank { trimmed }
        return try {
            java.net.URLDecoder.decode(candidate, Charsets.UTF_8.name()).trim()
        } catch (_: Exception) {
            candidate
        }
    }

    private fun buildStreamUrl(profile: Profile, kind: String, streamId: Int, ext: String): String {
        if (kind == "live") {
            return liveStreamUrlDirect(profile, streamId, ext)
        }
        val host = panelHost(profile)
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return NetworkUrlResolver.resolveUrl("$host/$kind/$u/$pw/$streamId.$ext")
    }

    private fun panelHost(profile: Profile): String =
        HostUtils.baseUrl(com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host))

    private fun fetchCategories(profile: Profile, action: String): List<Category> =
        fetchList(profile, action).mapIndexed { index, row ->
            Category(
                id = row.get("category_id")?.asStringOrNull() ?: "",
                name = row.get("category_name")?.asStringOrNull() ?: "",
                order = row.playlistOrder(index),
            )
        }.filter { it.id.isNotEmpty() }
            .sortedBy { it.order }

    private fun fetchDetailBody(url: String): String? {
        val resolvedUrl = runCatching {
            val uri = java.net.URI(url)
            val host = uri.host ?: return@runCatching url
            val migrated = com.gadir.tv.net.PanelHttp.migrateProfileHost(
                "${uri.scheme ?: "http"}://$host",
            )
            val path = uri.rawPath.orEmpty()
            val query = uri.rawQuery?.let { "?$it" }.orEmpty()
            val port = uri.port
            val portSuffix = if (port > 0 && port != 80 && port != 443) ":$port" else ""
            "$migrated$portSuffix$path$query"
        }.getOrDefault(url)
        val agents = linkedSetOf(activeUserAgent).apply { addAll(userAgents) }
        for (ua in agents) {
            val get = NativeHttpClient.request(resolvedUrl, ua, "GET")
            val body = get.body.trim()
            if (get.status == 200 && body.isNotBlank() && body != "[]" && isUsableDetailBody(body)) {
                return body
            }
            if (get.status == 512 || get.status == 403 || get.status == 405 || body.isBlank() || body == "[]") {
                val post = NativeHttpClient.request(resolvedUrl, ua, "POST")
                val postBody = post.body.trim()
                if (post.status == 200 && postBody.isNotBlank() && postBody != "[]" && isUsableDetailBody(postBody)) {
                    return postBody
                }
            }
        }
        return null
    }

    private fun isUsableDetailBody(body: String): Boolean {
        if (body.contains("\"info\"") &&
            !body.contains("\"info\":[]") &&
            !body.contains("\"info\":null")
        ) {
            return true
        }
        if (body.contains("\"movie_data\"") &&
            !body.contains("\"movie_data\":[]") &&
            !body.contains("\"movie_data\":null")
        ) {
            return true
        }
        if (body.contains("\"episodes\"") &&
            !body.contains("\"episodes\":[]") &&
            !body.contains("\"episodes\":null")
        ) {
            return true
        }
        return body.contains("\"plot\"") ||
            body.contains("\"description\"") ||
            body.contains("\"overview\"") ||
            body.contains("\"cast\"") ||
            body.contains("\"actors\"")
    }

    private fun fetchList(
        profile: Profile,
        action: String,
        extra: Map<String, String> = emptyMap(),
    ): List<JsonObject> {
        val host = HostUtils.baseUrl(com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host))
        val query = buildString {
            append("username=").append(encode(profile.username))
            append("&password=").append(encode(profile.password))
            append("&action=").append(action)
            extra.forEach { (k, v) ->
                append("&").append(k).append("=").append(encode(v))
            }
        }
        val url = "$host/player_api.php?$query"
        val agents = linkedSetOf(activeUserAgent)
        agents.addAll(userAgents)
        for (ua in agents) {
            val get = NativeHttpClient.request(url, ua, "GET")
            parseListBody(get)?.let { return it }
            if (get.status == 512 || get.status == 403 || get.status == 405 || get.body.isBlank()) {
                val post = NativeHttpClient.request(url, ua, "POST")
                parseListBody(post)?.let { return it }
            }
        }
        return emptyList()
    }

    private fun parseListBody(response: com.gadir.tv.net.HttpResult): List<JsonObject>? {
        if (response.status != 200 || response.body.isBlank()) return null
        return try {
            val el = gson.fromJson(response.body, JsonElement::class.java)
            when {
                el == null || el.isJsonNull -> emptyList()
                el.isJsonArray -> el.asJsonArray.mapNotNull { it.asJsonObjectOrNull() }
                else -> null
            }
        } catch (_: Exception) {
            null
        }
    }

    private fun loginSuccess(ua: String, body: String): LoginResult {
        activeUserAgent = ua
        PlaylistRepository.userAgent = ua
        PlaylistRepository.profile?.host?.let { host ->
            val base = HostUtils.baseUrl(host)
            runCatching {
                val uri = java.net.URI(base)
                uri.host?.let { hostname ->
                    if (!hostname.matches(Regex("^\\d{1,3}(\\.\\d{1,3}){3}$")) &&
                        hostname.equals(com.gadir.tv.net.PanelHttp.GADIR_HOST, ignoreCase = true)
                    ) {
                        com.gadir.tv.net.PanelHttp.rememberWorkingIp(hostname, com.gadir.tv.net.PanelHttp.GADIR_IP)
                    }
                }
            }
        }
        storeAccountInfo(body)
        return LoginResult(true)
    }

    private fun storeAccountInfo(body: String) {
        if (body.isBlank()) return
        try {
            val root = gson.fromJson(body, JsonObject::class.java) ?: return
            val user = root.getAsJsonObject("user_info") ?: return
            PlaylistRepository.setAccountInfo(
                AccountInfo(
                    username = user.get("username")?.asStringOrNull().orEmpty(),
                    status = user.get("status")?.asStringOrNull().orEmpty(),
                    expDate = user.get("exp_date")?.asStringOrNull().orEmpty(),
                    activeConnections = user.get("active_cons")?.asStringOrNull().orEmpty(),
                    maxConnections = user.get("max_connections")?.asStringOrNull().orEmpty(),
                ),
            )
        } catch (_: Exception) {
            PlaylistRepository.setAccountInfo(null)
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

    private fun fallbackLiveIcon(profile: Profile, streamId: Int): String {
        if (streamId <= 0) return ""
        val base = panelHost(profile)
        return NetworkUrlResolver.resolveUrl("$base/images/$streamId.png")
    }

    private fun fallbackVodCover(profile: Profile, contentId: Int): String {
        if (contentId <= 0) return ""
        val base = panelHost(profile)
        val jpg = NetworkUrlResolver.resolveUrl("$base/images/$contentId.jpg")
        if (jpg.isNotBlank()) return jpg
        return NetworkUrlResolver.resolveUrl("$base/images/$contentId.png")
    }

    private fun looksLikeStreamUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains(".m3u8") ||
            lower.contains(".ts") ||
            lower.contains("/live/") && lower.contains(".php")
    }

    private fun looksLikeImageUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.startsWith("http") ||
            lower.startsWith("//") ||
            lower.contains(".png") ||
            lower.contains(".jpg") ||
            lower.contains(".jpeg") ||
            lower.contains(".webp") ||
            lower.contains(".gif") ||
            lower.contains("/images/")
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

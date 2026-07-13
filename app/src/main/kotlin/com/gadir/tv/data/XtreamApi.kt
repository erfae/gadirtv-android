package com.gadir.tv.data

import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.LoginResult
import com.gadir.tv.model.Profile
import com.gadir.tv.net.NativeHttpClient
import com.gadir.tv.util.HostUtils
import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import java.net.URLEncoder

class XtreamApi {
    var activeUserAgent: String = "XCIPTV"
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
                    return LoginResult(true)
                }

                val post = NativeHttpClient.request(url, ua, "POST")
                if (post.status == 200 && parseAuth(post.body)) {
                    activeUserAgent = ua
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

    fun streamUrl(profile: Profile, streamId: Int, ext: String = "ts"): String {
        val host = HostUtils.normalize(profile.host).trimEnd('/')
        val u = encode(profile.username)
        val pw = encode(profile.password)
        return "$host/live/$u/$pw/$streamId.$ext"
    }

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

package com.gadir.tv.net

import android.util.Log
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import java.net.URI
import java.util.concurrent.TimeUnit

/** OkHttp Xtream client — ported from Flutter [NativeHttpClient]. */
object NativeHttpClient {
    private const val TAG = "GadirTV-HTTP"

    private val client: OkHttpClient = OkHttpClient.Builder()
        .connectTimeout(8, TimeUnit.SECONDS)
        .readTimeout(12, TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(true)
        .build()

    fun request(url: String, userAgent: String, method: String = "GET"): HttpResult {
        val uri = URI(url)
        val portPart = when {
            uri.port == -1 -> ""
            uri.port == 80 && uri.scheme == "http" -> ""
            uri.port == 443 && uri.scheme == "https" -> ""
            else -> ":${uri.port}"
        }
        val origin = "${uri.scheme}://${uri.host}$portPart"
        val referer = "$origin/"

        val builder = Request.Builder()
            .header("User-Agent", userAgent)
            .header("Accept", "application/json, text/plain, */*")
            .header("Accept-Encoding", "identity")
            .header("Accept-Language", "en-US,en;q=0.9")
            .header("Connection", "keep-alive")
            .header("Referer", referer)
            .header("Origin", origin)

        if (method.equals("POST", ignoreCase = true)) {
            val form = FormBody.Builder()
            parseQuery(uri.query).forEach { (k, v) -> form.add(k, v) }
            val postUrl = if (uri.path.isNullOrBlank()) "$origin/player_api.php" else "$origin${uri.path}"
            builder.url(postUrl).post(form.build())
            Log.i(TAG, "POST $postUrl UA=$userAgent")
        } else {
            builder.url(url).get()
            Log.i(TAG, "GET $url UA=$userAgent")
        }

        client.newCall(builder.build()).execute().use { response ->
            val body = response.body?.string() ?: ""
            return HttpResult(
                status = response.code,
                body = body,
                method = method.uppercase(),
            )
        }
    }

    private fun parseQuery(query: String?): Map<String, String> {
        if (query.isNullOrBlank()) return emptyMap()
        val out = linkedMapOf<String, String>()
        for (part in query.split("&")) {
            val idx = part.indexOf('=')
            if (idx <= 0) continue
            val key = java.net.URLDecoder.decode(part.substring(0, idx), "UTF-8")
            val value = java.net.URLDecoder.decode(part.substring(idx + 1), "UTF-8")
            out[key] = value
        }
        return out
    }
}

data class HttpResult(
    val status: Int,
    val body: String,
    val method: String,
)

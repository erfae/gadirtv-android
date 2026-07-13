package com.gadir.tv.net

import android.util.Log

/** OkHttp Xtream client with retries for overloaded IPTV servers. */
object NativeHttpClient {
    private const val TAG = "GadirTV-HTTP"
    private const val MAX_RETRIES = 3

    fun request(url: String, userAgent: String, method: String = "GET"): HttpResult {
        var last: HttpResult? = null
        repeat(MAX_RETRIES) { attempt ->
            val result = requestOnce(url, userAgent, method)
            last = result
            val retryable = result.status in 500..599 ||
                result.status == 429 ||
                (result.status == 200 && result.body.isBlank())
            if (!retryable) return result
            val delay = 400L * (attempt + 1)
            Log.w(TAG, "Retry ${attempt + 1}/$MAX_RETRIES status=${result.status} empty=${result.body.isBlank()}")
            Thread.sleep(delay)
        }
        return last ?: HttpResult(0, "", method.uppercase())
    }

    private fun requestOnce(url: String, userAgent: String, method: String): HttpResult {
        val uri = java.net.URI(url)
        val portPart = when {
            uri.port == -1 -> ""
            uri.port == 80 && uri.scheme == "http" -> ""
            uri.port == 443 && uri.scheme == "https" -> ""
            else -> ":${uri.port}"
        }
        val origin = "${uri.scheme}://${uri.host}$portPart"
        val referer = "$origin/"

        val builder = okhttp3.Request.Builder()
            .header("User-Agent", userAgent)
            .header("Accept", "application/json, text/plain, */*")
            .header("Accept-Encoding", "identity")
            .header("Accept-Language", "es-ES,es;q=0.9,en;q=0.8")
            .header("Connection", "keep-alive")
            .header("Referer", referer)
            .header("Origin", origin)

        if (method.equals("POST", ignoreCase = true)) {
            val form = okhttp3.FormBody.Builder()
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

    private val client: okhttp3.OkHttpClient = okhttp3.OkHttpClient.Builder()
        .connectTimeout(12, java.util.concurrent.TimeUnit.SECONDS)
        .readTimeout(20, java.util.concurrent.TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(true)
        .build()

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

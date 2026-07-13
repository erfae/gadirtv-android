package com.gadir.tv.net

import android.util.Log
import com.gadir.tv.util.HostUtils
import okhttp3.ConnectionSpec
import okhttp3.Dns
import java.net.Inet4Address
import java.net.InetAddress
import java.util.concurrent.TimeUnit

/** OkHttp Xtream client — IPv4 preferido, reintentos ante 503/cuerpo vacío. */
object NativeHttpClient {
    private const val TAG = "GadirTV-HTTP"
    private const val MAX_RETRIES = 3

    private val ipv4PreferredDns = object : Dns {
        override fun lookup(hostname: String): List<InetAddress> {
            val resolved = Dns.SYSTEM.lookup(hostname)
            val v4 = resolved.filterIsInstance<Inet4Address>()
            if (v4.isNotEmpty()) {
                Log.i(TAG, "DNS $hostname → IPv4 ${v4.first().hostAddress}")
                return v4
            }
            Log.w(TAG, "DNS $hostname → sin IPv4, usando ${resolved.size} direcciones")
            return resolved
        }
    }

    private val client = okhttp3.OkHttpClient.Builder()
        .dns(ipv4PreferredDns)
        .connectTimeout(20, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(20, TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(true)
        .connectionSpecs(listOf(ConnectionSpec.CLEARTEXT, ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS))
        .build()

    fun request(url: String, userAgent: String, method: String = "GET"): HttpResult {
        var last: HttpResult? = null
        repeat(MAX_RETRIES) { attempt ->
            val result = requestOnce(url, userAgent, method)
            last = result
            if (result.error != null && result.status == 0) return result
            val retryable = result.status in 500..599 ||
                result.status == 429 ||
                result.status == 502 ||
                result.status == 503 ||
                (result.status == 200 && result.body.isBlank())
            if (!retryable) return result
            val delay = 500L * (attempt + 1)
            Log.w(TAG, "Retry ${attempt + 1}/$MAX_RETRIES status=${result.status}")
            Thread.sleep(delay)
        }
        return last ?: HttpResult(0, "", method.uppercase(), "Sin respuesta")
    }

    private fun requestOnce(url: String, userAgent: String, method: String): HttpResult {
        return try {
            val normalizedUrl = normalizeRequestUrl(url)
            val uri = java.net.URI(normalizedUrl)
            val origin = HostUtils.baseUrl("${uri.scheme}://${uri.host}${portSuffix(uri)}")
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
                val postUrl = "$origin/player_api.php"
                builder.url(postUrl).post(form.build())
                Log.i(TAG, "POST $postUrl UA=$userAgent")
            } else {
                builder.url(normalizedUrl).get()
                Log.i(TAG, "GET $normalizedUrl UA=$userAgent")
            }

            client.newCall(builder.build()).execute().use { response ->
                val body = response.body?.string() ?: ""
                HttpResult(
                    status = response.code,
                    body = body,
                    method = method.uppercase(),
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "HTTP error: ${e.message}", e)
            HttpResult(
                status = 0,
                body = "",
                method = method.uppercase(),
                error = e.message ?: e.javaClass.simpleName,
            )
        }
    }

    private fun normalizeRequestUrl(url: String): String {
        val base = HostUtils.normalize(url.substringBefore('?'))
        val query = url.substringAfter('?', "")
        return if (query.isEmpty() || query == url) base else "$base?$query"
    }

    private fun portSuffix(uri: java.net.URI): String {
        val port = uri.port
        if (port <= 0) return ""
        if (port == 80 && uri.scheme == "http") return ""
        if (port == 443 && uri.scheme == "https") return ""
        return ":$port"
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
    val error: String? = null,
)

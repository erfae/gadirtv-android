package com.gadir.tv.net

import android.util.Log
import com.gadir.tv.util.HostUtils
import okhttp3.ConnectionSpec
import okhttp3.Dns
import okhttp3.FormBody
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.Inet4Address
import java.net.InetAddress
import java.net.URL
import java.util.concurrent.TimeUnit

/** Cliente HTTP Xtream — OkHttp + HttpURLConnection, IPv4, fallback por IP. */
object NativeHttpClient {
    private const val TAG = "GadirIPTV-HTTP"
    private const val MAX_RETRIES = 3

    /** IP conocida de gadir.co — fallback cuando DNS/TCP al hostname falla en TV Box. */
    private const val GADIR_IP = "51.91.120.175"

    private val ipv4PreferredDns = object : Dns {
        override fun lookup(hostname: String): List<InetAddress> {
            return try {
                val resolved = Dns.SYSTEM.lookup(hostname)
                val v4 = resolved.filterIsInstance<Inet4Address>()
                if (v4.isNotEmpty()) v4 else resolved
            } catch (e: Exception) {
                Log.w(TAG, "DNS falló para $hostname: ${e.message}")
                emptyList()
            }
        }
    }

    private val okHttp = OkHttpClient.Builder()
        .dns(ipv4PreferredDns)
        .connectTimeout(25, TimeUnit.SECONDS)
        .readTimeout(35, TimeUnit.SECONDS)
        .writeTimeout(25, TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(true)
        .connectionSpecs(listOf(ConnectionSpec.CLEARTEXT, ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS))
        .build()

    fun request(url: String, userAgent: String, method: String = "GET"): HttpResult {
        val targets = buildTargets(url)
        var last = HttpResult(0, "", method.uppercase(), "Sin respuesta")

        for (target in targets) {
            repeat(MAX_RETRIES) { attempt ->
                for (transport in listOf("OkHttp", "HttpURL")) {
                    val result = when (transport) {
                        "OkHttp" -> requestOkHttp(target, userAgent, method)
                        else -> requestHttpUrl(target, userAgent, method)
                    }
                    last = result
                    if (result.error == null && result.status > 0) {
                        if (result.status == 200 && result.body.isNotBlank()) return result
                        if (result.status !in 500..599 && result.status != 512 && result.status != 429) {
                            return result
                        }
                    }
                }
                if (attempt < MAX_RETRIES - 1) {
                    Thread.sleep(600L * (attempt + 1))
                }
            }
        }
        return last
    }

    private data class RequestTarget(
        val requestUrl: String,
        val hostHeader: String?,
        val label: String,
    )

    private fun buildTargets(url: String): List<RequestTarget> {
        val normalized = normalizeRequestUrl(url)
        val uri = java.net.URI(normalized)
        val hostname = uri.host ?: return listOf(RequestTarget(normalized, null, "direct"))
        val pathAndQuery = buildString {
            append(uri.rawPath ?: "")
            if (!uri.rawQuery.isNullOrBlank()) append('?').append(uri.rawQuery)
        }
        val scheme = uri.scheme ?: "http"

        val targets = mutableListOf<RequestTarget>()
        targets.add(RequestTarget(normalized, null, "host:$hostname"))

        if (hostname.equals("gadir.co", ignoreCase = true)) {
            val ipUrl = "$scheme://$GADIR_IP$pathAndQuery"
            targets.add(RequestTarget(ipUrl, "gadir.co", "ip:$GADIR_IP"))
        }
        return targets
    }

    private fun requestOkHttp(target: RequestTarget, userAgent: String, method: String): HttpResult {
        return try {
            val uri = java.net.URI(target.requestUrl)
            val originHost = target.hostHeader ?: uri.host
            val scheme = uri.scheme ?: "http"
            val origin = HostUtils.baseUrl("$scheme://${originHost}${portSuffix(uri)}")

            val builder = Request.Builder()
                .header("User-Agent", userAgent)
                .header("Accept", "application/json, text/plain, */*")
                .header("Accept-Encoding", "identity")
                .header("Accept-Language", "es-ES,es;q=0.9,en;q=0.8")
                .header("Connection", "keep-alive")
                .header("Referer", "$origin/")

            if (target.hostHeader != null) {
                builder.header("Host", target.hostHeader)
            }

            if (method.equals("POST", ignoreCase = true)) {
                val form = FormBody.Builder()
                parseQuery(uri.query).forEach { (k, v) -> form.add(k, v) }
                val postUrl = "$origin/player_api.php"
                builder.url(postUrl).post(form.build())
                Log.i(TAG, "OkHttp POST $postUrl [${target.label}] UA=$userAgent")
            } else {
                builder.url(target.requestUrl).get()
                Log.i(TAG, "OkHttp GET ${target.requestUrl} [${target.label}] UA=$userAgent")
            }

            okHttp.newCall(builder.build()).execute().use { response ->
                HttpResult(response.code, response.body?.string() ?: "", method.uppercase())
            }
        } catch (e: Exception) {
            Log.e(TAG, "OkHttp [${target.label}] ${e.message}")
            HttpResult(0, "", method.uppercase(), e.message ?: e.javaClass.simpleName)
        }
    }

    private fun requestHttpUrl(target: RequestTarget, userAgent: String, method: String): HttpResult {
        return try {
            val uri = java.net.URI(target.requestUrl)
            val originHost = target.hostHeader ?: uri.host
            val scheme = uri.scheme ?: "http"
            val origin = HostUtils.baseUrl("$scheme://${originHost}${portSuffix(uri)}")

            val connUrl = if (method.equals("POST", ignoreCase = true)) {
                "$origin/player_api.php"
            } else {
                target.requestUrl
            }

            val conn = (URL(connUrl).openConnection() as HttpURLConnection).apply {
                connectTimeout = 25_000
                readTimeout = 35_000
                requestMethod = method.uppercase()
                instanceFollowRedirects = true
                setRequestProperty("User-Agent", userAgent)
                setRequestProperty("Accept", "application/json, text/plain, */*")
                setRequestProperty("Accept-Encoding", "identity")
                setRequestProperty("Connection", "keep-alive")
                setRequestProperty("Referer", "$origin/")
                if (target.hostHeader != null) {
                    setRequestProperty("Host", target.hostHeader)
                }
                if (method.equals("POST", ignoreCase = true)) {
                    doOutput = true
                    setRequestProperty("Content-Type", "application/x-www-form-urlencoded")
                }
            }

            if (method.equals("POST", ignoreCase = true)) {
                val form = parseQuery(uri.query)
                    .entries.joinToString("&") { "${it.key}=${java.net.URLEncoder.encode(it.value, "UTF-8")}" }
                conn.outputStream.use { it.write(form.toByteArray(Charsets.UTF_8)) }
            }

            Log.i(TAG, "HttpURL ${method.uppercase()} $connUrl [${target.label}]")
            val status = conn.responseCode
            val stream = if (status >= 400) conn.errorStream else conn.inputStream
            val body = stream?.let { input ->
                BufferedReader(InputStreamReader(input, Charsets.UTF_8)).use { it.readText() }
            }.orEmpty()
            conn.disconnect()
            HttpResult(status, body, method.uppercase())
        } catch (e: Exception) {
            Log.e(TAG, "HttpURL [${target.label}] ${e.message}")
            HttpResult(0, "", method.uppercase(), e.message ?: e.javaClass.simpleName)
        }
    }

    private fun normalizeRequestUrl(url: String): String {
        val qIdx = url.indexOf('?')
        val base = if (qIdx >= 0) url.substring(0, qIdx) else url
        val query = if (qIdx >= 0) url.substring(qIdx + 1) else ""
        val normalizedBase = HostUtils.baseUrl(base)
        return if (query.isEmpty()) normalizedBase else "$normalizedBase?$query"
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

package com.gadir.tv.net

import android.util.Log
import com.gadir.tv.util.HostUtils
import okhttp3.FormBody
import okhttp3.Request
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL

/** Cliente HTTP Xtream — OkHttp + HttpURLConnection, IPv4, fallback por IP. */
object NativeHttpClient {
    private const val TAG = "GadirIPTV-HTTP"
    private const val MAX_RETRIES = 2

    fun request(url: String, userAgent: String, method: String = "GET"): HttpResult {
        val targets = PanelHttp.buildTargets(url)
        var last = HttpResult(0, "", method.uppercase(), "Sin respuesta")

        for (target in targets) {
            repeat(MAX_RETRIES) { attempt ->
                for (transport in listOf("OkHttp", "HttpURL")) {
                    val result = when (transport) {
                        "OkHttp" -> requestOkHttp(target, userAgent, method, PanelHttp.okHttpClient)
                        else -> requestHttpUrl(target, userAgent, method)
                    }
                    last = result
                    if (result.error == null && result.status > 0) {
                        if (target.hostHeader != null && result.status in 200..399) {
                            target.hostHeader?.let { host ->
                                URI(target.requestUrl).host?.let { ip ->
                                    PanelHttp.rememberWorkingIp(host, ip)
                                }
                            }
                        }
                        if (result.status == 200 && result.body.isNotBlank()) return result
                        if (result.status !in 500..599 && result.status != 512 && result.status != 429) {
                            return result
                        }
                    }
                }
                if (attempt < MAX_RETRIES - 1) {
                    Thread.sleep(350L * (attempt + 1))
                }
            }
        }
        return last
    }

    /** Fast single-attempt request for EPG/preview (avoids multi-retry latency). */
    fun fastRequest(url: String, userAgent: String, method: String = "GET"): HttpResult {
        val target = PanelHttp.buildTargets(url).firstOrNull()
            ?: return HttpResult(0, "", method.uppercase(), "Sin destino")
        return requestOkHttp(target, userAgent, method, PanelHttp.detailOkHttpClient)
    }

    /** Single-target detail fetch with a short deadline (does not block UI for minutes). */
    fun detailRequest(url: String, userAgent: String, method: String = "GET"): HttpResult {
        val target = PanelHttp.buildTargets(url).firstOrNull()
            ?: return HttpResult(0, "", method.uppercase(), "Sin destino")
        return requestOkHttp(target, userAgent, method, PanelHttp.detailOkHttpClient)
    }

    @Deprecated("Use detailRequest", ReplaceWith("detailRequest(url, userAgent, method)"))
    fun quickRequest(url: String, userAgent: String, method: String = "GET"): HttpResult =
        detailRequest(url, userAgent, method)

    private fun requestOkHttp(
        target: PanelHttp.RequestTarget,
        userAgent: String,
        method: String,
        client: okhttp3.OkHttpClient = PanelHttp.okHttpClient,
    ): HttpResult {
        return try {
            val uri = URI(target.requestUrl)
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

            client.newCall(builder.build()).execute().use { response ->
                HttpResult(response.code, response.body?.string() ?: "", method.uppercase())
            }
        } catch (e: Exception) {
            Log.e(TAG, "OkHttp [${target.label}] ${e.message}")
            HttpResult(0, "", method.uppercase(), e.message ?: e.javaClass.simpleName)
        }
    }

    private fun requestHttpUrl(target: PanelHttp.RequestTarget, userAgent: String, method: String): HttpResult {
        return try {
            val uri = URI(target.requestUrl)
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

    private fun portSuffix(uri: URI): String {
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

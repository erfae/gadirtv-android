package com.gadir.tv.net

import android.util.Log
import okhttp3.ConnectionSpec
import okhttp3.Dns
import okhttp3.Interceptor
import okhttp3.OkHttpClient
import java.net.Inet4Address
import java.net.InetAddress
import java.net.URI
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.TimeUnit

/**
 * Shared HTTP layer for panel requests (API, images, streams).
 * Rewrites panel hostnames to IP so redirects never land on DNS-blocked hostnames on TV boxes.
 */
object PanelHttp {
    private const val TAG = "GadirIPTV-PanelHttp"
    private const val MAX_REDIRECTS = 6

    const val GADIR_IP = "51.91.120.175"
    const val GADIR_HOST = "gadir.co"

    private val knownIps = ConcurrentHashMap<String, String>()

    init {
        knownIps[GADIR_HOST] = GADIR_IP
    }

    data class Resolved(
        val url: String,
        val hostHeader: String? = null,
    )

    data class RequestTarget(
        val requestUrl: String,
        val hostHeader: String?,
        val label: String,
    )

    fun panelIpFor(hostname: String): String? = knownIps[hostname.lowercase()]

    fun virtualHostFor(hostname: String): String? {
        if (hostname.equals(GADIR_IP, ignoreCase = true)) return GADIR_HOST
        return knownIps.entries.firstOrNull { it.value.equals(hostname, ignoreCase = true) }?.key
    }

    fun rememberWorkingIp(hostname: String, ip: String) {
        if (hostname.isBlank() || ip.isBlank()) return
        knownIps[hostname.lowercase()] = ip
        Log.i(TAG, "Cached IP for $hostname -> $ip")
    }

    fun migrateProfileHost(host: String): String {
        val normalized = com.gadir.tv.util.HostUtils.baseUrl(host)
        return try {
            val uri = URI(normalized)
            val hostname = uri.host ?: return normalized
            if (hostname.matches(Regex("^\\d{1,3}(\\.\\d{1,3}){3}$"))) return normalized
            val ip = knownIps[hostname.lowercase()] ?: return normalized
            val scheme = uri.scheme ?: "http"
            val portSuffix = portSuffix(uri)
            "$scheme://$ip$portSuffix"
        } catch (_: Exception) {
            normalized
        }
    }

    fun resolve(rawUrl: String): Resolved {
        val url = rawUrl.trim()
        if (url.isBlank() || !url.startsWith("http", ignoreCase = true)) {
            return Resolved(url)
        }
        return rewrite(url)
    }

    fun resolveUrl(rawUrl: String): String = resolve(rawUrl).url

    fun hostHeader(rawUrl: String): String? = resolve(rawUrl).hostHeader

    fun buildTargets(url: String): List<RequestTarget> {
        val normalized = normalizeUrl(url)
        val uri = URI(normalized)
        val hostname = uri.host ?: return listOf(RequestTarget(normalized, null, "direct"))
        val pathAndQuery = buildString {
            append(uri.rawPath ?: "")
            if (!uri.rawQuery.isNullOrBlank()) append('?').append(uri.rawQuery)
        }
        val scheme = uri.scheme ?: "http"
        val portSuffix = portSuffix(uri)

        virtualHostFor(hostname)?.let { vhost ->
            return listOf(RequestTarget(normalized, vhost, "panel:$hostname"))
        }

        val ip = knownIps[hostname.lowercase()]
        if (!ip.isNullOrBlank() && !hostname.equals(ip, ignoreCase = true)) {
            val ipUrl = "$scheme://$ip$portSuffix$pathAndQuery"
            return listOf(
                RequestTarget(ipUrl, hostname, "ip:$ip"),
                RequestTarget(normalized, null, "host:$hostname"),
            )
        }
        return listOf(RequestTarget(normalized, null, "host:$hostname"))
    }

    private fun rewrite(url: String): Resolved {
        return try {
            val uri = URI(url)
            val hostname = uri.host ?: return Resolved(url)
            if (hostname.matches(Regex("^\\d{1,3}(\\.\\d{1,3}){3}$"))) {
                val vhost = virtualHostFor(hostname)
                return if (vhost != null) Resolved(url, vhost) else Resolved(url)
            }
            val ip = knownIps[hostname.lowercase()] ?: return Resolved(url)
            val scheme = uri.scheme ?: "http"
            val portSuffix = portSuffix(uri)
            val path = uri.rawPath.orEmpty()
            val query = uri.rawQuery?.let { "?$it" }.orEmpty()
            val fragment = uri.rawFragment?.let { "#$it" }.orEmpty()
            Resolved(
                url = "$scheme://$ip$portSuffix$path$query$fragment",
                hostHeader = hostname,
            )
        } catch (_: Exception) {
            Resolved(url)
        }
    }

    private fun normalizeUrl(url: String): String {
        val qIdx = url.indexOf('?')
        val base = if (qIdx >= 0) url.substring(0, qIdx) else url
        val query = if (qIdx >= 0) url.substring(qIdx + 1) else ""
        val normalizedBase = com.gadir.tv.util.HostUtils.baseUrl(base)
        return if (query.isEmpty()) normalizedBase else "$normalizedBase?$query"
    }

    private fun portSuffix(uri: URI): String {
        val port = uri.port
        if (port <= 0) return ""
        if (port == 80 && uri.scheme == "http") return ""
        if (port == 443 && uri.scheme == "https") return ""
        return ":$port"
    }

    private val resolveInterceptor = Interceptor { chain ->
        val original = chain.request()
        val resolved = resolve(original.url.toString())
        val builder = original.newBuilder().url(resolved.url)
        val host = resolved.hostHeader ?: UriHost(resolved.url)?.let { virtualHostFor(it) }
        host?.let { builder.header("Host", it) }
        chain.proceed(builder.build())
    }

    private fun UriHost(url: String): String? =
        runCatching { URI(url).host }.getOrNull()

    private val redirectInterceptor = Interceptor { chain ->
        var request = chain.request()
        var response = chain.proceed(request)
        var hops = 0
        while (response.code in 301..308 && hops < MAX_REDIRECTS) {
            val location = response.header("Location")?.trim().orEmpty()
            if (location.isEmpty()) break
            val rewritten = resolve(location)
            response.close()
            val builder = request.newBuilder().url(rewritten.url)
            val host = rewritten.hostHeader ?: UriHost(rewritten.url)?.let { virtualHostFor(it) }
            host?.let { builder.header("Host", it) }
            request = builder.build()
            response = chain.proceed(request)
            hops++
        }
        response
    }

    private val ipv4PreferredDns = object : Dns {
        override fun lookup(hostname: String): List<InetAddress> {
            knownIps[hostname.lowercase()]?.let { ip ->
                return listOf(InetAddress.getByName(ip))
            }
            virtualHostFor(hostname)?.let { vhost ->
                knownIps[vhost]?.let { ip ->
                    return listOf(InetAddress.getByName(ip))
                }
            }
            return try {
                val resolved = Dns.SYSTEM.lookup(hostname)
                val v4 = resolved.filterIsInstance<Inet4Address>()
                if (v4.isNotEmpty()) v4 else resolved
            } catch (e: Exception) {
                Log.w(TAG, "DNS failed for $hostname: ${e.message}")
                emptyList()
            }
        }
    }

    private fun baseClientBuilder(): OkHttpClient.Builder =
        OkHttpClient.Builder()
            .dns(ipv4PreferredDns)
            .followRedirects(false)
            .followSslRedirects(false)
            .retryOnConnectionFailure(true)
            .connectionSpecs(
                listOf(ConnectionSpec.CLEARTEXT, ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS),
            )
            .addInterceptor(resolveInterceptor)
            .addInterceptor(redirectInterceptor)

    val okHttpClient: OkHttpClient by lazy {
        baseClientBuilder()
            .connectTimeout(12, TimeUnit.SECONDS)
            .readTimeout(20, TimeUnit.SECONDS)
            .writeTimeout(12, TimeUnit.SECONDS)
            .build()
    }

    /** Fast-fail client for channel icons / posters. */
    val imageOkHttpClient: OkHttpClient by lazy {
        baseClientBuilder()
            .connectTimeout(5, TimeUnit.SECONDS)
            .readTimeout(8, TimeUnit.SECONDS)
            .writeTimeout(5, TimeUnit.SECONDS)
            .build()
    }
}

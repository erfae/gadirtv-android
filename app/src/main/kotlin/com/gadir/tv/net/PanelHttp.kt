package com.gadir.tv.net

import android.util.Log
import okhttp3.ConnectionSpec
import okhttp3.Dns
import okhttp3.OkHttpClient
import java.net.Inet4Address
import java.net.InetAddress
import java.net.URI
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.TimeUnit

/**
 * Shared HTTP layer for panel requests (API, images, streams).
 * Caches working IP per hostname so Glide/Exo/VLC all hit the same target as [NativeHttpClient].
 */
object PanelHttp {
    private const val TAG = "GadirIPTV-PanelHttp"

    /** Known IP for gadir.co when DNS fails on TV boxes. */
    const val GADIR_IP = "51.91.120.175"

    private val knownIps = ConcurrentHashMap<String, String>()

    init {
        knownIps["gadir.co"] = GADIR_IP
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

    fun rememberWorkingIp(hostname: String, ip: String) {
        if (hostname.isBlank() || ip.isBlank()) return
        knownIps[hostname.lowercase()] = ip
        Log.i(TAG, "Cached IP for $hostname -> $ip")
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

        val targets = mutableListOf<RequestTarget>()
        targets.add(RequestTarget(normalized, null, "host:$hostname"))

        val ip = knownIps[hostname.lowercase()]
        if (!ip.isNullOrBlank() && !hostname.equals(ip, ignoreCase = true)) {
            val ipUrl = "$scheme://$ip$portSuffix$pathAndQuery"
            targets.add(RequestTarget(ipUrl, hostname, "ip:$ip"))
        }
        return targets
    }

    private fun rewrite(url: String): Resolved {
        return try {
            val uri = URI(url)
            val hostname = uri.host ?: return Resolved(url)
            if (hostname.matches(Regex("^\\d{1,3}(\\.\\d{1,3}){3}$"))) {
                return Resolved(url)
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

    private val ipv4PreferredDns = object : Dns {
        override fun lookup(hostname: String): List<InetAddress> {
            return try {
                val resolved = Dns.SYSTEM.lookup(hostname)
                val v4 = resolved.filterIsInstance<Inet4Address>()
                if (v4.isNotEmpty()) v4 else resolved
            } catch (e: Exception) {
                knownIps[hostname.lowercase()]?.let { ip ->
                    return listOf(InetAddress.getByName(ip))
                }
                Log.w(TAG, "DNS failed for $hostname: ${e.message}")
                emptyList()
            }
        }
    }

    val okHttpClient: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .dns(ipv4PreferredDns)
            .connectTimeout(25, TimeUnit.SECONDS)
            .readTimeout(35, TimeUnit.SECONDS)
            .writeTimeout(25, TimeUnit.SECONDS)
            .followRedirects(true)
            .followSslRedirects(true)
            .retryOnConnectionFailure(true)
            .connectionSpecs(
                listOf(ConnectionSpec.CLEARTEXT, ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS),
            )
            .build()
    }
}

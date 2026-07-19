package com.gadir.tv.util

import java.net.URI

/**
 * Rewrites panel hostnames to direct IP when DNS fails on TV boxes (same logic as [com.gadir.tv.net.NativeHttpClient]).
 * Playback and image loaders must send the original hostname in the HTTP Host header.
 */
object NetworkUrlResolver {
    const val GADIR_IP = "51.91.120.175"

    private val HOSTS_WITH_IP_FALLBACK = setOf("gadir.co")

    data class Resolved(
        val url: String,
        val hostHeader: String? = null,
    )

    fun resolve(raw: String): Resolved {
        val url = ImageUrlResolver.resolve(raw)
        if (url.isBlank()) return Resolved("")
        return rewrite(url)
    }

    fun resolveUrl(raw: String): String = resolve(raw).url

    fun hostHeader(raw: String): String? = resolve(raw).hostHeader

    private fun rewrite(url: String): Resolved {
        return try {
            val uri = URI(url)
            val hostname = uri.host ?: return Resolved(url)
            if (HOSTS_WITH_IP_FALLBACK.none { it.equals(hostname, ignoreCase = true) }) {
                return Resolved(url)
            }
            if (hostname == GADIR_IP) return Resolved(url)
            val scheme = uri.scheme ?: "http"
            val path = uri.rawPath.orEmpty()
            val query = uri.rawQuery?.let { "?$it" }.orEmpty()
            val fragment = uri.rawFragment?.let { "#$it" }.orEmpty()
            Resolved(
                url = "$scheme://$GADIR_IP$path$query$fragment",
                hostHeader = hostname,
            )
        } catch (_: Exception) {
            Resolved(url)
        }
    }
}

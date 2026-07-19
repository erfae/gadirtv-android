package com.gadir.tv.util

import com.gadir.tv.net.PanelHttp

/**
 * Rewrites panel hostnames to direct IP when DNS fails on TV boxes.
 * Playback and image loaders must send the original hostname in the HTTP Host header.
 */
object NetworkUrlResolver {
    const val GADIR_IP = PanelHttp.GADIR_IP

    data class Resolved(
        val url: String,
        val hostHeader: String? = null,
    )

    fun resolve(raw: String): Resolved {
        val url = ImageUrlResolver.resolve(raw)
        if (url.isBlank()) return Resolved("")
        val resolved = PanelHttp.resolve(url)
        return Resolved(resolved.url, resolved.hostHeader)
    }

    fun resolveUrl(raw: String): String = resolve(raw).url

    fun hostHeader(raw: String): String? = resolve(raw).hostHeader

    fun rememberWorkingIp(hostname: String, ip: String) =
        PanelHttp.rememberWorkingIp(hostname, ip)
}

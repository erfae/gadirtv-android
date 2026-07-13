package com.gadir.tv.util

import java.net.Inet4Address
import java.net.URI

/** Port of Flutter [normalizeXtreamHost]. */
object HostUtils {
    fun normalize(raw: String): String {
        var h = raw.trim()
        if (h.isEmpty()) return h

        while (h.endsWith('/')) {
            h = h.dropLast(1)
        }

        val lower = h.lowercase()
        if (lower.startsWith("https//")) {
            h = "https://${h.substring(7)}"
        } else if (lower.startsWith("http//")) {
            h = "http://${h.substring(6)}"
        }

        val l2 = h.lowercase()
        if (l2.startsWith("http://http://")) {
            h = h.substring(7)
        } else if (l2.startsWith("http://https://")) {
            h = "https://${h.substring(12)}"
        } else if (l2.startsWith("https://http://")) {
            h = "http://${h.substring(12)}"
        } else if (l2.startsWith("http://http//")) {
            h = "http://${h.substring(12)}"
        } else if (l2.startsWith("http://https//")) {
            h = "https://${h.substring(13)}"
        }

        if (!h.startsWith("http://") && !h.startsWith("https://")) {
            h = "http://$h"
        }

        try {
            val uri = URI(h)
            if (h.startsWith("https://") && uri.port == 80) {
                h = h.replaceFirst("https://", "http://")
            }
            h = stripDefaultPort(h, uri)
        } catch (_: Exception) {
        }

        return h
    }

    /** Evita :80/:443 explícitos — algunos TV Box fallan al conectar con puerto en la URL. */
    private fun stripDefaultPort(url: String, uri: URI): String {
        val port = uri.port
        if (port == 80 && uri.scheme == "http") {
            return "${uri.scheme}://${uri.host}"
        }
        if (port == 443 && uri.scheme == "https") {
            return "${uri.scheme}://${uri.host}"
        }
        return url
    }

    fun baseUrl(profileHost: String): String =
        normalize(profileHost).trimEnd('/')
}

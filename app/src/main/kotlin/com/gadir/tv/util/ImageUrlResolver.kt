package com.gadir.tv.util

import com.gadir.tv.data.PlaylistRepository

object ImageUrlResolver {
    fun resolve(raw: String?, host: String? = PlaylistRepository.profile?.host): String {
        var url = raw?.trim().orEmpty()
        if (url.isEmpty()) return ""

        if (url.startsWith("//")) {
            url = "http:$url"
        }

        if (url.startsWith("http://") || url.startsWith("https://")) {
            return url
        }

        val base = host?.let { HostUtils.baseUrl(it) }.orEmpty()
        if (base.isEmpty()) return url

        return if (url.startsWith("/")) {
            "$base$url"
        } else {
            "$base/$url"
        }
    }
}

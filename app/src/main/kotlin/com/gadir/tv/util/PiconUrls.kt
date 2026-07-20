package com.gadir.tv.util

import com.gadir.tv.model.LiveChannel

/** External picons server used by this panel (stream_icon URLs point here). */
object PiconUrls {
    private const val PICON_BASE = "http://51.158.145.100"

    fun candidates(channel: LiveChannel): List<String> = buildList {
        val icon = ImageUrlResolver.resolve(channel.icon)
        if (icon.isNotBlank()) add(icon)

        val epg = channel.epgChannelId.trim()
        if (epg.isNotBlank()) {
            val safe = epg.replace("/", "").trim()
            add("$PICON_BASE/picons/$safe.png")
            add("$PICON_BASE/picons/$safe.jpg")
            add("$PICON_BASE/picons/logos/logos/$safe.png")
            add("$PICON_BASE/picons/logos/logos/$safe.jpg")
        }

        slugVariants(channel.name).forEach { slug ->
            add("$PICON_BASE/picons/logos/logos/$slug.png")
            add("$PICON_BASE/picons/logos/logos/$slug.jpg")
            add("$PICON_BASE/picons/$slug.png")
        }
    }.distinct().filter { it.isNotBlank() }

    private fun slugVariants(name: String): List<String> = buildList {
        val base = name.lowercase()
            .replace(Regex("[^a-z0-9]+"), "")
            .take(48)
        if (base.isNotBlank()) add(base)
        val dashed = name.lowercase()
            .trim()
            .replace(Regex("\\s+"), "")
            .replace(Regex("[^a-z0-9]"), "")
        if (dashed.isNotBlank() && dashed != base) add(dashed)
    }
}

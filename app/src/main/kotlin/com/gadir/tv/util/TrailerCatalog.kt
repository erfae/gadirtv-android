package com.gadir.tv.util

/**
 * Optional local trailer overrides. YouTube entries removed — TMDB Vimeo is used instead.
 */
object TrailerCatalog {
    private val byTitle = emptyMap<String, String>()

    fun find(title: String): String? {
        val key = normalize(title)
        if (key.isEmpty()) return null
        byTitle[key]?.let { return it }
        return byTitle.entries.firstOrNull { (catalogKey, _) ->
            key.contains(catalogKey) || catalogKey.contains(key)
        }?.value
    }

    private fun normalize(title: String): String =
        title.lowercase()
            .replace(Regex("\\(.*?\\)"), " ")
            .replace(Regex("\\[.*?\\]"), " ")
            .replace(Regex("[^a-z0-9áéíóúñü\\s]"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()
}

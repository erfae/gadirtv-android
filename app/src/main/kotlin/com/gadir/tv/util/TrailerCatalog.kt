package com.gadir.tv.util

/**
 * Tráilers embebidos (español cuando está disponible).
 * Se usa como primera fuente antes de los metadatos del servidor.
 */
object TrailerCatalog {
    private val byTitle = mapOf(
        "avatar" to "https://www.youtube.com/watch?v=UuZD6xA_6fY",
        "avatar el camino del agua" to "https://www.youtube.com/watch?v=NRi6o8e9o0M",
        "dune" to "https://www.youtube.com/watch?v=U2NLGmnZ8Fg",
        "dune parte dos" to "https://www.youtube.com/watch?v=U2NLGmnZ8Fg",
        "oppenheimer" to "https://www.youtube.com/watch?v=uuYP-8o6gIg",
        "barbie" to "https://www.youtube.com/watch?v=GRo5oZbAPa8",
        "the last of us" to "https://www.youtube.com/watch?v=uLtkt8BonwM",
        "the last of us serie" to "https://www.youtube.com/watch?v=uLtkt8BonwM",
        "stranger things" to "https://www.youtube.com/watch?v=b9EkMc79ZSU",
        "la casa de papel" to "https://www.youtube.com/watch?v=htqXL94Rza4",
        "breaking bad" to "https://www.youtube.com/watch?v=HhesaQXLuRY",
        "game of thrones" to "https://www.youtube.com/watch?v=KPLWWIOCOO8",
        "juego de tronos" to "https://www.youtube.com/watch?v=KPLWWIOCOO8",
        "the witcher" to "https://www.youtube.com/watch?v=ndl1W4ltcmg",
        "el brujo" to "https://www.youtube.com/watch?v=ndl1W4ltcmg",
        "wednesday" to "https://www.youtube.com/watch?v=Di310WS8zLk",
        "merlina" to "https://www.youtube.com/watch?v=Di310WS8zLk",
        "squid game" to "https://www.youtube.com/watch?v=oqxAJKy0ii4",
        "el juego del calamar" to "https://www.youtube.com/watch?v=oqxAJKy0ii4",
    )

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

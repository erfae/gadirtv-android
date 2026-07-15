package com.gadir.tv.model

data class Profile(
    val name: String,
    val host: String,
    val username: String,
    val password: String,
    val mode: String = "xtream",
    val m3uUrl: String = "",
    val avatarSeed: Int = 0,
) {
    val id: String
        get() = if (mode == "m3u") "m3u|$m3uUrl" else "$host|$username"

    val displayName: String
        get() = name.ifEmpty { username }

    val isXtream: Boolean
        get() = mode != "m3u"
}

data class LoginDraft(
    val host: String = "",
    val username: String = "",
    val password: String = "",
    val name: String = "",
)

data class Category(
    val id: String,
    val name: String,
    val order: Int = 0,
)

data class LiveChannel(
    val streamId: Int,
    val name: String,
    val icon: String,
    val categoryId: String,
    val num: Int = 0,
    val extension: String = "ts",
    val directSource: String = "",
    val epgChannelId: String = "",
)

data class VodMovie(
    val streamId: Int,
    val name: String,
    val icon: String,
    val categoryId: String,
    val extension: String,
    val added: Long = 0,
)

data class SeriesItem(
    val seriesId: Int,
    val name: String,
    val cover: String,
    val categoryId: String,
    val added: Long = 0,
)

data class SeriesEpisode(
    val id: Int,
    val title: String,
    val episodeNum: Int,
    val season: String,
    val extension: String,
    val plot: String,
    val image: String,
)

data class SeriesDetail(
    val name: String,
    val cover: String,
    val backdrop: String = "",
    val plot: String,
    val genre: String,
    val releaseDate: String,
    val rating: String,
    val trailerUrl: String = "",
    val cast: String = "",
    val seasons: Map<String, List<SeriesEpisode>>,
)

data class VodInfo(
    val name: String,
    val plot: String,
    val cover: String,
    val backdrop: String,
    val rating: String,
    val genre: String,
    val releaseDate: String,
    val trailerUrl: String = "",
    val cast: String = "",
    val director: String = "",
)

data class EpgEntry(
    val title: String,
    val start: Long = 0,
    val end: Long = 0,
)

data class AccountInfo(
    val username: String = "",
    val status: String = "",
    val expDate: String = "",
    val activeConnections: String = "",
    val maxConnections: String = "",
)

data class LoginResult(
    val ok: Boolean,
    val error: String? = null,
    val diagnostic: String? = null,
)

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
)

data class LiveChannel(
    val streamId: Int,
    val name: String,
    val icon: String,
    val categoryId: String,
)

data class VodMovie(
    val streamId: Int,
    val name: String,
    val icon: String,
    val categoryId: String,
    val extension: String,
)

data class SeriesItem(
    val seriesId: Int,
    val name: String,
    val cover: String,
    val categoryId: String,
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
    val plot: String,
    val genre: String,
    val releaseDate: String,
    val rating: String,
    val seasons: Map<String, List<SeriesEpisode>>,
)

data class LoginResult(
    val ok: Boolean,
    val error: String? = null,
    val diagnostic: String? = null,
)

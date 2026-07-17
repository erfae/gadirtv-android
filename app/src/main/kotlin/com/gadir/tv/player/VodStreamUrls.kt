package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile

object VodStreamUrls {
    private val MOVIE_EXTENSIONS = listOf("mp4", "mkv", "avi", "ts", "m3u8")

    fun movieCandidates(
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
        extension: String,
    ): List<String> {
        val urls = linkedSetOf<String>()
        val primary = extension.ifBlank { "mp4" }.lowercase()
        urls.add(api.movieStreamUrl(profile, streamId, primary))
        MOVIE_EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.movieStreamUrl(profile, streamId, ext))
            }
        }
        urls.add(api.movieStreamUrlWithoutExtension(profile, streamId))
        return urls.filter { it.isNotBlank() }
    }

    fun seriesCandidates(
        api: XtreamApi,
        profile: Profile,
        episodeId: Int,
        extension: String,
    ): List<String> {
        val urls = linkedSetOf<String>()
        val primary = extension.ifBlank { "mp4" }.lowercase()
        urls.add(api.seriesStreamUrl(profile, episodeId, primary))
        MOVIE_EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.seriesStreamUrl(profile, episodeId, ext))
            }
        }
        urls.add(api.seriesStreamUrlWithoutExtension(profile, episodeId))
        return urls.filter { it.isNotBlank() }
    }
}

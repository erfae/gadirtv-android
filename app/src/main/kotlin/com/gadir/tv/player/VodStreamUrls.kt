package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile

object VodStreamUrls {
    /** mkv/ts primero: mejor compatibilidad en FHD/4K y HEVC con VLC. */
    private val MOVIE_EXTENSIONS = listOf("mkv", "ts", "mp4", "avi", "m3u8")

    fun movieCandidates(
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
        extension: String,
    ): List<String> {
        val urls = linkedSetOf<String>()
        val primary = extension.ifBlank { "mkv" }.lowercase()
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
        val primary = extension.ifBlank { "mkv" }.lowercase()
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

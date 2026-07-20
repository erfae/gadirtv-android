package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile
import com.gadir.tv.util.NetworkUrlResolver

object VodStreamUrls {
    private val EXTENSIONS = listOf("mkv", "mp4", "ts", "avi", "m3u8")

    fun movieCandidates(
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
        extension: String,
        directSource: String = "",
    ): List<String> {
        val urls = linkedSetOf<String>()
        val direct = directSource.trim()
        if (direct.startsWith("http")) {
            urls.add(NetworkUrlResolver.resolveUrl(direct))
        }
        val primary = extension.ifBlank { "mp4" }.lowercase()
        urls.add(api.movieStreamUrlWithoutExtension(profile, streamId))
        urls.add(api.movieStreamUrl(profile, streamId, primary))
        urls.add(api.movieStreamPhp(profile, streamId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.movieStreamUrl(profile, streamId, ext))
                urls.add(api.movieStreamPhp(profile, streamId, ext))
            }
        }
        return urls.filter { it.isNotBlank() }.distinct()
    }

    fun seriesCandidates(
        api: XtreamApi,
        profile: Profile,
        episodeId: Int,
        extension: String,
        directSource: String = "",
    ): List<String> {
        val urls = linkedSetOf<String>()
        val direct = directSource.trim()
        if (direct.startsWith("http")) {
            urls.add(NetworkUrlResolver.resolveUrl(direct))
        }
        val primary = extension.ifBlank { "mp4" }.lowercase()
        urls.add(api.seriesStreamUrlWithoutExtension(profile, episodeId))
        urls.add(api.seriesStreamUrl(profile, episodeId, primary))
        urls.add(api.seriesStreamPhp(profile, episodeId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.seriesStreamUrl(profile, episodeId, ext))
                urls.add(api.seriesStreamPhp(profile, episodeId, ext))
            }
        }
        return urls.filter { it.isNotBlank() }.distinct()
    }
}

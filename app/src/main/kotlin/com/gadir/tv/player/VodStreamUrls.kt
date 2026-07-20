package com.gadir.tv.player

import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile
import com.gadir.tv.util.NetworkUrlResolver

object VodStreamUrls {
    /** mkv/ts primero: mejor compatibilidad en FHD/4K y HEVC (v1.34.1 estable). */
    private val EXTENSIONS = listOf("mkv", "ts", "mp4", "avi", "m3u8")

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
        val primary = extension.ifBlank { "mkv" }.lowercase()
        urls.add(api.movieStreamUrl(profile, streamId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.movieStreamUrl(profile, streamId, ext))
            }
        }
        urls.add(api.movieStreamUrlWithoutExtension(profile, streamId))
        return urls.filter { it.isNotBlank() }
            .map { NetworkUrlResolver.resolveUrl(it) }
            .distinct()
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
        val primary = extension.ifBlank { "mkv" }.lowercase()
        urls.add(api.seriesStreamUrl(profile, episodeId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.seriesStreamUrl(profile, episodeId, ext))
            }
        }
        urls.add(api.seriesStreamUrlWithoutExtension(profile, episodeId))
        return urls.filter { it.isNotBlank() }
            .map { NetworkUrlResolver.resolveUrl(it) }
            .distinct()
    }
}

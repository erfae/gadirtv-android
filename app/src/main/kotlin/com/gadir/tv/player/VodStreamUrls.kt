package com.gadir.tv.player

import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
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
        urls.add(api.movieStreamPhp(profile, streamId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.movieStreamUrl(profile, streamId, ext))
                urls.add(api.movieStreamPhp(profile, streamId, ext))
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
        urls.add(api.seriesStreamPhp(profile, episodeId, primary))
        EXTENSIONS.forEach { ext ->
            if (ext != primary) {
                urls.add(api.seriesStreamUrl(profile, episodeId, ext))
                urls.add(api.seriesStreamPhp(profile, episodeId, ext))
            }
        }
        urls.add(api.seriesStreamUrlWithoutExtension(profile, episodeId))
        return urls.filter { it.isNotBlank() }
            .map { NetworkUrlResolver.resolveUrl(it) }
            .distinct()
    }

    fun mediaItem(url: String, extension: String = ""): MediaItem {
        val builder = MediaItem.Builder().setUri(url)
        val ext = extension.lowercase().ifBlank {
            url.substringAfterLast('.', "").substringBefore('?').lowercase()
        }
        when {
            ext == "m3u8" || url.contains(".m3u8", ignoreCase = true) ->
                builder.setMimeType(MimeTypes.APPLICATION_M3U8)
            ext == "ts" || url.contains(".ts", ignoreCase = true) ->
                builder.setMimeType(MimeTypes.VIDEO_MP2T)
            ext == "mkv" ->
                builder.setMimeType(MimeTypes.VIDEO_MATROSKA)
            ext == "mp4" ->
                builder.setMimeType(MimeTypes.VIDEO_MP4)
            ext == "avi" ->
                builder.setMimeType(MimeTypes.VIDEO_AVI)
        }
        return builder.build()
    }
}

package com.gadir.tv.player

import com.gadir.tv.data.MovieDetailCache
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

object VodPlaybackHelper {
    data class ResolvedPlayback(
        val extension: String,
        val urls: List<String>,
    )

    suspend fun resolveMovie(
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
        extension: String = "mp4",
        directSource: String = "",
    ): ResolvedPlayback = withContext(Dispatchers.IO) {
        var ext = extension.ifBlank { "mp4" }
        var direct = directSource.trim()
        MovieDetailCache.get(streamId)?.let { cached ->
            ext = cached.extension.ifBlank { ext }
            if (direct.isBlank()) direct = cached.directSource.trim()
        }
        if (direct.isBlank()) {
            runCatching { api.vodInfo(profile, streamId) }.getOrNull()?.let { info ->
                MovieDetailCache.put(streamId, info)
                ext = info.extension.ifBlank { ext }
                direct = info.directSource.trim()
            }
        }
        ResolvedPlayback(
            extension = ext,
            urls = VodStreamUrls.movieCandidates(api, profile, streamId, ext, direct),
        )
    }
}

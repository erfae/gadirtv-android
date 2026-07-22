package com.gadir.tv.player

import com.gadir.tv.data.MovieDetailCache
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

object VodPlaybackHelper {
    data class ResolvedPlayback(
        val extension: String,
        val urls: List<String>,
    )

    /** Build playback URLs immediately — never blocks on vodInfo network fetch. */
    fun resolveMovie(
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
        extension: String = "mp4",
        directSource: String = "",
    ): ResolvedPlayback {
        var ext = extension.ifBlank { "mp4" }
        var direct = directSource.trim()
        MovieDetailCache.get(streamId)?.let { cached ->
            ext = cached.extension.ifBlank { ext }
            if (direct.isBlank()) direct = cached.directSource.trim()
        }
        return ResolvedPlayback(
            extension = ext,
            urls = VodStreamUrls.movieCandidates(api, profile, streamId, ext, direct),
        )
    }

    /** Warm vodInfo in background for direct_source / extension (does not block play). */
    fun prefetchMeta(
        scope: CoroutineScope,
        api: XtreamApi,
        profile: Profile,
        streamId: Int,
    ) {
        val cached = MovieDetailCache.get(streamId)
        if (cached != null && cached.directSource.isNotBlank()) return
        scope.launch(Dispatchers.IO) {
            if (MovieDetailCache.get(streamId)?.directSource?.isNotBlank() == true) return@launch
            runCatching { api.vodInfo(profile, streamId) }
                .getOrNull()
                ?.let { MovieDetailCache.put(streamId, it) }
        }
    }
}

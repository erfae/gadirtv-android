package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.R
import com.gadir.tv.model.Profile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext

object BootstrapLoader {
    suspend fun load(
        context: Context,
        api: XtreamApi,
        profile: Profile,
        onProgress: ((String) -> Unit)? = null,
    ) = withContext(Dispatchers.IO) {
        coroutineScope {
            PlaylistRepository.setProfile(profile)
            PlaylistRepository.clearContentCache()

            onProgress?.invoke(context.getString(R.string.loading_playlist))

            val login = api.login(profile)
            if (!login.ok) {
                throw IllegalStateException(login.error ?: context.getString(R.string.connection_failed))
            }
            PlaylistRepository.userAgent = api.activeUserAgent

            onProgress?.invoke(context.getString(R.string.bootstrap_live))
            val liveCategories = async { api.liveCategories(profile) }
            val liveStreams = async { api.liveStreams(profile) }
            val vodCategories = async { api.vodCategories(profile) }
            val seriesCategories = async { api.seriesCategories(profile) }

            PlaylistRepository.updateCatalog(liveCategories.await(), liveStreams.await())
            PlaylistRepository.updateVodCategories(vodCategories.await())
            PlaylistRepository.updateSeriesCategories(seriesCategories.await())

            PlaylistRepository.markBootstrapReady()
        }
    }
}

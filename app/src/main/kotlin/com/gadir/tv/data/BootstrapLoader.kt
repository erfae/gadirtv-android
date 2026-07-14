package com.gadir.tv.data

import com.gadir.tv.model.Profile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext

object BootstrapLoader {
    suspend fun load(api: XtreamApi, profile: Profile) = withContext(Dispatchers.IO) {
        coroutineScope {
            PlaylistRepository.setProfile(profile)

            val login = api.login(profile)
            if (!login.ok) {
                throw IllegalStateException(login.error ?: "No se pudo conectar al servidor")
            }
            PlaylistRepository.userAgent = api.activeUserAgent

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

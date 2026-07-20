package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.util.ChannelIconCache
import com.google.gson.Gson
import java.io.File

data class CatalogSnapshot(
    val savedAt: Long = System.currentTimeMillis(),
    val categories: List<Category> = emptyList(),
    val allChannels: List<LiveChannel> = emptyList(),
    val vodCategories: List<Category> = emptyList(),
    val seriesCategories: List<Category> = emptyList(),
    val vodByCategory: Map<String, List<VodMovie>> = emptyMap(),
    val seriesByCategory: Map<String, List<SeriesItem>> = emptyMap(),
    val homeRecentMovies: List<VodMovie> = emptyList(),
    val homeRecentSeries: List<SeriesItem> = emptyList(),
    val channelIconUrls: Map<Int, String> = emptyMap(),
    val userAgent: String = "XCIPTV",
) {
    fun isFresh(maxAgeMs: Long): Boolean =
        savedAt > 0L && System.currentTimeMillis() - savedAt < maxAgeMs
}

class CatalogCacheStore(context: Context) {
    private val gson = Gson()
    private val dir = File(context.applicationContext.filesDir, "catalog_cache").apply { mkdirs() }

    private fun cacheFile(profileId: String): File {
        val safe = profileId.replace(Regex("[^a-zA-Z0-9|._-]"), "_")
        return File(dir, "$safe.json")
    }

    fun load(profileId: String): CatalogSnapshot? {
        val file = cacheFile(profileId)
        if (!file.exists()) return null
        return try {
            gson.fromJson(file.readText(), CatalogSnapshot::class.java)
        } catch (_: Exception) {
            null
        }
    }

    fun save(profileId: String, snapshot: CatalogSnapshot) {
        try {
            cacheFile(profileId).writeText(gson.toJson(snapshot))
        } catch (_: Exception) {
        }
    }

    fun clear(profileId: String) {
        cacheFile(profileId).delete()
    }

    companion object {
        const val MAX_AGE_MS = 24L * 60 * 60 * 1000

        fun snapshotFromRepository(): CatalogSnapshot = CatalogSnapshot(
            savedAt = System.currentTimeMillis(),
            categories = PlaylistRepository.categories,
            allChannels = PlaylistRepository.allChannels,
            vodCategories = PlaylistRepository.vodCategories,
            seriesCategories = PlaylistRepository.seriesCategories,
            vodByCategory = PlaylistRepository.exportVodCache(),
            seriesByCategory = PlaylistRepository.exportSeriesCache(),
            homeRecentMovies = PlaylistRepository.homeRecentMovies,
            homeRecentSeries = PlaylistRepository.homeRecentSeries,
            channelIconUrls = ChannelIconCache.export(),
            userAgent = PlaylistRepository.userAgent,
        )
    }
}

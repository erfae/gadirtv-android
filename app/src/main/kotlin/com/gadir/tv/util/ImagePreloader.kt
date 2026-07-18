package com.gadir.tv.util

import android.content.Context
import com.bumptech.glide.Glide
import com.bumptech.glide.load.engine.DiskCacheStrategy
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext

object ImagePreloader {
    private const val DEFAULT_PARALLEL = 8

    suspend fun preloadUrls(
        context: Context,
        urls: Collection<String>,
        width: Int,
        height: Int,
        maxParallel: Int = DEFAULT_PARALLEL,
    ) = withContext(Dispatchers.IO) {
        val appContext = context.applicationContext
        val unique = urls
            .mapNotNull { ImageUrlResolver.resolve(it).takeIf { url -> url.isNotBlank() } }
            .distinct()
        if (unique.isEmpty()) return@withContext
        val semaphore = Semaphore(maxParallel.coerceAtLeast(1))
        unique.forEach { url ->
            semaphore.withPermit {
                runCatching {
                    Glide.with(appContext)
                        .downloadOnly()
                        .diskCacheStrategy(DiskCacheStrategy.ALL)
                        .load(ImageLoader.glideModel(url))
                        .submit(width.coerceAtLeast(1), height.coerceAtLeast(1))
                        .get()
                }
            }
        }
    }
}

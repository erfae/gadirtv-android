package com.gadir.tv.util

import android.graphics.drawable.Drawable
import android.net.Uri
import android.widget.ImageView
import com.bumptech.glide.Glide
import com.bumptech.glide.load.DataSource
import com.bumptech.glide.load.engine.DiskCacheStrategy
import com.bumptech.glide.load.engine.GlideException
import com.bumptech.glide.load.model.GlideUrl
import com.bumptech.glide.load.model.LazyHeaders
import com.bumptech.glide.request.RequestListener
import com.bumptech.glide.request.RequestOptions
import com.bumptech.glide.request.target.Target
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository

object ImageLoader {
    private val channelOptions = RequestOptions()
        .diskCacheStrategy(DiskCacheStrategy.ALL)
        .override(128, 128)
        .centerInside()
        .placeholder(R.drawable.tv_banner)
        .error(R.drawable.tv_banner)

    private val posterOptions = RequestOptions()
        .diskCacheStrategy(DiskCacheStrategy.ALL)
        .placeholder(R.drawable.tv_banner)
        .error(R.drawable.tv_banner)

    fun loadChannelIcon(target: ImageView, url: String, fallbacks: List<String> = emptyList()) {
        val candidates = buildList {
            val primary = ImageUrlResolver.resolve(url)
            if (primary.isNotEmpty()) add(primary)
            fallbacks.forEach { candidate ->
                val resolved = ImageUrlResolver.resolve(candidate)
                if (resolved.isNotEmpty() && resolved !in this) add(resolved)
            }
        }
        if (candidates.isEmpty()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        loadWithFallback(target, candidates, 0, channelOptions)
    }

    fun loadPoster(target: ImageView, url: String, width: Int = 0, height: Int = 0) {
        loadPoster(target, url, width, height, posterOptions)
    }

    fun loadHeroBackdrop(target: ImageView, url: String) {
        val resolved = ImageUrlResolver.resolve(url)
        if (resolved.isEmpty()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        Glide.with(target)
            .load(glideUrl(resolved))
            .apply(posterOptions)
            .centerCrop()
            .into(target)
    }

    private fun loadPoster(
        target: ImageView,
        url: String,
        width: Int,
        height: Int,
        options: RequestOptions,
    ) {
        val resolved = ImageUrlResolver.resolve(url)
        if (resolved.isEmpty()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        var request = Glide.with(target).load(glideUrl(resolved)).apply(options)
        if (width > 0 && height > 0) {
            request = request.override(width, height)
        }
        request.into(target)
    }

    private fun loadWithFallback(
        target: ImageView,
        urls: List<String>,
        index: Int,
        options: RequestOptions,
    ) {
        if (index >= urls.size) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        Glide.with(target)
            .load(glideUrl(urls[index]))
            .apply(options)
            .listener(object : RequestListener<Drawable> {
                override fun onLoadFailed(
                    e: GlideException?,
                    model: Any?,
                    targetView: Target<Drawable>,
                    isFirstResource: Boolean,
                ): Boolean {
                    loadWithFallback(target, urls, index + 1, options)
                    return true
                }

                override fun onResourceReady(
                    resource: Drawable,
                    model: Any,
                    targetView: Target<Drawable>?,
                    dataSource: DataSource,
                    isFirstResource: Boolean,
                ): Boolean = false
            })
            .into(target)
    }

    private fun glideUrl(url: String): Any {
        if (!url.startsWith("http")) return url
        val headers = LazyHeaders.Builder()
            .addHeader("User-Agent", PlaylistRepository.userAgent)
            .addHeader("Accept", "image/*,*/*")
        val panelHost = PlaylistRepository.profile?.host?.let { panelHostFrom(it) }
        val urlHost = runCatching { Uri.parse(url).host?.lowercase() }.getOrNull()
        if (panelHost != null && urlHost != null && urlHost == panelHost) {
            headers.addHeader(
                "Referer",
                HostUtils.baseUrl(PlaylistRepository.profile!!.host) + "/",
            )
        }
        return GlideUrl(url, headers.build())
    }

    private fun panelHostFrom(host: String): String? =
        runCatching { Uri.parse(HostUtils.baseUrl(host)).host?.lowercase() }.getOrNull()
}

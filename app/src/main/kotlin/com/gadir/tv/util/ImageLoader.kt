package com.gadir.tv.util

import android.app.Activity
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
    private fun canLoadInto(target: ImageView): Boolean {
        val ctx = target.context
        if (ctx is Activity && (ctx.isFinishing || ctx.isDestroyed)) return false
        return true
    }

    private val channelOptions = RequestOptions()
        .diskCacheStrategy(DiskCacheStrategy.ALL)
        .override(96, 96)
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

    private val heroBackdropOptions = RequestOptions()
        .diskCacheStrategy(DiskCacheStrategy.ALL)
        .placeholder(R.drawable.hero_placeholder_bg)
        .error(R.drawable.hero_placeholder_bg)

    fun loadHeroBackdrop(
        target: ImageView,
        url: String,
        fallbacks: List<String> = emptyList(),
        width: Int = 0,
        height: Int = 0,
    ) {
        val candidates = buildList {
            val primary = ImageUrlResolver.resolve(url)
            if (primary.isNotEmpty()) add(primary)
            fallbacks.forEach { candidate ->
                val resolved = ImageUrlResolver.resolve(candidate)
                if (resolved.isNotEmpty() && resolved !in this) add(resolved)
            }
        }
        if (candidates.isEmpty()) {
            target.setImageResource(R.drawable.hero_placeholder_bg)
            return
        }
        var options = heroBackdropOptions.centerCrop()
        if (width > 0 && height > 0) {
            options = options.override(width, height)
        }
        loadWithFallback(
            target = target,
            urls = candidates,
            index = 0,
            options = options,
            errorDrawable = R.drawable.hero_placeholder_bg,
        )
    }

    private fun loadPoster(
        target: ImageView,
        url: String,
        width: Int,
        height: Int,
        options: RequestOptions,
    ) {
        if (!canLoadInto(target)) return
        val resolved = ImageUrlResolver.resolve(url)
        if (resolved.isEmpty()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        try {
            var request = Glide.with(target).load(glideUrl(resolved)).apply(options)
            if (width > 0 && height > 0) {
                request = request.override(width, height)
            }
            request.into(target)
        } catch (_: Throwable) {
            target.setImageResource(R.drawable.tv_banner)
        }
    }

    private fun loadWithFallback(
        target: ImageView,
        urls: List<String>,
        index: Int,
        options: RequestOptions,
        errorDrawable: Int = R.drawable.tv_banner,
    ) {
        if (!canLoadInto(target)) return
        if (index >= urls.size) {
            target.setImageResource(errorDrawable)
            return
        }
        try {
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
                        loadWithFallback(target, urls, index + 1, options, errorDrawable)
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
        } catch (_: Throwable) {
            target.setImageResource(errorDrawable)
        }
    }

    private fun glideUrl(url: String): Any {
        if (!url.startsWith("http")) return url
        val headers = LazyHeaders.Builder()
            .addHeader("User-Agent", PlaylistRepository.userAgent)
            .addHeader("Accept", "image/*,*/*")
        PlaylistRepository.profile?.host?.let { host ->
            headers.addHeader("Referer", HostUtils.baseUrl(host) + "/")
        }
        return GlideUrl(url, headers.build())
    }
}

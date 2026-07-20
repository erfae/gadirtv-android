package com.gadir.tv.util

import android.app.Activity
import android.graphics.drawable.Drawable
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
import com.gadir.tv.net.PanelHttp
import java.net.URI

object ImageLoader {
    private fun canLoadInto(target: ImageView): Boolean {
        val ctx = target.context
        if (ctx is Activity && (ctx.isFinishing || ctx.isDestroyed)) return false
        return true
    }

    private fun channelOptions(sizePx: Int = 128): RequestOptions =
        RequestOptions()
            .diskCacheStrategy(DiskCacheStrategy.ALL)
            .override(sizePx, sizePx)
            .centerInside()
            .placeholder(R.drawable.channel_icon_placeholder)
            .error(R.drawable.channel_icon_placeholder)

    private val posterOptions = RequestOptions()
        .diskCacheStrategy(DiskCacheStrategy.ALL)
        .placeholder(R.drawable.tv_banner)
        .error(R.drawable.tv_banner)

    fun clear(target: ImageView) {
        try {
            if (canLoadInto(target)) {
                Glide.with(target).clear(target)
            }
        } catch (_: Throwable) {
        }
        target.setTag(R.id.image_load_tag, null)
    }

    fun loadChannelIcon(
        target: ImageView,
        url: String,
        fallbacks: List<String> = emptyList(),
        sizePx: Int = 0,
        loadTag: Any? = null,
        maxFallbacks: Int = 20,
        channelName: String = "",
    ) {
        val size = sizePx.coerceAtLeast(96)
        val streamId = (loadTag as? Int) ?: 0
        val candidates = buildList {
            if (streamId > 0) {
                ChannelIconCache.get(streamId)?.let { cached ->
                    if (cached.isNotEmpty()) add(cached)
                }
            }
            val primary = ImageUrlResolver.resolve(url)
            if (primary.isNotEmpty()) add(primary)
            fallbacks.forEach { candidate ->
                val resolved = ImageUrlResolver.resolve(candidate)
                if (resolved.isNotEmpty() && resolved !in this) add(resolved)
            }
        }.distinct().take(maxFallbacks.coerceAtLeast(1))
        if (loadTag != null) {
            target.setTag(R.id.image_load_tag, loadTag)
        }
        if (candidates.isEmpty()) {
            ChannelIconFallback.load(target, channelName.ifBlank { "TV" }, size)
            return
        }
        loadWithFallback(
            target = target,
            urls = candidates,
            index = 0,
            options = channelOptions(size),
            loadTag = loadTag,
            sizePx = size,
            channelName = channelName,
            streamId = streamId,
        )
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
            var request = Glide.with(target).load(glideModel(resolved)).apply(options)
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
        loadTag: Any? = null,
        errorDrawable: Int = R.drawable.channel_icon_placeholder,
        sizePx: Int = 96,
        channelName: String = "",
        streamId: Int = 0,
    ) {
        if (!canLoadInto(target)) return
        if (loadTag != null && target.getTag(R.id.image_load_tag) != loadTag) return
        if (index >= urls.size) {
            if (loadTag == null || target.getTag(R.id.image_load_tag) == loadTag) {
                ChannelIconFallback.load(target, channelName.ifBlank { "TV" }, sizePx)
            }
            return
        }
        try {
            Glide.with(target)
                .load(glideModel(urls[index]))
                .apply(options)
                .listener(object : RequestListener<Drawable> {
                    override fun onLoadFailed(
                        e: GlideException?,
                        model: Any?,
                        targetView: Target<Drawable>,
                        isFirstResource: Boolean,
                    ): Boolean {
                        loadWithFallback(
                            target, urls, index + 1, options, loadTag, errorDrawable,
                            sizePx, channelName, streamId,
                        )
                        return true
                    }

                    override fun onResourceReady(
                        resource: Drawable,
                        model: Any,
                        targetView: Target<Drawable>?,
                        dataSource: DataSource,
                        isFirstResource: Boolean,
                    ): Boolean {
                        if (loadTag != null && target.getTag(R.id.image_load_tag) != loadTag) {
                            return true
                        }
                        if (streamId > 0) {
                            ChannelIconCache.put(streamId, urls[index])
                        }
                        return false
                    }
                })
                .into(target)
        } catch (_: Throwable) {
            if (loadTag == null || target.getTag(R.id.image_load_tag) == loadTag) {
                ChannelIconFallback.load(target, channelName.ifBlank { "TV" }, sizePx)
            }
        }
    }

    fun glideModel(url: String): Any {
        val resolved = ImageUrlResolver.resolve(url)
        if (!resolved.startsWith("http", ignoreCase = true)) return resolved

        // PLUME: icon URLs load as-is (no Referer/Host). Works for picons + CDN hosts.
        if (!isPanelImageHost(resolved)) return resolved

        val panel = NetworkUrlResolver.resolve(resolved)
        if (panel.hostHeader == null) return resolved

        val headers = LazyHeaders.Builder()
            .addHeader("User-Agent", PlaylistRepository.userAgent)
            .addHeader("Accept", "image/*,*/*")
            .addHeader("Host", panel.hostHeader)
        PlaylistRepository.profile?.host?.let { host ->
            val referer = com.gadir.tv.util.HostUtils.baseUrl(host).trimEnd('/') + "/"
            headers.addHeader("Referer", referer)
        }
        return GlideUrl(panel.url, headers.build())
    }

    private fun isPanelImageHost(url: String): Boolean {
        val host = runCatching { URI(url).host?.lowercase() }.getOrNull() ?: return false
        if (host == PanelHttp.GADIR_HOST.lowercase() || host == PanelHttp.GADIR_IP) return true
        val profileHost = PlaylistRepository.profile?.host?.let { raw ->
            runCatching { URI(HostUtils.baseUrl(raw)).host?.lowercase() }.getOrNull()
        }
        return host == profileHost
    }
}

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
        loadVodPoster(target, url, contentId = 0, width = width, height = height)
    }

    fun vodPosterCandidates(primary: String, contentId: Int): List<String> {
        return buildList {
            val resolved = ImageUrlResolver.resolve(primary)
            if (resolved.isNotBlank()) add(resolved)
            if (contentId <= 0) return@buildList
            val profile = PlaylistRepository.profile ?: return@buildList
            val base = HostUtils.baseUrl(
                PanelHttp.migrateProfileHost(profile.host),
            ).trimEnd('/')
            add(NetworkUrlResolver.resolveUrl("$base/images/$contentId.jpg"))
            add(NetworkUrlResolver.resolveUrl("$base/images/$contentId.png"))
        }.distinct().filter { it.isNotBlank() }
    }

    fun loadVodPoster(
        target: ImageView,
        url: String,
        contentId: Int,
        width: Int = 0,
        height: Int = 0,
    ) {
        if (!canLoadInto(target)) return
        val candidates = vodPosterCandidates(url, contentId)
        if (candidates.isEmpty()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        var options = posterOptions
        if (width > 0 && height > 0) {
            options = options.override(width, height)
        }
        loadWithFallback(
            target = target,
            urls = candidates,
            index = 0,
            options = options,
            errorDrawable = R.drawable.tv_banner,
        )
    }

    fun loadCastAvatar(target: ImageView, rawUrl: String, sizePx: Int = 144) {
        if (!canLoadInto(target)) return
        val candidates = castAvatarCandidates(rawUrl)
        if (candidates.isEmpty()) {
            target.setImageResource(R.drawable.ic_user)
            return
        }
        val size = sizePx.coerceAtLeast(72)
        val options = RequestOptions()
            .diskCacheStrategy(DiskCacheStrategy.ALL)
            .override(size, size)
            .circleCrop()
            .placeholder(R.drawable.ic_user)
            .error(R.drawable.ic_user)
        loadWithFallback(
            target = target,
            urls = candidates,
            index = 0,
            options = options,
            errorDrawable = R.drawable.ic_user,
            sizePx = size,
        )
    }

    private fun castAvatarCandidates(rawUrl: String): List<String> {
        val trimmed = rawUrl.trim()
        if (trimmed.isEmpty()) return emptyList()
        return buildList {
            ImageUrlResolver.resolve(trimmed).takeIf { it.isNotBlank() }?.let { add(it) }
            if (trimmed.startsWith("http", ignoreCase = true)) return@buildList
            val path = trimmed.removePrefix("/")
            if (path.startsWith("t/p/", ignoreCase = true)) {
                add("https://image.tmdb.org/$path")
            }
            if (path.matches(Regex("^w\\d+/.+", RegexOption.IGNORE_CASE))) {
                add("https://image.tmdb.org/t/p/$path")
            }
            if (path.contains('.')) {
                add("https://image.tmdb.org/t/p/w185/$path")
                add("https://image.tmdb.org/t/p/w342/$path")
                PlaylistRepository.profile?.host?.let { host ->
                    val base = HostUtils.baseUrl(PanelHttp.migrateProfileHost(host)).trimEnd('/')
                    add(NetworkUrlResolver.resolveUrl("$base/$path"))
                    add(NetworkUrlResolver.resolveUrl("$base/images/$path"))
                }
            }
        }.distinct().filter { it.isNotBlank() }
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
                if (channelName.isNotBlank() || streamId > 0) {
                    ChannelIconFallback.load(target, channelName.ifBlank { "TV" }, sizePx)
                } else {
                    target.setImageResource(errorDrawable)
                }
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
                if (channelName.isNotBlank() || streamId > 0) {
                    ChannelIconFallback.load(target, channelName.ifBlank { "TV" }, sizePx)
                } else {
                    target.setImageResource(errorDrawable)
                }
            }
        }
    }

    fun glideModel(url: String): Any {
        val trimmed = url.trim()
        if (!trimmed.startsWith("http", ignoreCase = true)) return trimmed

        val panelUrl = isPanelMediaUrl(trimmed)
        val resolved = if (panelUrl) {
            NetworkUrlResolver.resolve(trimmed)
        } else {
            NetworkUrlResolver.Resolved(trimmed)
        }
        val headers = LazyHeaders.Builder()
            .addHeader("User-Agent", PlaylistRepository.userAgent)
            .addHeader("Accept", "image/*,*/*")
        resolved.hostHeader?.let { headers.addHeader("Host", it) }
        if (panelUrl) {
            PlaylistRepository.profile?.host?.let { host ->
                headers.addHeader("Referer", HostUtils.baseUrl(host).trimEnd('/') + "/")
            }
        }
        return GlideUrl(resolved.url, headers.build())
    }

    private fun isPanelMediaUrl(url: String): Boolean {
        val lower = url.lowercase()
        if (lower.contains("image.tmdb.org") || lower.contains("themoviedb.org")) return false
        if (lower.contains(PanelHttp.GADIR_IP) || lower.contains(PanelHttp.GADIR_HOST)) return true
        val profileHost = PlaylistRepository.profile?.host?.let { raw ->
            runCatching { URI(HostUtils.baseUrl(raw)).host?.lowercase() }.getOrNull()
        }
        val urlHost = runCatching { URI(url).host?.lowercase() }.getOrNull()
        if (profileHost != null && urlHost == profileHost) return true
        return lower.contains("/images/") ||
            lower.contains("/imgs/") ||
            lower.contains("/logo/") ||
            lower.contains("/logos/") ||
            lower.contains("/streaming/") ||
            lower.contains("/movie/") ||
            lower.contains("/series/")
    }
}

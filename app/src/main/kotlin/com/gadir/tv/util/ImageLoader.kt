package com.gadir.tv.util

import android.widget.ImageView
import com.bumptech.glide.Glide
import com.bumptech.glide.load.engine.DiskCacheStrategy
import com.bumptech.glide.load.model.GlideUrl
import com.bumptech.glide.load.model.LazyHeaders
import com.bumptech.glide.request.RequestOptions
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

    fun loadChannelIcon(target: ImageView, url: String) {
        if (url.isBlank()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        Glide.with(target)
            .load(glideUrl(url))
            .apply(channelOptions)
            .into(target)
    }

    fun loadPoster(target: ImageView, url: String, width: Int = 0, height: Int = 0) {
        if (url.isBlank()) {
            target.setImageResource(R.drawable.tv_banner)
            return
        }
        var request = Glide.with(target).load(glideUrl(url)).apply(posterOptions)
        if (width > 0 && height > 0) {
            request = request.override(width, height)
        }
        request.into(target)
    }

    private fun glideUrl(url: String): Any {
        if (!url.startsWith("http")) return url
        return GlideUrl(
            url,
            LazyHeaders.Builder()
                .addHeader("User-Agent", PlaylistRepository.userAgent)
                .addHeader("Accept", "image/*,*/*")
                .build(),
        )
    }
}

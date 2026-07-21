package com.gadir.tv.util

import android.content.Context
import com.bumptech.glide.Glide
import com.bumptech.glide.Registry
import com.bumptech.glide.annotation.GlideModule
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader
import com.bumptech.glide.load.model.GlideUrl
import com.bumptech.glide.module.AppGlideModule
import com.gadir.tv.net.PanelHttp
import java.io.InputStream

/** Glide loads panel images via IP rewrite + Host header (see [ImageLoader.glideModel]). */
@GlideModule
class GadirGlideModule : AppGlideModule() {
    override fun registerComponents(context: Context, glide: Glide, registry: Registry) {
        registry.replace(
            GlideUrl::class.java,
            InputStream::class.java,
            OkHttpUrlLoader.Factory(PanelHttp.imageOkHttpClient),
        )
    }

    override fun isManifestParsingEnabled(): Boolean = false
}

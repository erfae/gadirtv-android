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

/** Glide uses the same OkHttp client as API/streams (IPv4 + IP fallback DNS). */
@GlideModule
class GadirGlideModule : AppGlideModule() {
    override fun registerComponents(context: Context, glide: Glide, registry: Registry) {
        registry.replace(
            GlideUrl::class.java,
            InputStream::class.java,
            OkHttpUrlLoader.Factory(PanelHttp.okHttpClient),
        )
    }

    override fun isManifestParsingEnabled(): Boolean = false
}

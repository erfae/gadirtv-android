package com.gadir.tv.util

import android.content.Context
import com.bumptech.glide.Glide
import com.bumptech.glide.Registry
import com.bumptech.glide.annotation.GlideModule
import com.bumptech.glide.module.AppGlideModule

/**
 * Glide uses the default HTTP stack. Panel IP/Host rewrites are applied via [ImageLoader.glideModel].
 * NetTV never routed Glide through PanelHttp OkHttp — that broke external picons (51.158.x).
 */
@GlideModule
class GadirGlideModule : AppGlideModule() {
    override fun registerComponents(context: Context, glide: Glide, registry: Registry) {
        // Default Glide networking — headers set on GlideUrl in ImageLoader.
    }

    override fun isManifestParsingEnabled(): Boolean = false
}

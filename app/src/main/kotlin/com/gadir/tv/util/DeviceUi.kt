package com.gadir.tv.util

import android.content.Context
import android.content.pm.PackageManager
import android.content.res.Configuration

object DeviceUi {
    fun isCompact(context: Context): Boolean =
        !isTelevision(context) &&
            context.resources.configuration.smallestScreenWidthDp < 600

    fun isLandscape(context: Context): Boolean =
        context.resources.configuration.orientation == Configuration.ORIENTATION_LANDSCAPE

    fun isTelevision(context: Context): Boolean {
        val uiModeTv =
            (context.resources.configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
                Configuration.UI_MODE_TYPE_TELEVISION
        if (uiModeTv) return true
        val pm = context.packageManager
        return pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK) ||
            pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK_ONLY)
    }
}

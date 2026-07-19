package com.gadir.tv.util

import android.content.Context
import android.content.pm.PackageManager
import android.content.res.Configuration

object DeviceUi {
    fun isCompact(context: Context): Boolean =
        context.resources.configuration.smallestScreenWidthDp < 600

    fun isTelevision(context: Context): Boolean =
        (context.resources.configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
            Configuration.UI_MODE_TYPE_TELEVISION

    /** True on Android TV / Google TV (e.g. Sony Bravia) even when smallestScreenWidthDp < 600. */
    fun isTvUi(context: Context): Boolean =
        isTelevision(context) ||
            context.packageManager.hasSystemFeature(PackageManager.FEATURE_LEANBACK) ||
            !isCompact(context)

    /**
     * D-pad / TV: onFocus handlers are safe. Touch devices must use onClick only.
     * Xiaomi and other STBs may omit UI_MODE_TYPE_TV but still ship without a touchscreen.
     */
    fun useDpadFocus(context: Context): Boolean {
        val pm = context.packageManager
        if (isTvUi(context) || pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK)) return true
        if (!pm.hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN)) return true
        return isTelevision(context)
    }

    fun isLandscape(context: Context): Boolean =
        context.resources.configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
}

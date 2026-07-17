package com.gadir.tv.util

import android.content.Context
import android.content.res.Configuration

object DeviceUi {
    fun isCompact(context: Context): Boolean =
        context.resources.configuration.smallestScreenWidthDp < 600

    /** D-pad / TV: onFocus handlers are safe. Touch devices must use onClick only. */
    fun useDpadFocus(context: Context): Boolean = !isCompact(context)

    fun isLandscape(context: Context): Boolean =
        context.resources.configuration.orientation == Configuration.ORIENTATION_LANDSCAPE

    fun isTelevision(context: Context): Boolean =
        (context.resources.configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
            Configuration.UI_MODE_TYPE_TELEVISION
}

package com.gadir.tv.util

import android.content.Context

object DeviceUi {
    fun isCompact(context: Context): Boolean =
        context.resources.configuration.smallestScreenWidthDp < 600
}

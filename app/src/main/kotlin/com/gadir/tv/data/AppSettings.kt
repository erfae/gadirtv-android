package com.gadir.tv.data

import android.content.Context

class AppSettings(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var autoplayPreview: Boolean
        get() = prefs.getBoolean(KEY_AUTOPLAY, true)
        set(value) = prefs.edit().putBoolean(KEY_AUTOPLAY, value).apply()

    companion object {
        private const val PREFS = "gadirtv_settings"
        private const val KEY_AUTOPLAY = "autoplay_preview"
    }
}

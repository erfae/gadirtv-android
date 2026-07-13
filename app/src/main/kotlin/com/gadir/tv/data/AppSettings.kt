package com.gadir.tv.data

import android.content.Context

class AppSettings(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var autoplayPreview: Boolean
        get() = prefs.getBoolean(KEY_AUTOPLAY, true)
        set(value) = prefs.edit().putBoolean(KEY_AUTOPLAY, value).apply()

    var playerMode: String
        get() = prefs.getString(KEY_PLAYER_MODE, PLAYER_STANDARD) ?: PLAYER_STANDARD
        set(value) = prefs.edit().putString(KEY_PLAYER_MODE, value).apply()

    val isCompatPlayer: Boolean
        get() = playerMode == PLAYER_COMPAT

    fun togglePlayerMode() {
        playerMode = if (isCompatPlayer) PLAYER_STANDARD else PLAYER_COMPAT
    }

    companion object {
        const val PLAYER_STANDARD = "standard"
        const val PLAYER_COMPAT = "compat"
        private const val PREFS = "gadirtv_settings"
        private const val KEY_AUTOPLAY = "autoplay_preview"
        private const val KEY_PLAYER_MODE = "player_mode"
    }
}

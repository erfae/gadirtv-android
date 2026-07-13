package com.gadir.tv.data

import android.content.Context

class AppSettings(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var autoplayPreview: Boolean
        get() = prefs.getBoolean(KEY_AUTOPLAY, true)
        set(value) = prefs.edit().putBoolean(KEY_AUTOPLAY, value).apply()

    var playerMode: String
        get() = prefs.getString(KEY_PLAYER_MODE, PLAYER_INTERNAL) ?: PLAYER_INTERNAL
        set(value) = prefs.edit().putString(KEY_PLAYER_MODE, value).apply()

    var externalPlayerPackage: String
        get() = prefs.getString(KEY_EXTERNAL_PLAYER, "").orEmpty()
        set(value) = prefs.edit().putString(KEY_EXTERNAL_PLAYER, value).apply()

    val isExternalPlayer: Boolean
        get() = playerMode == PLAYER_EXTERNAL

    companion object {
        const val PLAYER_INTERNAL = "internal"
        const val PLAYER_EXTERNAL = "external"
        private const val PREFS = "gadirtv_settings"
        private const val KEY_AUTOPLAY = "autoplay_preview"
        private const val KEY_PLAYER_MODE = "player_mode"
        private const val KEY_EXTERNAL_PLAYER = "external_player_package"
    }
}

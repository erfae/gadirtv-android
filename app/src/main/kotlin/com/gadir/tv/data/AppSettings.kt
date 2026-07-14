package com.gadir.tv.data

import android.content.Context

class AppSettings(context: Context) {
    private val prefs = (context.applicationContext ?: context)
        .getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var autoplayPreview: Boolean
        get() = prefs.getBoolean(KEY_AUTOPLAY, true)
        set(value) = prefs.edit().putBoolean(KEY_AUTOPLAY, value).apply()

    var playerMode: String
        get() = prefs.getString(KEY_PLAYER_MODE, PLAYER_STANDARD) ?: PLAYER_STANDARD
        set(value) = prefs.edit().putString(KEY_PLAYER_MODE, value).apply()

    var externalPlayerPackage: String
        get() = prefs.getString(KEY_EXTERNAL_PLAYER, "").orEmpty()
        set(value) = prefs.edit().putString(KEY_EXTERNAL_PLAYER, value).apply()

    var language: String
        get() = prefs.getString(KEY_LANGUAGE, LANG_ES) ?: LANG_ES
        set(value) = prefs.edit().putString(KEY_LANGUAGE, value).apply()

    val isExternalPlayer: Boolean
        get() = playerMode == PLAYER_EXTERNAL

    val isCompatPlayer: Boolean
        get() = playerMode == PLAYER_COMPAT

    companion object {
        const val PLAYER_STANDARD = "standard"
        const val PLAYER_COMPAT = "compat"
        const val PLAYER_EXTERNAL = "external"

        const val LANG_ES = "es"
        const val LANG_EN = "en"
        const val LANG_FR = "fr"
        const val LANG_DE = "de"
        const val LANG_ZH = "zh"

        private const val PREFS = "gadirtv_settings"
        private const val KEY_AUTOPLAY = "autoplay_preview"
        private const val KEY_PLAYER_MODE = "player_mode"
        private const val KEY_EXTERNAL_PLAYER = "external_player_package"
        private const val KEY_LANGUAGE = "app_language"
    }
}

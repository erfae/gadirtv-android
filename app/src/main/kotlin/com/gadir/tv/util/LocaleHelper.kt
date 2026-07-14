package com.gadir.tv.util

import android.content.Context
import android.content.res.Configuration
import android.os.Build
import android.os.LocaleList
import com.gadir.tv.data.AppSettings
import java.util.Locale

object LocaleHelper {
    fun wrap(context: Context): Context {
        val language = runCatching { AppSettings(context).language }.getOrDefault(AppSettings.LANG_ES)
        return updateResources(context, language)
    }

    fun setLanguage(context: Context, language: String) {
        AppSettings(context).language = language
        updateResources(context, language)
    }

    private fun updateResources(context: Context, language: String): Context {
        val locale = localeFor(language)
        Locale.setDefault(locale)
        val config = Configuration(context.resources.configuration)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            config.setLocales(LocaleList(locale))
        } else {
            @Suppress("DEPRECATION")
            config.locale = locale
        }
        return context.createConfigurationContext(config)
    }

    private fun localeFor(language: String): Locale = when (language) {
        AppSettings.LANG_EN -> Locale.ENGLISH
        AppSettings.LANG_FR -> Locale.FRENCH
        AppSettings.LANG_DE -> Locale.GERMAN
        AppSettings.LANG_ZH -> Locale.SIMPLIFIED_CHINESE
        else -> Locale.forLanguageTag("es")
    }
}

package com.gadir.tv.util

import android.content.Context
import android.content.res.Configuration
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
        val locale = when (language) {
            AppSettings.LANG_EN -> Locale.ENGLISH
            AppSettings.LANG_FR -> Locale.FRENCH
            AppSettings.LANG_DE -> Locale.GERMAN
            AppSettings.LANG_ZH -> Locale.SIMPLIFIED_CHINESE
            else -> Locale("es")
        }
        Locale.setDefault(locale)
        val config = Configuration(context.resources.configuration)
        config.setLocale(locale)
        return context.createConfigurationContext(config)
    }
}

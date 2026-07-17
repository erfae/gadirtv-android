package com.gadir.tv.util

import android.content.Context
import android.text.format.DateFormat
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

object HeaderClockHelper {
    fun formatTime(context: Context, now: Date = Date()): String {
        val locale = Locale.getDefault()
        val pattern = when (locale.language.lowercase(Locale.ROOT)) {
            "es" -> "HH:mm"
            else -> DateFormat.getBestDateTimePattern(locale, "HH:mm")
        }
        return SimpleDateFormat(pattern, locale).apply {
            timeZone = TimeZone.getDefault()
        }.format(now)
    }

    fun formatDate(context: Context, now: Date = Date()): String {
        val locale = Locale.getDefault()
        val pattern = when (locale.language.lowercase(Locale.ROOT)) {
            "es" -> "EEEE, d 'de' MMMM 'de' yyyy"
            else -> DateFormat.getBestDateTimePattern(locale, "EEEE, d MMMM yyyy")
        }
        val formatted = SimpleDateFormat(pattern, locale).apply {
            timeZone = TimeZone.getDefault()
        }.format(now)
        return if (locale.language.equals("es", ignoreCase = true)) {
            capitalizeSpanishDate(formatted)
        } else {
            formatted
        }
    }

    private fun capitalizeSpanishDate(text: String): String {
        val parts = text.split(" de ")
        if (parts.isEmpty()) return text
        val weekday = parts[0].trim().replaceFirstChar { ch ->
            if (ch.isLowerCase()) ch.titlecase(locale = Locale.getDefault()) else ch.toString()
        }
        if (parts.size == 1) return weekday
        val day = parts[1].trim()
        if (parts.size == 2) return "$weekday, $day"
        val month = parts[2].trim().replaceFirstChar { ch ->
            if (ch.isLowerCase()) ch.titlecase(locale = Locale.getDefault()) else ch.toString()
        }
        val year = parts.getOrNull(3)?.trim().orEmpty()
        return if (year.isNotEmpty()) {
            "$weekday, $day de $month de $year"
        } else {
            "$weekday, $day de $month"
        }
    }
}

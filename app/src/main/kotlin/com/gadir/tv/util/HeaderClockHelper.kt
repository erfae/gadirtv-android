package com.gadir.tv.util

import android.content.Context
import android.text.format.DateFormat
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

object HeaderClockHelper {
    fun formatTime(context: Context, now: Date = Date()): String =
        DateFormat.getTimeFormat(context).format(now)

    fun formatDate(context: Context, now: Date = Date()): String {
        val locale = Locale.getDefault()
        val pattern = when (locale.language.lowercase(Locale.ROOT)) {
            "es" -> "d 'de' MMMM yyyy"
            else -> DateFormat.getBestDateTimePattern(locale, "d MMMM yyyy")
        }
        val formatted = SimpleDateFormat(pattern, locale).apply {
            timeZone = TimeZone.getDefault()
        }.format(now)
        return if (locale.language.equals("es", ignoreCase = true)) {
            capitalizeSpanishMonth(formatted)
        } else {
            formatted
        }
    }

    private fun capitalizeSpanishMonth(text: String): String {
        val parts = text.split(" de ")
        if (parts.size < 2) return text
        val month = parts[1].trim()
        if (month.isEmpty()) return text
        val capitalizedMonth = month.replaceFirstChar { ch ->
            if (ch.isLowerCase()) ch.titlecase(locale = Locale.getDefault()) else ch.toString()
        }
        return "${parts[0]} de $capitalizedMonth"
    }
}

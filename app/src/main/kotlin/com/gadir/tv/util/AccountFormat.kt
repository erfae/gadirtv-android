package com.gadir.tv.util

import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

object AccountFormat {
    fun formatExpiration(expDate: String): String {
        if (expDate.isBlank()) return "—"
        val ts = expDate.toLongOrNull()
        if (ts != null && ts > 0L) {
            val millis = if (ts < 1_000_000_000_000L) ts * 1000L else ts
            val locale = Locale.getDefault()
            val pattern = when (locale.language.lowercase(Locale.ROOT)) {
                "es" -> "d 'de' MMMM 'de' yyyy"
                else -> "d MMMM yyyy"
            }
            val formatted = SimpleDateFormat(pattern, locale).apply {
                timeZone = TimeZone.getDefault()
            }.format(Date(millis))
            return if (locale.language.equals("es", ignoreCase = true)) {
                capitalizeSpanishExpiration(formatted)
            } else {
                formatted
            }
        }
        return expDate
    }

    private fun capitalizeSpanishExpiration(text: String): String {
        val parts = text.split(" de ")
        if (parts.size < 2) return text
        val day = parts[0].trim()
        val month = parts[1].trim().replaceFirstChar { ch ->
            if (ch.isLowerCase()) ch.titlecase(locale = Locale.getDefault()) else ch.toString()
        }
        val year = parts.getOrNull(2)?.trim().orEmpty()
        return if (year.isNotEmpty()) {
            "$day de $month de $year"
        } else {
            "$day de $month"
        }
    }
}

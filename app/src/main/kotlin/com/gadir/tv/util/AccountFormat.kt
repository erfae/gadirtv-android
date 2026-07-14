package com.gadir.tv.util

import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

object AccountFormat {
    fun formatExpiration(expDate: String): String {
        if (expDate.isBlank()) return "—"
        val ts = expDate.toLongOrNull()
        if (ts != null && ts > 0L) {
            val millis = if (ts < 1_000_000_000_000L) ts * 1000L else ts
            return SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(Date(millis))
        }
        return expDate
    }
}

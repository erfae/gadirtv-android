package com.gadir.tv.util

import android.content.Context
import com.gadir.tv.R
import com.gadir.tv.model.EpgEntry
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

object EpgFormatter {
    private val timeFormat = SimpleDateFormat("HH:mm", Locale.getDefault()).apply {
        timeZone = TimeZone.getDefault()
    }
    private val timeFormat12 = SimpleDateFormat("hh:mm a", Locale.getDefault()).apply {
        timeZone = TimeZone.getDefault()
    }

    fun formatTimeRange12(startSec: Long, endSec: Long): String {
        if (startSec <= 0L || endSec <= 0L) return ""
        val start = timeFormat12.format(Date(startSec * 1000L))
        val end = timeFormat12.format(Date(endSec * 1000L))
        return "$start - $end"
    }

    fun formatPreviewLine(context: Context, entry: EpgEntry): String {
        val range = formatTimeRange12(entry.start, entry.end)
        return if (range.isBlank()) {
            entry.title
        } else {
            "$range  ${entry.title}"
        }
    }

    fun formatTimeRange(startSec: Long, endSec: Long): String {
        if (startSec <= 0L || endSec <= 0L) return ""
        val start = timeFormat.format(Date(startSec * 1000L))
        val end = timeFormat.format(Date(endSec * 1000L))
        return "$start – $end"
    }

    fun formatNowLine(context: Context, entry: EpgEntry): String {
        val range = formatTimeRange(entry.start, entry.end)
        return if (range.isBlank()) {
            entry.title
        } else {
            "$range  ·  ${entry.title}"
        }
    }

    fun formatNextLine(context: Context, entry: EpgEntry): String {
        val range = formatTimeRange(entry.start, entry.end)
        val prefix = context.getString(R.string.epg_next)
        return if (range.isBlank()) {
            "$prefix: ${entry.title}"
        } else {
            "$prefix ($range): ${entry.title}"
        }
    }

    fun currentIndex(epg: List<EpgEntry>, nowSec: Long = System.currentTimeMillis() / 1000L): Int =
        epg.indexOfFirst { entry ->
            entry.start > 0L && entry.end > 0L && nowSec >= entry.start && nowSec < entry.end
        }.takeIf { it >= 0 } ?: 0
}

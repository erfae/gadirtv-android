package com.gadir.tv.util

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Typeface
import android.widget.ImageView
import androidx.core.content.ContextCompat
import com.gadir.tv.R
import kotlin.math.max

/** Miniatura local con iniciales del canal cuando no hay icono remoto. */
object ChannelIconFallback {
    private val bitmapCache = java.util.concurrent.ConcurrentHashMap<String, Bitmap>()
    private val palette = intArrayOf(
        0xFF1E3A5F.toInt(),
        0xFF2E5C8A.toInt(),
        0xFF8B1E2C.toInt(),
        0xFF1E6B4F.toInt(),
        0xFF5C3D8B.toInt(),
        0xFF8B5A1E.toInt(),
        0xFF1E5F6B.toInt(),
        0xFF4A4A4A.toInt(),
    )

    fun load(target: ImageView, channelName: String, sizePx: Int) {
        val size = max(sizePx, 96)
        val key = "${initials(channelName)}:$size"
        val cached = bitmapCache[key]
        if (cached != null && !cached.isRecycled) {
            target.setImageBitmap(cached)
            return
        }
        val initials = initials(channelName)
        val color = palette[(channelName.hashCode() and Int.MAX_VALUE) % palette.size]
        val bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        val paint = Paint(Paint.ANTI_ALIAS_FLAG)
        paint.color = color
        canvas.drawRoundRect(RectF(0f, 0f, size.toFloat(), size.toFloat()), size * 0.18f, size * 0.18f, paint)
        paint.color = ContextCompat.getColor(target.context, android.R.color.white)
        paint.typeface = Typeface.create(Typeface.DEFAULT, Typeface.BOLD)
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = size * if (initials.length > 2) 0.28f else 0.38f
        val y = size / 2f - (paint.descent() + paint.ascent()) / 2f
        canvas.drawText(initials, size / 2f, y, paint)
        bitmapCache[key] = bitmap
        target.setImageBitmap(bitmap)
    }

    fun clearCache() {
        bitmapCache.clear()
    }

    private fun initials(name: String): String {
        val words = name.trim().split(Regex("\\s+")).filter { it.isNotBlank() }
        if (words.isEmpty()) return "TV"
        if (words.size == 1) {
            val w = words.first().filter { it.isLetterOrDigit() }
            return w.take(3).uppercase().ifBlank { "TV" }
        }
        return words.take(2).mapNotNull { w ->
            w.firstOrNull { it.isLetterOrDigit() }?.uppercaseChar()
        }.joinToString("").ifBlank { "TV" }
    }
}

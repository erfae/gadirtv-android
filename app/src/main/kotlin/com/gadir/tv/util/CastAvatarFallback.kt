package com.gadir.tv.util

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.widget.ImageView
import androidx.core.content.ContextCompat
import kotlin.math.max

/**
 * Circular initials avatar for cast members without a photo. Many Xtream panels only
 * provide plain actor names (no image URLs), so a generic broken/blank icon looked
 * unpolished; this mirrors ChannelIconFallback's approach for a nicer degraded state.
 */
object CastAvatarFallback {
    private val bitmapCache = java.util.concurrent.ConcurrentHashMap<String, Bitmap>()
    private val palette = intArrayOf(
        0xFF5C3D8B.toInt(),
        0xFF2E5C8A.toInt(),
        0xFF8B1E2C.toInt(),
        0xFF1E6B4F.toInt(),
        0xFF8B5A1E.toInt(),
        0xFF1E5F6B.toInt(),
        0xFF6B3F1E.toInt(),
        0xFF4A4A6B.toInt(),
    )

    fun load(target: ImageView, name: String, sizePx: Int) {
        val size = max(sizePx, 72)
        val key = "${initials(name)}:$size"
        val cached = bitmapCache[key]
        if (cached != null && !cached.isRecycled) {
            target.setImageBitmap(cached)
            return
        }
        val text = initials(name)
        val color = palette[(name.hashCode() and Int.MAX_VALUE) % palette.size]
        val bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        val paint = Paint(Paint.ANTI_ALIAS_FLAG)
        paint.color = color
        canvas.drawOval(0f, 0f, size.toFloat(), size.toFloat(), paint)
        paint.color = ContextCompat.getColor(target.context, android.R.color.white)
        paint.typeface = android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, android.graphics.Typeface.BOLD)
        paint.textAlign = Paint.Align.CENTER
        paint.textSize = size * if (text.length > 1) 0.34f else 0.42f
        val y = size / 2f - (paint.descent() + paint.ascent()) / 2f
        canvas.drawText(text, size / 2f, y, paint)
        bitmapCache[key] = bitmap
        target.setImageBitmap(bitmap)
    }

    private fun initials(name: String): String {
        val words = name.trim().split(Regex("\\s+")).filter { it.isNotBlank() }
        if (words.isEmpty()) return "?"
        if (words.size == 1) {
            return words.first().take(2).uppercase()
        }
        return (words.first().take(1) + words.last().take(1)).uppercase()
    }
}

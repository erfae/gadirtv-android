package com.gadir.tv.util

import android.graphics.drawable.GradientDrawable
import android.view.View
import android.widget.TextView
import com.gadir.tv.model.Profile

object ProfileAvatarHelper {
    private val avatarColors = intArrayOf(
        0xFFDC2626.toInt(),
        0xFF2563EB.toInt(),
        0xFF16A34A.toInt(),
        0xFFCA8A04.toInt(),
        0xFF9333EA.toInt(),
        0xFFDB2777.toInt(),
        0xFF0891B2.toInt(),
        0xFFF97316.toInt(),
    )

    fun colorFor(profile: Profile): Int {
        val seed = if (profile.avatarSeed != 0) profile.avatarSeed else profile.id.hashCode()
        return avatarColors[kotlin.math.abs(seed) % avatarColors.size]
    }

    fun bind(circle: View, initial: TextView, profile: Profile) {
        val color = colorFor(profile)
        (circle.background as? GradientDrawable)?.setColor(color)
            ?: run {
                circle.background = GradientDrawable().apply {
                    shape = GradientDrawable.OVAL
                    setColor(color)
                }
            }
        val letter = profile.displayName.firstOrNull()?.uppercaseChar()?.toString() ?: "?"
        initial.text = letter
    }
}

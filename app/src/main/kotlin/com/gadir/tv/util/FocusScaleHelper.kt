package com.gadir.tv.util

import android.view.View
import android.view.animation.DecelerateInterpolator

object FocusScaleHelper {
    private const val SCALE = 1.12f
    private const val ROTATION_X = -6f
    private const val DURATION_MS = 180L

    fun applyConeFocus(view: View, hasFocus: Boolean) {
        val camera = view.resources.displayMetrics.density * 8000f
        view.cameraDistance = camera
        view.pivotX = view.width / 2f
        view.pivotY = view.height.toFloat()

        view.animate().cancel()
        if (hasFocus) {
            view.animate()
                .scaleX(SCALE)
                .scaleY(SCALE)
                .rotationX(ROTATION_X)
                .translationZ(16f)
                .setDuration(DURATION_MS)
                .setInterpolator(DecelerateInterpolator())
                .start()
        } else {
            view.animate()
                .scaleX(1f)
                .scaleY(1f)
                .rotationX(0f)
                .translationZ(0f)
                .setDuration(DURATION_MS)
                .setInterpolator(DecelerateInterpolator())
                .start()
        }
    }
}

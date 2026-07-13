package com.gadir.tv.util

import android.content.Context
import android.media.AudioManager

object VolumeHelper {
    fun adjust(context: Context, raise: Boolean) {
        val audio = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        audio.adjustStreamVolume(
            AudioManager.STREAM_MUSIC,
            if (raise) AudioManager.ADJUST_RAISE else AudioManager.ADJUST_LOWER,
            AudioManager.FLAG_SHOW_UI,
        )
    }
}

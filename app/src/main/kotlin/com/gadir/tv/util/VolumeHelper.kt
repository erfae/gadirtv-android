package com.gadir.tv.util

import android.content.Context
import android.media.AudioManager

object VolumeHelper {
    private const val MIN_PLAYBACK_RATIO = 0.85f
    private const val ADJUST_STEP_RATIO = 0.08f

    fun boostOnPlaybackStart(context: Context) {
        val audio = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val max = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC)
        if (max <= 0) return
        val current = audio.getStreamVolume(AudioManager.STREAM_MUSIC)
        val target = (max * MIN_PLAYBACK_RATIO).toInt().coerceIn(1, max)
        if (current < target) {
            audio.setStreamVolume(AudioManager.STREAM_MUSIC, target, 0)
        }
    }

    fun adjust(context: Context, raise: Boolean) {
        val audio = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val max = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC)
        if (max <= 0) return
        val current = audio.getStreamVolume(AudioManager.STREAM_MUSIC)
        val step = (max * ADJUST_STEP_RATIO).toInt().coerceAtLeast(1)
        val next = if (raise) {
            (current + step).coerceAtMost(max)
        } else {
            (current - step).coerceAtLeast(0)
        }
        audio.setStreamVolume(AudioManager.STREAM_MUSIC, next, AudioManager.FLAG_SHOW_UI)
    }
}

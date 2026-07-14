package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.ExoPlayer
import com.gadir.tv.data.AppSettings

object PlayerFactory {
    fun create(context: Context): ExoPlayer {
        val settings = AppSettings(context)
        val audioAttributes = AudioAttributes.Builder()
            .setUsage(C.USAGE_MEDIA)
            .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
            .build()

        val builder = ExoPlayer.Builder(context)
            .setAudioAttributes(audioAttributes, true)
            .setHandleAudioBecomingNoisy(true)

        if (settings.isCompatPlayer) {
            val loadControl = DefaultLoadControl.Builder()
                .setBufferDurationsMs(
                    50_000,
                    120_000,
                    2_500,
                    5_000,
                )
                .build()
            builder.setLoadControl(loadControl)
        }
        return builder.build().apply {
            volume = 1f
        }
    }
}

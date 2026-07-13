package com.gadir.tv.player

import android.content.Context
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.ExoPlayer
import com.gadir.tv.data.AppSettings

object PlayerFactory {
    fun create(context: Context): ExoPlayer {
        val settings = AppSettings(context)
        val builder = ExoPlayer.Builder(context)
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
        return builder.build()
    }
}

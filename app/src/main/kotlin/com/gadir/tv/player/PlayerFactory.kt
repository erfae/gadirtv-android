package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository

object PlayerFactory {
    fun create(context: Context): ExoPlayer {
        val settings = AppSettings(context)
        val dataSourceFactory = DefaultHttpDataSource.Factory()
            .setUserAgent(PlaylistRepository.userAgent)
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(20_000)
            .setReadTimeoutMs(20_000)

        val audioAttributes = AudioAttributes.Builder()
            .setUsage(C.USAGE_MEDIA)
            .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
            .build()

        val builder = ExoPlayer.Builder(context)
            .setMediaSourceFactory(DefaultMediaSourceFactory(dataSourceFactory))
            .setAudioAttributes(audioAttributes, false)
            .setHandleAudioBecomingNoisy(true)

        if (settings.isCompatPlayer || settings.isVlcPlayer) {
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

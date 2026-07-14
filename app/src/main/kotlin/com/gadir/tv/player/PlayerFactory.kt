package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository

object PlayerFactory {
    private fun dataSourceFactory() = DefaultHttpDataSource.Factory()
        .setUserAgent(PlaylistRepository.userAgent)
        .setAllowCrossProtocolRedirects(true)
        .setConnectTimeoutMs(25_000)
        .setReadTimeoutMs(25_000)

    private fun audioAttributes() = AudioAttributes.Builder()
        .setUsage(C.USAGE_MEDIA)
        .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
        .build()

    private fun build(
        context: Context,
        minBuffer: Int,
        maxBuffer: Int,
        playbackBuffer: Int,
        rebuffer: Int,
    ): ExoPlayer {
        val renderersFactory = DefaultRenderersFactory(context)
            .setEnableDecoderFallback(true)

        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(minBuffer, maxBuffer, playbackBuffer, rebuffer)
            .build()

        return ExoPlayer.Builder(context, renderersFactory)
            .setMediaSourceFactory(DefaultMediaSourceFactory(dataSourceFactory()))
            .setAudioAttributes(audioAttributes(), true)
            .setHandleAudioBecomingNoisy(true)
            .setLoadControl(loadControl)
            .build()
            .apply { volume = 1f }
    }

    fun create(context: Context): ExoPlayer {
        val bufferMs = AppSettings(context).networkBufferMs
        return build(
            context = context,
            minBuffer = bufferMs * 40,
            maxBuffer = bufferMs * 100,
            playbackBuffer = bufferMs * 2,
            rebuffer = bufferMs * 4,
        )
    }

    fun createForLivePreview(context: Context): ExoPlayer =
        build(
            context = context,
            minBuffer = 2_500,
            maxBuffer = 12_000,
            playbackBuffer = 750,
            rebuffer = 2_000,
        )

    fun createForLive(context: Context): ExoPlayer {
        val bufferMs = AppSettings(context).networkBufferMs
        return build(
            context = context,
            minBuffer = (bufferMs * 4).coerceIn(4_000, 20_000),
            maxBuffer = (bufferMs * 12).coerceIn(12_000, 45_000),
            playbackBuffer = (bufferMs * 2).coerceIn(1_500, 8_000),
            rebuffer = (bufferMs * 3).coerceIn(2_500, 12_000),
        )
    }
}

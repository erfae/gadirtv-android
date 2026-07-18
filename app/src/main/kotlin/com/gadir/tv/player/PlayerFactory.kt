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

    private fun vodAudioAttributes() = AudioAttributes.Builder()
        .setUsage(C.USAGE_MEDIA)
        .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
        .build()

    private fun liveAudioAttributes() = AudioAttributes.Builder()
        .setUsage(C.USAGE_MEDIA)
        .setContentType(C.AUDIO_CONTENT_TYPE_MUSIC)
        .build()

    private fun build(
        context: Context,
        minBuffer: Int,
        maxBuffer: Int,
        playbackBuffer: Int,
        rebuffer: Int,
        audioAttributes: AudioAttributes,
        handleAudioFocus: Boolean,
    ): ExoPlayer {
        val renderersFactory = DefaultRenderersFactory(context)
            .setEnableDecoderFallback(true)

        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(minBuffer, maxBuffer, playbackBuffer, rebuffer)
            .setPrioritizeTimeOverSizeThresholds(true)
            .build()

        return ExoPlayer.Builder(context, renderersFactory)
            .setMediaSourceFactory(DefaultMediaSourceFactory(dataSourceFactory()))
            .setAudioAttributes(audioAttributes, handleAudioFocus)
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
            audioAttributes = vodAudioAttributes(),
            handleAudioFocus = true,
        )
    }

    fun createForLivePreview(context: Context): ExoPlayer {
        val bufferMs = AppSettings(context).networkBufferMs
        return build(
            context = context,
            minBuffer = (bufferMs * 8).coerceIn(8_000, 25_000),
            maxBuffer = (bufferMs * 20).coerceIn(30_000, 90_000),
            playbackBuffer = (bufferMs * 3).coerceIn(3_000, 12_000),
            rebuffer = (bufferMs * 6).coerceIn(6_000, 18_000),
            audioAttributes = liveAudioAttributes(),
            handleAudioFocus = false,
        )
    }

    fun createForLive(context: Context): ExoPlayer {
        val bufferMs = AppSettings(context).networkBufferMs
        return build(
            context = context,
            minBuffer = (bufferMs * 8).coerceIn(10_000, 30_000),
            maxBuffer = (bufferMs * 24).coerceIn(35_000, 90_000),
            playbackBuffer = (bufferMs * 4).coerceIn(3_000, 12_000),
            rebuffer = (bufferMs * 6).coerceIn(6_000, 20_000),
            audioAttributes = liveAudioAttributes(),
            handleAudioFocus = true,
        )
    }
}

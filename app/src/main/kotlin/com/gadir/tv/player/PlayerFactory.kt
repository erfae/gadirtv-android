package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.datasource.DataSource
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository

object PlayerFactory {
    private fun dataSourceFactory(): DataSource.Factory {
        val base = DefaultHttpDataSource.Factory()
            .setUserAgent(PlaylistRepository.userAgent)
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(25_000)
            .setReadTimeoutMs(25_000)
        return HostHeaderDataSource.Factory(base)
    }

    private fun vodAudioAttributes() = AudioAttributes.Builder()
        .setUsage(C.USAGE_MEDIA)
        .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
        .build()

    private fun liveAudioAttributes() = AudioAttributes.Builder()
        .setUsage(C.USAGE_MEDIA)
        .setContentType(C.AUDIO_CONTENT_TYPE_MUSIC)
        .build()

  private fun renderersFactory(
        context: Context,
        extensionRendererMode: Int,
    ): DefaultRenderersFactory =
        DefaultRenderersFactory(context)
            .setExtensionRendererMode(extensionRendererMode)
            .setEnableDecoderFallback(true)

    private fun build(
        context: Context,
        minBuffer: Int,
        maxBuffer: Int,
        playbackBuffer: Int,
        rebuffer: Int,
        audioAttributes: AudioAttributes,
        handleAudioFocus: Boolean,
        extensionRendererMode: Int = DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON,
    ): ExoPlayer {
        val renderersFactory = renderersFactory(context, extensionRendererMode)

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
            extensionRendererMode = DefaultRenderersFactory.EXTENSION_RENDERER_MODE_PREFER,
        )
    }

    fun createForLivePreview(context: Context): ExoPlayer {
        val renderersFactory = renderersFactory(
            context,
            DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON,
        )
        val trackSelector = DefaultTrackSelector(context).apply {
            setParameters(
                buildUponParameters()
                    .setMaxVideoSize(1280, 720)
                    .setMaxVideoBitrate(2_500_000)
                    .build(),
            )
        }
        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                1_500,
                8_000,
                500,
                1_000,
            )
            .setPrioritizeTimeOverSizeThresholds(true)
            .build()
        return ExoPlayer.Builder(context, renderersFactory)
            .setTrackSelector(trackSelector)
            .setMediaSourceFactory(DefaultMediaSourceFactory(dataSourceFactory()))
            .setAudioAttributes(liveAudioAttributes(), false)
            .setHandleAudioBecomingNoisy(true)
            .setLoadControl(loadControl)
            .build()
            .apply { volume = 1f }
    }

    fun createForLive(context: Context): ExoPlayer =
        if (com.gadir.tv.util.DeviceUi.isTvUi(context)) {
            createForLivePreview(context)
        } else {
            createForLiveFullscreen(context)
        }

    /** Fullscreen live (phone/tablet): buffers equilibrados. */
    fun createForLiveFullscreen(context: Context): ExoPlayer {
        val bufferMs = AppSettings(context).networkBufferMs.coerceIn(1_500, 5_000)
        val renderersFactory = renderersFactory(
            context,
            DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON,
        )
        val trackSelector = DefaultTrackSelector(context).apply {
            setParameters(
                buildUponParameters()
                    .setExceedVideoConstraintsIfNecessary(true)
                    .setExceedRendererCapabilitiesIfNecessary(true)
                    .build(),
            )
        }
        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                (bufferMs * 2).coerceIn(4_000, 8_000),
                (bufferMs * 6).coerceIn(15_000, 30_000),
                bufferMs.coerceIn(1_000, 2_500),
                (bufferMs * 2).coerceIn(3_000, 6_000),
            )
            .setPrioritizeTimeOverSizeThresholds(true)
            .build()
        return ExoPlayer.Builder(context, renderersFactory)
            .setTrackSelector(trackSelector)
            .setMediaSourceFactory(DefaultMediaSourceFactory(dataSourceFactory()))
            .setAudioAttributes(liveAudioAttributes(), false)
            .setHandleAudioBecomingNoisy(true)
            .setLoadControl(loadControl)
            .build()
            .apply { volume = 1f }
    }
}

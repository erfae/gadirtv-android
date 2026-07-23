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
import com.gadir.tv.util.DeviceUi

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
        val settings = AppSettings(context)
        val isTv = DeviceUi.isTvUi(context)
        val bufferMs = settings.networkBufferMs.coerceIn(1_500, 5_000)
        val rendererMode = when {
            settings.isCompatPlayer -> DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON
            isTv -> DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON
            else -> DefaultRenderersFactory.EXTENSION_RENDERER_MODE_PREFER
        }
        return build(
            context = context,
            minBuffer = if (isTv) {
                (bufferMs * 4).coerceIn(8_000, 30_000)
            } else {
                (bufferMs * 8).coerceIn(15_000, 60_000)
            },
            maxBuffer = if (isTv) {
                (bufferMs * 10).coerceIn(20_000, 45_000)
            } else {
                (bufferMs * 20).coerceIn(45_000, 120_000)
            },
            playbackBuffer = bufferMs.coerceIn(2_000, 4_000),
            rebuffer = (bufferMs * 3).coerceIn(5_000, 15_000),
            audioAttributes = vodAudioAttributes(),
            handleAudioFocus = true,
            extensionRendererMode = rendererMode,
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
        // minBufferMs must be >= bufferForPlaybackAfterRebufferMs or DefaultLoadControl throws
        // IllegalArgumentException at build() time, crashing on first Live tab entry.
        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                3_000,
                18_000,
                1_000,
                2_500,
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

    fun createForLive(context: Context): ExoPlayer = createForLiveFullscreen(context)

    /** Fullscreen live: balanced buffers (preview settings caused stutter on TV). */
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
        // minBufferMs must stay >= both bufferForPlaybackMs and bufferForPlaybackAfterRebufferMs
        // across the whole clamped range, or DefaultLoadControl throws at build() time.
        val playbackBuffer = (bufferMs * 2).coerceIn(2_000, 5_000)
        val rebuffer = (bufferMs * 3).coerceIn(4_000, 10_000)
        val minBuffer = (bufferMs * 5).coerceIn(8_000, 20_000)
        val maxBuffer = (bufferMs * 15).coerceIn(30_000, 60_000)
        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(minBuffer, maxBuffer, playbackBuffer, rebuffer)
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

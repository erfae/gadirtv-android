package com.gadir.tv.player

import android.content.Context
import android.net.Uri
import org.videolan.libvlc.LibVLC
import org.videolan.libvlc.Media
import org.videolan.libvlc.MediaPlayer
import org.videolan.libvlc.util.VLCVideoLayout

/** Reproductor live con libVLC (estilo NetTV / XCIPTV). */
class LiveVlcPlayer(
    context: Context,
    videoLayout: VLCVideoLayout,
    networkBufferMs: Int,
    private val onError: () -> Unit,
    private val onPlaying: () -> Unit,
) {
    private val libVlc: LibVLC
    val mediaPlayer: MediaPlayer

    init {
        val options = VlcAudioOptions.baseOptions(networkBufferMs)
        libVlc = LibVLC(context.applicationContext, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(videoLayout, null, false, false)
            setEventListener { event ->
                when (event.type) {
                    MediaPlayer.Event.Playing -> onPlaying()
                    MediaPlayer.Event.Vout -> {
                        if (event.voutCount > 0) onPlaying()
                    }
                    MediaPlayer.Event.EncounteredError -> onError()
                }
            }
        }
    }

    fun play(url: String, volume: Int) {
        try {
            mediaPlayer.stop()
            val media = Media(libVlc, Uri.parse(url))
            mediaPlayer.media = media
            media.release()
            mediaPlayer.volume = volume
            mediaPlayer.play()
        } catch (_: Throwable) {
            onError()
        }
    }

    fun stop() {
        try {
            mediaPlayer.stop()
            mediaPlayer.volume = 0
        } catch (_: Throwable) {
            // libVLC may throw if the surface was detached during teardown.
        }
    }

    fun pause() {
        mediaPlayer.pause()
        mediaPlayer.volume = 0
    }

    fun resume() {
        mediaPlayer.play()
    }

    fun isPlaying(): Boolean = mediaPlayer.isPlaying

    fun release() {
        mediaPlayer.stop()
        mediaPlayer.detachViews()
        mediaPlayer.release()
        libVlc.release()
    }

    companion object {
        const val VOLUME_FULLSCREEN = VlcAudioOptions.VOLUME_FULLSCREEN
        const val VOLUME_PREVIEW = VlcAudioOptions.VOLUME_PREVIEW
    }
}

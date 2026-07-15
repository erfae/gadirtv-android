package com.gadir.tv.player

import android.content.Context
import android.net.Uri
import com.gadir.tv.data.PlaylistRepository
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
        val options = ArrayList<String>()
        options.add("--http-user-agent=${PlaylistRepository.userAgent}")
        options.add("--network-caching=$networkBufferMs")
        options.add("--live-caching=$networkBufferMs")
        options.add("--no-video-title-show")
        options.add("--gain=2")
        options.add("--audio-resampler=soxr")
        libVlc = LibVLC(context.applicationContext, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(videoLayout, null, false, false)
            setEventListener { event ->
                when (event.type) {
                    MediaPlayer.Event.Playing -> onPlaying()
                    MediaPlayer.Event.EncounteredError -> onError()
                }
            }
        }
    }

    fun play(url: String, volume: Int) {
        val media = Media(libVlc, Uri.parse(url))
        mediaPlayer.media = media
        media.release()
        mediaPlayer.volume = volume
        mediaPlayer.play()
    }

    fun stop() {
        mediaPlayer.stop()
        mediaPlayer.volume = 0
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
        const val VOLUME_FULLSCREEN = 75
        const val VOLUME_PREVIEW = 100
    }
}

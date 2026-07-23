package com.gadir.tv.player

import android.content.Context
import android.net.Uri
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.util.HostUtils
import com.gadir.tv.util.NetworkUrlResolver
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
    previewMode: Boolean = false,
) {
    private val libVlc: LibVLC
    val mediaPlayer: MediaPlayer

    init {
        if (!VlcInstanceGuard.acquire()) {
            throw IllegalStateException("libVLC busy")
        }
        try {
            val options = if (previewMode) {
                VlcAudioOptions.previewOptions(networkBufferMs)
            } else {
                VlcAudioOptions.baseOptions(networkBufferMs)
            }
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
        } catch (e: Throwable) {
            VlcInstanceGuard.release()
            throw e
        }
    }

    private var currentUrl: String? = null

    fun play(url: String, volume: Int) {
        if (url == currentUrl && mediaPlayer.isPlaying) return
        currentUrl = url
        startPlayback(url, volume)
    }

    fun replay(volume: Int): Boolean {
        val url = currentUrl?.takeIf { it.isNotBlank() } ?: return false
        startPlayback(url, volume)
        return true
    }

    fun playbackTimeMs(): Long = try {
        mediaPlayer.time
    } catch (_: Throwable) {
        -1L
    }

    /** Real rendered-frame count; more reliable than isPlaying()/time for freeze detection. */
    fun displayedPictures(): Int? = try {
        mediaPlayer.media?.stats?.displayedPictures
    } catch (_: Throwable) {
        null
    }

    private fun startPlayback(url: String, volume: Int) {
        try {
            mediaPlayer.stop()
            mediaPlayer.volume = 0
            val resolved = NetworkUrlResolver.resolve(url)
            val media = Media(libVlc, Uri.parse(resolved.url))
            resolved.hostHeader?.let { media.addOption(":http-host=$it") }
            PlaylistRepository.profile?.host?.let { host ->
                media.addOption(":http-referrer=${HostUtils.baseUrl(host)}/")
            }
            media.addOption(":http-user-agent=${PlaylistRepository.userAgent}")
            mediaPlayer.media = media
            media.release()
            mediaPlayer.volume = volume
            mediaPlayer.play()
        } catch (_: Throwable) {
            currentUrl = null
            onError()
        }
    }

    fun stop() {
        currentUrl = null
        try {
            mediaPlayer.stop()
            mediaPlayer.volume = 0
            mediaPlayer.media = null
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
        try {
            mediaPlayer.setEventListener(null)
            mediaPlayer.stop()
            mediaPlayer.detachViews()
            mediaPlayer.release()
        } catch (_: Throwable) {
        }
        try {
            libVlc.release()
        } catch (_: Throwable) {
        }
        VlcInstanceGuard.release()
    }

    companion object {
        const val VOLUME_FULLSCREEN = VlcAudioOptions.VOLUME_FULLSCREEN
        const val VOLUME_PREVIEW = VlcAudioOptions.VOLUME_PREVIEW
    }
}

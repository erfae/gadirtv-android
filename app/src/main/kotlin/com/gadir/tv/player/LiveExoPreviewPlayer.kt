package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView

/** Preview live con ExoPlayer — reutiliza el player al zapar para evitar frames congelados. */
class LiveExoPreviewPlayer(
    context: Context,
    playerView: PlayerView,
    private val onError: () -> Unit,
    private val onPlaying: () -> Unit,
) {
    val player: ExoPlayer = PlayerFactory.createForLivePreview(context)

    init {
        playerView.useController = false
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
        playerView.player = player
        player.addListener(
            object : Player.Listener {
                override fun onRenderedFirstFrame() {
                    onPlaying()
                }

                override fun onIsPlayingChanged(isPlaying: Boolean) {
                    if (isPlaying && player.playbackState == Player.STATE_READY) {
                        onPlaying()
                    }
                }

                override fun onPlayerError(error: PlaybackException) {
                    onError()
                }
            },
        )
    }

    private var currentUrl: String? = null

    fun play(url: String, volume: Int) {
        currentUrl = url
        startPlayback(url, volume)
    }

    fun replay(volume: Int): Boolean {
        val url = currentUrl?.takeIf { it.isNotBlank() } ?: return false
        startPlayback(url, volume)
        return true
    }

    private fun startPlayback(url: String, volume: Int) {
        val item = LiveStreamUrls.mediaItem(url)
        player.volume = (volume / 100f).coerceIn(0f, 0.38f)
        if (url == currentUrl && player.mediaItemCount > 0) {
            player.playWhenReady = true
            return
        }
        currentUrl = url
        player.setMediaItem(item)
        player.prepare()
        player.playWhenReady = true
    }

    fun teardown() {
        currentUrl = null
        player.playWhenReady = false
        player.stop()
        player.clearMediaItems()
        player.volume = 0f
    }

    fun detach(playerView: PlayerView) {
        teardown()
        playerView.player = null
    }

    fun stop() {
        player.playWhenReady = false
        player.stop()
        player.clearMediaItems()
        player.volume = 0f
    }

    fun pause() {
        player.playWhenReady = false
        player.pause()
        player.volume = 0f
    }

    fun isPlaying(): Boolean = player.isPlaying

    fun release() {
        player.release()
    }

    companion object {
        const val VOLUME_PREVIEW = VlcAudioOptions.VOLUME_PREVIEW
    }
}

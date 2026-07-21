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

    fun play(url: String, volume: Int) {
        val item = LiveStreamUrls.mediaItem(url)
        player.playWhenReady = false
        player.stop()
        player.clearMediaItems()
        player.setMediaItem(item)
        player.prepare()
        player.volume = (volume / 100f).coerceIn(0f, 0.22f)
        player.playWhenReady = true
    }

    fun teardown() {
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

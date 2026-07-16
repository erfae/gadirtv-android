package com.gadir.tv.player

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView

/** Preview live en móvil con ExoPlayer (más estable que libVLC en pantalla pequeña). */
class LiveExoPreviewPlayer(
    context: Context,
    playerView: PlayerView,
    private val onError: () -> Unit,
    private val onPlaying: () -> Unit,
) {
    val player: ExoPlayer = PlayerFactory.createForLivePreview(context)

    init {
        playerView.useController = false
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_WHEN_PLAYING)
        playerView.player = player
        player.addListener(
            object : Player.Listener {
                override fun onPlaybackStateChanged(playbackState: Int) {
                    if (playbackState == Player.STATE_READY && player.isPlaying) {
                        onPlaying()
                    }
                }

                override fun onIsPlayingChanged(isPlaying: Boolean) {
                    if (isPlaying) onPlaying()
                }

                override fun onPlayerError(error: PlaybackException) {
                    onError()
                }
            },
        )
    }

    fun play(url: String, volume: Int) {
        player.stop()
        player.setMediaItem(MediaItem.fromUri(url))
        player.prepare()
        player.volume = volume / 100f
        player.playWhenReady = true
    }

    fun stop() {
        player.playWhenReady = false
        player.stop()
        player.clearMediaItems()
    }

    fun pause() {
        player.playWhenReady = false
        player.pause()
    }

    fun isPlaying(): Boolean = player.isPlaying

    fun release() {
        player.release()
    }

    companion object {
        const val VOLUME_PREVIEW = VlcAudioOptions.VOLUME_PREVIEW
    }
}

package com.gadir.tv.ui.player

import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer

class LivePlaybackMonitor(
    private val player: ExoPlayer,
    private val overlay: View,
    private val timeoutMs: Long = 7_000L,
    private val onBeforeNoSignal: (() -> Boolean)? = null,
) {
    private val handler = Handler(Looper.getMainLooper())
    private var active = false

    private val listener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            when (playbackState) {
                Player.STATE_READY -> {
                    if (player.isPlaying) hideOverlay()
                    else scheduleCheck()
                }
                Player.STATE_BUFFERING -> scheduleCheck()
                Player.STATE_ENDED -> tryShowOverlay()
                Player.STATE_IDLE -> scheduleCheck()
            }
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            if (isPlaying) hideOverlay() else scheduleCheck()
        }

        override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
            tryShowOverlay()
        }
    }

    private val checkRunnable = Runnable {
        if (!active) return@Runnable
        val playing = player.playbackState == Player.STATE_READY && player.isPlaying
        if (!playing) tryShowOverlay()
    }

    fun start() {
        if (active) return
        active = true
        overlay.visibility = View.GONE
        player.addListener(listener)
        scheduleCheck()
    }

    fun reset() {
        if (!active) return
        hideOverlay()
        scheduleCheck()
    }

    fun stop() {
        active = false
        handler.removeCallbacksAndMessages(null)
        player.removeListener(listener)
        hideOverlay()
    }

    private fun scheduleCheck() {
        handler.removeCallbacks(checkRunnable)
        if (active) handler.postDelayed(checkRunnable, timeoutMs)
    }

    private fun tryShowOverlay() {
        if (onBeforeNoSignal?.invoke() == true) {
            hideOverlay()
            scheduleCheck()
            return
        }
        showOverlay()
    }

    private fun showOverlay() {
        overlay.visibility = View.VISIBLE
    }

    private fun hideOverlay() {
        handler.removeCallbacks(checkRunnable)
        overlay.visibility = View.GONE
    }
}

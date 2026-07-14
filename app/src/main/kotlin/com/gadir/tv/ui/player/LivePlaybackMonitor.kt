package com.gadir.tv.ui.player

import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer

class LivePlaybackMonitor(
    private val player: ExoPlayer,
    private val overlay: View,
    private val timeoutMs: Long = 20_000L,
    private val bufferingFallbackMs: Long = 25_000L,
    private val onBeforeNoSignal: (() -> Boolean)? = null,
    private val shouldHoldStream: (() -> Boolean)? = null,
) {
    private val handler = Handler(Looper.getMainLooper())
    private var active = false
    private var bufferingSince = 0L

    private val listener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            when (playbackState) {
                Player.STATE_READY -> {
                    bufferingSince = 0L
                    if (player.isPlaying) hideOverlay()
                    else scheduleCheck()
                }
                Player.STATE_BUFFERING -> {
                    if (bufferingSince == 0L) bufferingSince = System.currentTimeMillis()
                    hideOverlay()
                    scheduleCheck()
                }
                Player.STATE_ENDED -> tryShowOverlay()
                Player.STATE_IDLE -> scheduleCheck()
            }
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            if (isPlaying) {
                bufferingSince = 0L
                hideOverlay()
            } else {
                scheduleCheck()
            }
        }

        override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
            tryShowOverlay()
        }
    }

    private val checkRunnable = Runnable {
        if (!active) return@Runnable
        if (shouldHoldStream?.invoke() == true) {
            hideOverlay()
            scheduleCheck()
            return@Runnable
        }
        when (player.playbackState) {
            Player.STATE_BUFFERING -> {
                val elapsed = if (bufferingSince > 0L) {
                    System.currentTimeMillis() - bufferingSince
                } else {
                    0L
                }
                if (elapsed >= bufferingFallbackMs) {
                    tryShowOverlay()
                } else {
                    scheduleCheck()
                }
            }
            Player.STATE_READY -> {
                if (player.isPlaying) hideOverlay() else scheduleCheck()
            }
            Player.STATE_IDLE, Player.STATE_ENDED -> tryShowOverlay()
            else -> scheduleCheck()
        }
    }

    fun start() {
        if (active) return
        active = true
        bufferingSince = 0L
        hideOverlay()
        player.addListener(listener)
        scheduleCheck()
    }

    fun reset() {
        if (!active) return
        bufferingSince = 0L
        hideOverlay()
        scheduleCheck()
    }

    fun stop() {
        active = false
        bufferingSince = 0L
        handler.removeCallbacksAndMessages(null)
        player.removeListener(listener)
        hideOverlay()
    }

    private fun scheduleCheck() {
        handler.removeCallbacks(checkRunnable)
        if (active) handler.postDelayed(checkRunnable, timeoutMs)
    }

    private fun tryShowOverlay() {
        if (shouldHoldStream?.invoke() == true) {
            hideOverlay()
            scheduleCheck()
            return
        }
        if (onBeforeNoSignal?.invoke() == true) {
            hideOverlay()
            bufferingSince = 0L
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

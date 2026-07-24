package com.gadir.tv.data

import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.delay

/**
 * Pauses background panel traffic while ANY live stream is active (preview or fullscreen).
 *
 * Many Xtream panels count get_short_epg and stream URLs as separate "connections".
 * While one channel plays, background EPG/catalog prefetch must stay idle.
 */
object LivePlaybackGate {
    private val holders = AtomicInteger(0)

    fun acquire() {
        holders.incrementAndGet()
    }

    fun release() {
        holders.updateAndGet { (it - 1).coerceAtLeast(0) }
    }

    fun isLivePlaybackActive(): Boolean = holders.get() > 0

    /** Suspends the caller while a live channel is on screen; returns once it's safe to continue. */
    suspend fun awaitIdle() {
        while (isLivePlaybackActive()) {
            delay(500L)
        }
    }
}

package com.gadir.tv.data

import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.delay

/**
 * Pauses background panel traffic (EPG prefetch, catalog/icon prefetch) while a live
 * channel is actively playing in fullscreen.
 *
 * Many Xtream-style panels log ANY authenticated request that references a stream_id
 * (including EPG queries like get_short_epg, not just the actual video stream) as an
 * "active connection" in the admin dashboard. ContentPreloader's background job walks
 * dozens of channels fetching EPG for all of them, completely independent of whatever
 * the user is actually watching — from the panel's point of view this can look like the
 * account is "connected to several channels at once" while the user is simply watching
 * one channel in fullscreen, which can trip max_connections limits or abuse detection.
 *
 * Reference-counted rather than a plain boolean: when live playback falls back between
 * VlcPlayerActivity and PlayerActivity (e.g. a decoder error), the new player's onCreate
 * acquires the gate before the old player's onDestroy releases it, so the count never
 * drops to zero during the handoff and background traffic doesn't briefly resume mid-swap.
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

package com.gadir.tv.player

import android.os.SystemClock

/**
 * Ensures only one libVLC instance is alive at a time (preview vs fullscreen).
 * Overlapping native instances are a common cause of random crashes on Android TV.
 */
object VlcInstanceGuard {
    private val monitor = Object()
    private var active = false
    private var releasedAt = 0L

    fun acquire(timeoutMs: Long = 3_000L): Boolean {
        val deadline = SystemClock.uptimeMillis() + timeoutMs
        synchronized(monitor) {
            while (active) {
                val remaining = deadline - SystemClock.uptimeMillis()
                if (remaining <= 0L) return false
                monitor.wait(remaining.coerceAtMost(100L))
            }
            active = true
            return true
        }
    }

    fun release() {
        synchronized(monitor) {
            active = false
            releasedAt = SystemClock.uptimeMillis()
            monitor.notifyAll()
        }
    }

    fun cooldownRemainingMs(minGapMs: Long): Long {
        synchronized(monitor) {
            if (active) return minGapMs
            val elapsed = SystemClock.uptimeMillis() - releasedAt
            return (minGapMs - elapsed).coerceAtLeast(0L)
        }
    }
}

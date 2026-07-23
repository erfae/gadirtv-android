package com.gadir.tv.player

import android.os.SystemClock

/**
 * Ensures only one libVLC instance is alive at a time (preview vs fullscreen).
 * Overlapping native instances are a common cause of random crashes on Android TV.
 *
 * Non-blocking by design: acquire() always returns immediately. It used to block the
 * calling thread with Object.wait() until the guard freed up or a timeout elapsed — since
 * acquire() is always called from onCreate() on the main thread, this could deadlock with
 * the previous holder's release() (called from its own onDestroy()), which can only run
 * once the current onCreate() call returns and the main thread's message queue continues.
 * That deadlock resolved only once the wait() timeout expired, which is exactly why movies
 * would "only play on the second try" — the first attempt blocked the UI for seconds before
 * failing over, and by the time the user tried again the previous instance had finally been
 * able to release the guard.
 */
object VlcInstanceGuard {
    private val monitor = Object()
    private var active = false
    private var releasedAt = 0L

    /** Non-blocking: returns true (and marks busy) if free, false if another instance holds it. */
    fun tryAcquire(): Boolean {
        synchronized(monitor) {
            if (active) return false
            active = true
            return true
        }
    }

    fun release() {
        synchronized(monitor) {
            active = false
            releasedAt = SystemClock.uptimeMillis()
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

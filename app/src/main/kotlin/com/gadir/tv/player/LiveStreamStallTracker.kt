package com.gadir.tv.player

/** Detects live streams that report "playing" but stop advancing. */
class LiveStreamStallTracker(
    private val stallTimeoutMs: Long,
) {
    private var lastProgressAt = 0L
    private var lastProgressKey = Long.MIN_VALUE

    fun reset() {
        lastProgressAt = 0L
        lastProgressKey = Long.MIN_VALUE
    }

    fun ping(now: Long = System.currentTimeMillis()) {
        lastProgressAt = now
        if (lastProgressKey == Long.MIN_VALUE) {
            lastProgressKey = 0L
        }
    }

    fun noteProgress(progressKey: Long, now: Long = System.currentTimeMillis()) {
        if (progressKey != lastProgressKey) {
            lastProgressKey = progressKey
            lastProgressAt = now
        } else if (lastProgressAt == 0L) {
            lastProgressAt = now
        }
    }

    fun isStalled(now: Long = System.currentTimeMillis()): Boolean {
        if (lastProgressAt == 0L) return false
        return now - lastProgressAt >= stallTimeoutMs
    }
}

fun exoLiveProgressKey(positionMs: Long, bufferedPositionMs: Long): Long =
    positionMs xor (bufferedPositionMs shl 20)

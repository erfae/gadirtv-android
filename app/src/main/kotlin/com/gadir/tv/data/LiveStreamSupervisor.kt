package com.gadir.tv.data

import java.util.concurrent.CopyOnWriteArrayList

/** Stops every active live stream (preview + fullscreen) when the app leaves the foreground. */
object LiveStreamSupervisor {
    private val stopActions = CopyOnWriteArrayList<() -> Unit>()

    fun register(action: () -> Unit) {
        if (action !in stopActions) stopActions.add(action)
    }

    fun unregister(action: () -> Unit) {
        stopActions.remove(action)
    }

    fun stopAllLiveStreams() {
        stopActions.forEach { action ->
            runCatching { action.invoke() }
        }
    }
}

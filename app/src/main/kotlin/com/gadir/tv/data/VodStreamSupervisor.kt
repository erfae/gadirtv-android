package com.gadir.tv.data

import java.util.concurrent.CopyOnWriteArrayList

/** Stops active VOD streams (movies/series) so panel connections are not left open. */
object VodStreamSupervisor {
    private val stopActions = CopyOnWriteArrayList<() -> Unit>()

    fun register(action: () -> Unit) {
        if (action !in stopActions) stopActions.add(action)
    }

    fun unregister(action: () -> Unit) {
        stopActions.remove(action)
    }

    fun stopAllVodStreams() {
        stopActions.forEach { action ->
            runCatching { action.invoke() }
        }
    }
}

package com.gadir.tv.data

import com.gadir.tv.player.VlcInstanceGuard
import java.util.concurrent.CopyOnWriteArrayList

/** Stops active VOD streams (movies/series) so panel connections are not left open. */
object VodStreamSupervisor {
    private val stopActions = CopyOnWriteArrayList<() -> Unit>()

    @Volatile
    private var activeStreamUrl: String? = null

    fun register(action: () -> Unit) {
        if (action !in stopActions) stopActions.add(action)
    }

    fun unregister(action: () -> Unit) {
        stopActions.remove(action)
    }

    fun noteStreamUrl(url: String) {
        if (url.isNotBlank()) activeStreamUrl = url
    }

    fun clearStreamUrl() {
        activeStreamUrl = null
    }

    /** Stop every registered VOD player and free libVLC guard slots. */
    fun stopAllVodStreams() {
        stopActions.forEach { action ->
            runCatching { action.invoke() }
        }
        VlcInstanceGuard.forceRelease()
    }

    /** App/process exit — always tear down even if players already reported released. */
    fun hardStopAll() {
        stopActions.forEach { action ->
            runCatching { action.invoke() }
        }
        VlcInstanceGuard.forceRelease()
        activeStreamUrl = null
        // Second pass catches players that unregister during the first stop.
        stopActions.forEach { action ->
            runCatching { action.invoke() }
        }
        VlcInstanceGuard.forceRelease()
    }
}

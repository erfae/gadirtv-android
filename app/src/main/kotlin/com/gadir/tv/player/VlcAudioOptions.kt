package com.gadir.tv.player

import com.gadir.tv.data.PlaylistRepository

/** Opciones libVLC compartidas: sin ganancia extra para evitar distorsión en TV/Fire TV. */
object VlcAudioOptions {
    const val VOLUME_FULLSCREEN = 85
    /** Preview TV: volumen bajo para evitar saturación/distorsión con ExoPlayer. */
    const val VOLUME_PREVIEW = 15

    fun baseOptions(networkBufferMs: Int): ArrayList<String> = arrayListOf(
        "--http-user-agent=${PlaylistRepository.userAgent}",
        "--network-caching=$networkBufferMs",
        "--live-caching=$networkBufferMs",
        "--no-video-title-show",
    )
}

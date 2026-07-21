package com.gadir.tv.player

import com.gadir.tv.data.PlaylistRepository

/** Opciones libVLC compartidas: sin ganancia extra para evitar distorsión en TV/Fire TV. */
object VlcAudioOptions {
    const val VOLUME_FULLSCREEN = 92
    /** Preview TV: audible but below fullscreen level. */
    const val VOLUME_PREVIEW = 42

    fun baseOptions(networkBufferMs: Int): ArrayList<String> = arrayListOf(
        "--http-user-agent=${PlaylistRepository.userAgent}",
        "--network-caching=$networkBufferMs",
        "--live-caching=$networkBufferMs",
        "--file-caching=${networkBufferMs.coerceIn(2_000, 8_000)}",
        "--no-video-title-show",
        "--avcodec-hw=any",
        "--http-reconnect",
    )

    /** Preview TV: software decode + drop frames to avoid OOM/crash on FHD/4K. */
    fun previewOptions(networkBufferMs: Int): ArrayList<String> {
        val cache = networkBufferMs.coerceIn(600, 1_800)
        return arrayListOf(
            "--http-user-agent=${PlaylistRepository.userAgent}",
            "--network-caching=$cache",
            "--live-caching=$cache",
            "--no-video-title-show",
            "--avcodec-hw=none",
            "--avcodec-fast",
            "--avcodec-threads=2",
            "--drop-late-frames",
            "--skip-frames",
            "--http-reconnect",
        )
    }
}

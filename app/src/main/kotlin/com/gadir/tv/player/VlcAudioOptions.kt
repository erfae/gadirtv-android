package com.gadir.tv.player

import com.gadir.tv.data.PlaylistRepository

/** Opciones libVLC compartidas: sin ganancia extra para evitar distorsión en TV/Fire TV. */
object VlcAudioOptions {
    const val VOLUME_FULLSCREEN = 92
    /** Preview TV: audible but below fullscreen level. */
    const val VOLUME_PREVIEW = 42

    fun baseOptions(networkBufferMs: Int): ArrayList<String> = liveFullscreenOptions(networkBufferMs)

    /** Fullscreen live/VOD with libVLC on Android TV. */
    fun liveFullscreenOptions(networkBufferMs: Int): ArrayList<String> {
        val cache = networkBufferMs.coerceIn(1_500, 5_000)
        return arrayListOf(
            "--http-user-agent=${PlaylistRepository.userAgent}",
            "--network-caching=$cache",
            "--live-caching=$cache",
            "--file-caching=${(cache * 2).coerceIn(3_000, 10_000)}",
            "--no-video-title-show",
            "--avcodec-hw=any",
            "--http-reconnect",
            "--clock-jitter=0",
            "--clock-synchro=0",
        )
    }

    /** VOD: larger cache for progressive HTTP streams. No http-reconnect — keeps panel slot open after exit. */
    fun vodOptions(networkBufferMs: Int): ArrayList<String> {
        val network = networkBufferMs.coerceIn(2_000, 8_000)
        val file = (network * 3).coerceIn(8_000, 24_000)
        return arrayListOf(
            "--http-user-agent=${PlaylistRepository.userAgent}",
            "--network-caching=$network",
            "--live-caching=$network",
            "--file-caching=$file",
            "--no-video-title-show",
            "--avcodec-hw=any",
            "--no-http-reconnect",
        )
    }

    /** Software decode fallback when hardware init/playback fails. */
    fun softwareOptions(networkBufferMs: Int): ArrayList<String> {
        val cache = networkBufferMs.coerceIn(1_500, 5_000)
        return arrayListOf(
            "--http-user-agent=${PlaylistRepository.userAgent}",
            "--network-caching=$cache",
            "--live-caching=$cache",
            "--file-caching=${(cache * 2).coerceIn(3_000, 10_000)}",
            "--no-video-title-show",
            "--avcodec-hw=none",
            "--avcodec-fast",
            "--http-reconnect",
        )
    }

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

package com.gadir.tv.player

data class PlaybackRequest(
    val title: String,
    val url: String,
    val kind: String,
    val contentId: String = "",
    val imageUrl: String = "",
    val extension: String = "mp4",
    val positionMs: Long = 0L,
    val streamId: Int = 0,
)

package com.gadir.tv.ui.player

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import com.gadir.tv.R
import com.gadir.tv.data.ResumeStore

class PlayerActivity : AppCompatActivity() {
    private var player: ExoPlayer? = null
    private lateinit var resumeStore: ResumeStore

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_player)
        resumeStore = ResumeStore(this)

        val url = intent.getStringExtra(EXTRA_URL).orEmpty()
        val positionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L)

        findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).apply {
            useController = false
            setShowBuffering(androidx.media3.ui.PlayerView.SHOW_BUFFERING_NEVER)
        }

        player = ExoPlayer.Builder(this).build().also { exo ->
            findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).player = exo
            exo.setMediaItem(MediaItem.fromUri(url))
            exo.prepare()
            if (positionMs > 0L) {
                exo.seekTo(positionMs)
            }
            exo.playWhenReady = true
        }
    }

    override fun onBackPressed() {
        saveProgress()
        finish()
    }

    override fun onStop() {
        saveProgress()
        super.onStop()
        player?.pause()
    }

    override fun onDestroy() {
        player?.release()
        player = null
        super.onDestroy()
    }

    private fun saveProgress() {
        val exo = player ?: return
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        val contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty()
        if (kind.isEmpty() || contentId.isEmpty() || kind == ResumeStore.KIND_LIVE) return
        val duration = exo.duration
        if (duration <= 0L) return
        resumeStore.save(
            kind = kind,
            id = contentId,
            positionMs = exo.currentPosition,
            durationMs = duration,
            title = intent.getStringExtra(EXTRA_TITLE).orEmpty(),
            imageUrl = intent.getStringExtra(EXTRA_IMAGE_URL).orEmpty(),
            extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mp4" },
        )
    }

    companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"
        private const val EXTRA_KIND = "kind"
        private const val EXTRA_CONTENT_ID = "content_id"
        private const val EXTRA_IMAGE_URL = "image_url"
        private const val EXTRA_EXTENSION = "extension"
        private const val EXTRA_POSITION_MS = "position_ms"

        fun intent(
            context: Context,
            title: String,
            url: String,
            kind: String = ResumeStore.KIND_LIVE,
            contentId: String = "",
            imageUrl: String = "",
            extension: String = "mp4",
            positionMs: Long = 0L,
        ): Intent = Intent(context, PlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_KIND, kind)
            .putExtra(EXTRA_CONTENT_ID, contentId)
            .putExtra(EXTRA_IMAGE_URL, imageUrl)
            .putExtra(EXTRA_EXTENSION, extension)
            .putExtra(EXTRA_POSITION_MS, positionMs)
    }
}

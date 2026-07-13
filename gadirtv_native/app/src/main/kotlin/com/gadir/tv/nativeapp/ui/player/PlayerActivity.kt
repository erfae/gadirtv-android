package com.gadir.tv.nativeapp.ui.player

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import com.gadir.tv.nativeapp.R

class PlayerActivity : AppCompatActivity() {
    private var player: ExoPlayer? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_player)

        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        val url = intent.getStringExtra(EXTRA_URL).orEmpty()

        findViewById<android.widget.TextView>(R.id.playerTitle).text = title

        player = ExoPlayer.Builder(this).build().also { exo ->
            findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).player = exo
            exo.setMediaItem(MediaItem.fromUri(url))
            exo.prepare()
            exo.playWhenReady = true
        }
    }

    override fun onStop() {
        super.onStop()
        player?.pause()
    }

    override fun onDestroy() {
        player?.release()
        player = null
        super.onDestroy()
    }

  companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"

        fun intent(context: Context, title: String, url: String): Intent =
            Intent(context, PlayerActivity::class.java)
                .putExtra(EXTRA_TITLE, title)
                .putExtra(EXTRA_URL, url)
    }
}

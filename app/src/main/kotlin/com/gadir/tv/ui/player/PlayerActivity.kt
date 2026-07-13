package com.gadir.tv.ui.player

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.View
import android.widget.ImageButton
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.ui.settings.SettingsActivity
import com.gadir.tv.util.VolumeHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class PlayerActivity : AppCompatActivity() {
    private var player: ExoPlayer? = null
    private var playbackMonitor: LivePlaybackMonitor? = null
    private lateinit var resumeStore: ResumeStore
    private val api = XtreamApi()
    private var isLive = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_player)
        resumeStore = ResumeStore(this)

        val url = intent.getStringExtra(EXTRA_URL).orEmpty()
        val positionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L)
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        val streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        val channelTitle = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        isLive = kind == ResumeStore.KIND_LIVE

        findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).apply {
            useController = false
            setShowBuffering(androidx.media3.ui.PlayerView.SHOW_BUFFERING_NEVER)
        }

        val noSignal = findViewById<View>(R.id.playerNoSignal)
        findViewById<View>(R.id.btnNoSignalSettings).setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }

        val volumeControls = findViewById<View>(R.id.playerVolumeControls)
        val epgPanel = findViewById<View>(R.id.playerEpgPanel)
        volumeControls.visibility = if (isLive) View.VISIBLE else View.GONE
        epgPanel.visibility = if (isLive) View.VISIBLE else View.GONE

        if (isLive) {
            findViewById<TextView>(R.id.playerChannelTitle).text = channelTitle
            findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
                VolumeHelper.adjust(this, raise = true)
            }
            findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
                VolumeHelper.adjust(this, raise = false)
            }
            findViewById<ImageButton>(R.id.btnFullscreen).visibility = View.GONE
            loadFullscreenEpg(streamId)
        }

        player = ExoPlayer.Builder(this).build().also { exo ->
            findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).player = exo
            exo.setMediaItem(MediaItem.fromUri(Uri.parse(url)))
            exo.prepare()
            if (positionMs > 0L) {
                exo.seekTo(positionMs)
            }
            exo.playWhenReady = true
            if (isLive) {
                playbackMonitor = LivePlaybackMonitor(exo, noSignal).also { it.start() }
            }
        }
    }

    private fun loadFullscreenEpg(streamId: Int) {
        val profile = PlaylistRepository.profile ?: return
        if (streamId <= 0) return

        val loading = findViewById<TextView>(R.id.epgLoadingLabel)
        val list = findViewById<RecyclerView>(R.id.epgList)
        list.layoutManager = LinearLayoutManager(this)
        loading.visibility = View.VISIBLE

        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpg(profile, streamId, limit = 10)
            }
            loading.visibility = View.GONE
            if (epg.isEmpty()) {
                loading.visibility = View.VISIBLE
                loading.text = getString(R.string.epg_unavailable)
                return@launch
            }
            val now = System.currentTimeMillis() / 1000L
            list.adapter = EpgAdapter(epg, now)
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
        playbackMonitor?.stop()
        playbackMonitor = null
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
        private const val EXTRA_STREAM_ID = "stream_id"

        fun intent(
            context: Context,
            title: String,
            url: String,
            kind: String = ResumeStore.KIND_LIVE,
            contentId: String = "",
            imageUrl: String = "",
            extension: String = "mp4",
            positionMs: Long = 0L,
            streamId: Int = 0,
        ): Intent = Intent(context, PlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_KIND, kind)
            .putExtra(EXTRA_CONTENT_ID, contentId)
            .putExtra(EXTRA_IMAGE_URL, imageUrl)
            .putExtra(EXTRA_EXTENSION, extension)
            .putExtra(EXTRA_POSITION_MS, positionMs)
            .putExtra(EXTRA_STREAM_ID, streamId)
    }
}

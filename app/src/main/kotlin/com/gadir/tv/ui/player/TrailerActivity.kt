package com.gadir.tv.ui.player

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.widget.TextView
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import com.gadir.tv.R
import com.gadir.tv.data.TmdbApi
import com.gadir.tv.player.PlayerFactory
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.DailymotionStreamResolver
import com.gadir.tv.util.TrailerResolver
import com.gadir.tv.util.TrailerSource
import com.gadir.tv.util.TrailerStreamResolver
import com.gadir.tv.util.VimeoStreamResolver
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** ExoPlayer-only trailers — no YouTube app, no WebView. Streams resolved to direct MP4/HLS. */
class TrailerActivity : BaseLocaleActivity() {
    private lateinit var playerView: PlayerView
    private lateinit var statusView: TextView
    private lateinit var trailerHeader: View
    private lateinit var btnBack: TextView
    private lateinit var btnRetry: TextView
    private var exoPlayer: ExoPlayer? = null
    private var playbackStarted = false
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { onLoadTimeout() }

    private var sources: List<TrailerSource> = emptyList()
    private var sourceIndex = 0
    private var tmdbLookupStarted = false
    private var playbackStartedOnce = false
    private var isSeriesContent = false
    private var releaseDateHint = ""
    private var tmdbContentId = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        enterImmersiveMode()

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        isSeriesContent = intent.getBooleanExtra(EXTRA_IS_SERIES, false)
        releaseDateHint = intent.getStringExtra(EXTRA_RELEASE_DATE).orEmpty()
        tmdbContentId = intent.getIntExtra(EXTRA_TMDB_ID, 0)
        findViewById<TextView>(R.id.trailerTitle).text = title
        statusView = findViewById(R.id.trailerStatus)
        btnBack = findViewById(R.id.btnTrailerBack)
        trailerHeader = findViewById(R.id.trailerHeader)
        btnRetry = findViewById(R.id.btnTrailerRetry)
        playerView = findViewById(R.id.trailerPlayerView)
        findViewById<View>(R.id.trailerWebView).visibility = View.GONE

        sources = TrailerResolver.resolveAll(rawUrl, title)

        btnBack.setOnClickListener { finish() }
        btnRetry.setOnClickListener { retryPlayback() }
        btnRetry.visibility = View.GONE
        btnBack.requestFocus()

        if (sources.isNotEmpty()) {
            startCurrentSource()
        }
        lookupTmdbTrailer(title, preferFirst = true)
    }

    private fun lookupTmdbTrailer(title: String, preferFirst: Boolean = false) {
        if (title.isBlank() || tmdbLookupStarted || !TmdbApi.isConfigured()) {
            if (sources.isEmpty() && !playbackStartedOnce) showFailed()
            return
        }
        tmdbLookupStarted = true
        lifecycleScope.launch {
            val lookupTitle = findViewById<TextView>(R.id.trailerTitle).text.toString()
            val tmdbTrailer = withContext(Dispatchers.IO) {
                TmdbApi.fetchTrailer(
                    title = lookupTitle,
                    releaseDate = releaseDateHint,
                    isSeries = isSeriesContent,
                    tmdbId = tmdbContentId.takeIf { it > 0 },
                )
            }
            if (isFinishing) return@launch
            val tmdbSources = tmdbTrailer?.let {
                TrailerResolver.resolveFromTmdb(it.site, it.key)
            }.orEmpty()
            if (tmdbSources.isEmpty()) {
                if (sources.isEmpty() && !playbackStartedOnce) showFailed()
                return@launch
            }
            val hadSources = sources.isNotEmpty()
            sources = mergeSources(preferFirst, tmdbSources, sources)
            if (!hadSources && !playbackStartedOnce) {
                sourceIndex = 0
                startCurrentSource()
            }
        }
    }

    override fun onBackPressed() {
        finish()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN && event.keyCode == KeyEvent.KEYCODE_BACK) {
            finish()
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    private fun mergeSources(preferFirst: Boolean, vararg lists: List<TrailerSource>): List<TrailerSource> {
        val merged = LinkedHashSet<TrailerSource>()
        val ordered = if (preferFirst) lists.toList() else lists.reversed()
        ordered.forEach { merged.addAll(it) }
        return merged.toList()
    }

    private fun retryPlayback() {
        sourceIndex = 0
        playbackStartedOnce = false
        releasePlayer()
        startCurrentSource()
    }

    private fun startCurrentSource() {
        if (sourceIndex >= sources.size) {
            showFailed()
            return
        }
        playbackStarted = false
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_loading)
        btnRetry.visibility = View.GONE
        scheduleLoadTimeout()

        lifecycleScope.launch {
            val directUrl = withContext(Dispatchers.IO) {
                resolvePlayableUrl(sources[sourceIndex])
            }
            if (isFinishing) return@launch
            if (directUrl.isNullOrBlank()) {
                advancePlayback()
                return@launch
            }
            playDirectVideo(directUrl)
        }
    }

    private fun resolvePlayableUrl(source: TrailerSource): String? {
        return when (source) {
            is TrailerSource.DirectVideo -> source.url
            is TrailerSource.StreamVideo -> TrailerStreamResolver.directPlayUrl(source.videoId)
            is TrailerSource.Vimeo ->
                VimeoStreamResolver.directPlayUrl(source.videoId)
                    ?: VimeoStreamResolver.directPlayUrl(source.pageUrl)
            is TrailerSource.Dailymotion -> DailymotionStreamResolver.directPlayUrl(source.videoId)
        }
    }

    private fun playDirectVideo(url: String) {
        playbackStartedOnce = true
        if (DeviceUi.isTvUi(this)) {
            trailerHeader.visibility = View.GONE
            playerView.useController = true
            playerView.controllerShowTimeoutMs = 0
            playerView.controllerHideOnTouch = false
        }
        playerView.visibility = View.VISIBLE
        releasePlayer()
        exoPlayer = PlayerFactory.create(this).also { player ->
            playerView.player = player
            player.addListener(object : Player.Listener {
                override fun onPlaybackStateChanged(state: Int) {
                    if (state == Player.STATE_READY && player.isPlaying) {
                        markPlaybackStarted()
                    } else if (state == Player.STATE_ENDED) {
                        finish()
                    }
                }

                override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                    advancePlayback()
                }
            })
            player.setMediaItem(MediaItem.fromUri(url))
            player.prepare()
            player.playWhenReady = true
        }
        enterImmersiveMode()
        if (DeviceUi.isTvUi(this)) {
            playerView.post { playerView.requestFocus() }
        }
    }

    private fun advancePlayback() {
        if (playbackStarted) return
        cancelLoadTimeout()
        releasePlayer()
        sourceIndex++
        if (sourceIndex >= sources.size) {
            showFailed()
            return
        }
        startCurrentSource()
    }

    private fun onLoadTimeout() {
        if (playbackStarted) return
        advancePlayback()
    }

    private fun markPlaybackStarted() {
        playbackStarted = true
        cancelLoadTimeout()
        statusView.visibility = View.GONE
        btnRetry.visibility = View.GONE
        if (DeviceUi.isTvUi(this) && playerView.visibility == View.VISIBLE) {
            trailerHeader.visibility = View.GONE
            enterImmersiveMode()
        }
    }

    private fun showFailed() {
        cancelLoadTimeout()
        releasePlayer()
        playerView.visibility = View.GONE
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        btnRetry.visibility = View.VISIBLE
        trailerHeader.visibility = View.VISIBLE
        btnBack.requestFocus()
    }

    private fun releasePlayer() {
        exoPlayer?.release()
        exoPlayer = null
        playerView.player = null
    }

    private fun scheduleLoadTimeout() {
        cancelLoadTimeout()
        handler.postDelayed(timeoutRunnable, LOAD_TIMEOUT_MS)
    }

    private fun cancelLoadTimeout() {
        handler.removeCallbacks(timeoutRunnable)
    }

    private fun enterImmersiveMode() {
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            )
    }

    override fun onStop() {
        exoPlayer?.pause()
        super.onStop()
    }

    override fun onDestroy() {
        cancelLoadTimeout()
        releasePlayer()
        super.onDestroy()
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val EXTRA_IS_SERIES = "trailer_is_series"
        private const val EXTRA_RELEASE_DATE = "trailer_release_date"
        private const val EXTRA_TMDB_ID = "trailer_tmdb_id"
        private const val LOAD_TIMEOUT_MS = 18_000L

        fun intent(
            context: android.content.Context,
            url: String,
            title: String = "",
            isSeries: Boolean = false,
            releaseDate: String = "",
            tmdbId: Int = 0,
        ) = android.content.Intent(context, TrailerActivity::class.java)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_IS_SERIES, isSeries)
            .putExtra(EXTRA_RELEASE_DATE, releaseDate)
            .putExtra(EXTRA_TMDB_ID, tmdbId)
    }
}

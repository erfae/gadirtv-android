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
import com.gadir.tv.util.TrailerSearch
import com.gadir.tv.util.TrailerSource
import com.gadir.tv.util.TrailerStreamResolver
import com.gadir.tv.util.VimeoStreamResolver
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Tráilers in-app con ExoPlayer. Usa IDs YouTube/TMDB pero NUNCA abre la app YouTube. */
class TrailerActivity : BaseLocaleActivity() {
    private lateinit var playerView: PlayerView
    private lateinit var statusView: TextView
    private lateinit var trailerHeader: View
    private lateinit var btnBack: TextView
    private lateinit var btnRetry: TextView
    private lateinit var trailerEndOverlay: View
    private lateinit var btnTrailerReplay: TextView
    private lateinit var btnTrailerExit: TextView
    private var exoPlayer: ExoPlayer? = null
    private var playbackStarted = false
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { onLoadTimeout() }

    private var sources: List<TrailerSource> = emptyList()
    private var sourceIndex = 0
    private var remoteLookupStarted = false
    private var playbackStartedOnce = false
    private var isSeriesContent = false
    private var releaseDateHint = ""
    private var tmdbContentId = 0
    private var contentTitle = ""
    private var lastPlayableUrl = ""
    private var endMenuVisible = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        enterImmersiveMode()

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        contentTitle = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        isSeriesContent = intent.getBooleanExtra(EXTRA_IS_SERIES, false)
        releaseDateHint = intent.getStringExtra(EXTRA_RELEASE_DATE).orEmpty()
        tmdbContentId = intent.getIntExtra(EXTRA_TMDB_ID, 0)
        findViewById<TextView>(R.id.trailerTitle).text = contentTitle
        statusView = findViewById(R.id.trailerStatus)
        btnBack = findViewById(R.id.btnTrailerBack)
        trailerHeader = findViewById(R.id.trailerHeader)
        btnRetry = findViewById(R.id.btnTrailerRetry)
        trailerEndOverlay = findViewById(R.id.trailerEndOverlay)
        btnTrailerReplay = findViewById(R.id.btnTrailerReplay)
        btnTrailerExit = findViewById(R.id.btnTrailerExit)
        playerView = findViewById(R.id.trailerPlayerView)
        findViewById<View>(R.id.trailerWebView).visibility = View.GONE

        sources = TrailerResolver.resolveAll(rawUrl, contentTitle)

        btnBack.setOnClickListener { closeTrailer() }
        btnRetry.setOnClickListener { retryPlayback() }
        btnTrailerReplay.setOnClickListener { replayTrailer() }
        btnTrailerExit.setOnClickListener { closeTrailer() }
        btnRetry.visibility = View.GONE
        trailerEndOverlay.visibility = View.GONE
        btnBack.requestFocus()

        if (sources.isNotEmpty()) {
            startCurrentSource()
        }
        lookupRemoteTrailers()
    }

    private fun lookupRemoteTrailers() {
        if (remoteLookupStarted) return
        remoteLookupStarted = true
        lifecycleScope.launch {
            val remoteSources = withContext(Dispatchers.IO) {
                buildList {
                    if (TmdbApi.isConfigured() && contentTitle.isNotBlank()) {
                        val tmdb = TmdbApi.fetchTrailer(
                            title = contentTitle,
                            releaseDate = releaseDateHint,
                            isSeries = isSeriesContent,
                            tmdbId = tmdbContentId.takeIf { it > 0 },
                        )
                        tmdb?.let { addAll(TrailerResolver.resolveFromTmdb(it.site, it.key)) }
                    }
                    if (contentTitle.isNotBlank()) {
                        TrailerSearch.findFallbackSource(contentTitle)?.let { add(it) }
                    }
                }
            }
            if (isFinishing) return@launch
            if (remoteSources.isEmpty()) {
                if (sources.isEmpty() && !playbackStartedOnce) showFailed()
                return@launch
            }
            val hadSources = sources.isNotEmpty()
            sources = mergeSources(remoteSources, sources)
            if (!hadSources && !playbackStartedOnce) {
                sourceIndex = 0
                startCurrentSource()
            }
        }
    }

    private fun closeTrailer() {
        releasePlayer()
        finish()
    }

    override fun onBackPressed() {
        if (endMenuVisible) {
            closeTrailer()
            return
        }
        closeTrailer()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN && event.keyCode == KeyEvent.KEYCODE_BACK) {
            if (endMenuVisible) {
                closeTrailer()
                return true
            }
            closeTrailer()
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    private fun mergeSources(vararg lists: List<TrailerSource>): List<TrailerSource> {
        val merged = LinkedHashSet<TrailerSource>()
        lists.forEach { merged.addAll(it) }
        return merged.toList()
    }

    private fun retryPlayback() {
        hideTrailerEndMenu()
        sourceIndex = 0
        playbackStartedOnce = false
        lastPlayableUrl = ""
        releasePlayer()
        startCurrentSource()
    }

    private fun replayTrailer() {
        hideTrailerEndMenu()
        val player = exoPlayer
        if (player != null) {
            player.seekTo(0)
            player.playWhenReady = true
            playbackStarted = true
            playerView.requestFocus()
            return
        }
        if (lastPlayableUrl.isNotBlank()) {
            playDirectVideo(lastPlayableUrl)
            return
        }
        retryPlayback()
    }

    private fun showTrailerEndMenu() {
        endMenuVisible = true
        exoPlayer?.pause()
        playerView.useController = false
        trailerEndOverlay.visibility = View.VISIBLE
        btnTrailerReplay.requestFocus()
    }

    private fun hideTrailerEndMenu() {
        endMenuVisible = false
        trailerEndOverlay.visibility = View.GONE
    }

    private fun startCurrentSource() {
        if (sourceIndex >= sources.size) {
            showFailed()
            return
        }
        playbackStarted = false
        hideTrailerEndMenu()
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
        lastPlayableUrl = url
        hideTrailerEndMenu()
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
                        showTrailerEndMenu()
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
        playerView.requestFocus()
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
        trailerHeader.visibility = View.GONE
        enterImmersiveMode()
    }

    private fun showFailed() {
        cancelLoadTimeout()
        hideTrailerEndMenu()
        releasePlayer()
        playerView.visibility = View.GONE
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        btnRetry.visibility = View.VISIBLE
        trailerHeader.visibility = View.VISIBLE
        btnBack.requestFocus()
    }

    private fun releasePlayer() {
        exoPlayer?.let { player ->
            player.playWhenReady = false
            player.stop()
            player.release()
        }
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

    override fun onPause() {
        if (isFinishing) {
            releasePlayer()
        } else {
            exoPlayer?.pause()
        }
        super.onPause()
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

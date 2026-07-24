package com.gadir.tv.ui.player

import android.annotation.SuppressLint
import android.graphics.Color
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.view.ViewGroup
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.FrameLayout
import android.widget.TextView
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import com.gadir.tv.R
import com.gadir.tv.data.TmdbApi
import com.gadir.tv.player.PlayerFactory
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.MetaExtractor
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.util.TrailerStreamResolver
import com.gadir.tv.util.TrailerResolver
import com.gadir.tv.util.TrailerSource
import com.gadir.tv.util.YoutubeTrailerHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class TrailerActivity : BaseLocaleActivity() {
    private lateinit var webView: WebView
    private lateinit var playerView: PlayerView
    private lateinit var statusView: TextView
    private lateinit var trailerHeader: View
    private lateinit var btnBack: TextView
    private lateinit var btnRetry: TextView
    private var exoPlayer: ExoPlayer? = null
    private var customView: View? = null
    private var customCallback: WebChromeClient.CustomViewCallback? = null
    private var playbackStarted = false
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { onLoadTimeout() }

    private var sources: List<TrailerSource> = emptyList()
    private var sourceIndex = 0
    private var youtubeStep = 0
    private var currentYoutubeId: String? = null
    private var youtubeStreamTried = false
    private var tmdbLookupStarted = false
    private var isSeriesContent = false
    private var releaseDateHint = ""

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        enterImmersiveMode()

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        isSeriesContent = intent.getBooleanExtra(EXTRA_IS_SERIES, false)
        releaseDateHint = intent.getStringExtra(EXTRA_RELEASE_DATE).orEmpty()
        findViewById<TextView>(R.id.trailerTitle).text = title
        statusView = findViewById(R.id.trailerStatus)
        btnBack = findViewById(R.id.btnTrailerBack)
        trailerHeader = findViewById(R.id.trailerHeader)
        btnRetry = findViewById(R.id.btnTrailerRetry)
        playerView = findViewById(R.id.trailerPlayerView)
        webView = findViewById(R.id.trailerWebView)

        sources = TrailerResolver.resolveAll(rawUrl, title)

        configureWebView(webView)

        btnBack.setOnClickListener { finish() }
        btnRetry.setOnClickListener { retryPlayback() }
        btnRetry.visibility = View.GONE
        btnBack.requestFocus()

        if (sources.isEmpty()) {
            statusView.visibility = View.VISIBLE
            statusView.text = getString(R.string.trailer_loading)
            lookupTmdbTrailer(title)
            return
        }

        if (DeviceUi.isTvUi(this)) {
            // On TV prefer TMDB + direct ExoPlayer stream; panel WebView embeds crash after a while.
            lookupTmdbTrailer(title, preferFirst = true)
        } else {
            lookupTmdbTrailer(title)
        }
        startCurrentSource()
    }

    private fun lookupTmdbTrailer(title: String, preferFirst: Boolean = false) {
        if (title.isBlank() || tmdbLookupStarted || !TmdbApi.isConfigured()) return
        tmdbLookupStarted = true
        lifecycleScope.launch {
            val lookupTitle = findViewById<TextView>(R.id.trailerTitle).text.toString()
            val youtubeId = withContext(Dispatchers.IO) {
                TmdbApi.trailerYoutubeId(
                    title = lookupTitle,
                    releaseDate = releaseDateHint,
                    isSeries = isSeriesContent,
                )
            }
            if (isFinishing) return@launch
            if (youtubeId.isNullOrBlank()) {
                if (sources.isEmpty()) showFailed()
                return@launch
            }
            if (sources.any { it is TrailerSource.Youtube && it.videoId == youtubeId }) return@launch
            val tmdbSource = TrailerSource.Youtube(youtubeId)
            sources = if (preferFirst) {
                listOf(tmdbSource)
            } else {
                listOf(tmdbSource) + sources
            }
            if (!playbackStarted) {
                sourceIndex = 0
                youtubeStep = 0
                youtubeStreamTried = false
                startCurrentSource()
            }
        }
    }

    override fun onBackPressed() {
        if (hideFullscreenCustomView()) return
        finish()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN && event.keyCode == KeyEvent.KEYCODE_BACK) {
            if (hideFullscreenCustomView()) return true
            finish()
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun configureWebView(view: WebView) {
        view.setBackgroundColor(Color.BLACK)
        view.isFocusable = false
        view.isFocusableInTouchMode = false
        view.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            mediaPlaybackRequiresUserGesture = false
            javaScriptCanOpenWindowsAutomatically = false
            setSupportMultipleWindows(false)
            loadWithOverviewMode = true
            useWideViewPort = true
            userAgentString = EMBED_USER_AGENT
        }
        CookieManager.getInstance().apply {
            setAcceptCookie(true)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                setAcceptThirdPartyCookies(view, true)
            }
        }
        view.addJavascriptInterface(TrailerBridge(), "TrailerBridge")
        view.webChromeClient = object : WebChromeClient() {
            override fun onShowCustomView(customized: View, callback: CustomViewCallback) {
                if (customView != null) {
                    callback.onCustomViewHidden()
                    return
                }
                markPlaybackStarted()
                customView = customized
                customCallback = callback
                val decor = window.decorView as FrameLayout
                decor.addView(
                    customized,
                    FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT,
                    ),
                )
                webView.visibility = View.GONE
                enterImmersiveMode()
            }

            override fun onHideCustomView() {
                customView?.let { (window.decorView as FrameLayout).removeView(it) }
                customView = null
                customCallback?.onCustomViewHidden()
                customCallback = null
                webView.visibility = View.VISIBLE
                btnBack.requestFocus()
            }
        }
        view.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(v: WebView, request: WebResourceRequest): Boolean {
                return blockNavigation(request.url?.toString().orEmpty())
            }

            @Deprecated("Deprecated in Java")
            override fun shouldOverrideUrlLoading(v: WebView, url: String): Boolean {
                return blockNavigation(url)
            }

            override fun onPageFinished(v: WebView?, url: String?) {
                cancelLoadTimeout()
                if (!playbackStarted) {
                    statusView.visibility = View.GONE
                }
            }

            override fun onReceivedError(
                v: WebView,
                request: WebResourceRequest,
                error: android.webkit.WebResourceError,
            ) {
                if (!request.isForMainFrame) return
                advancePlayback()
            }

            override fun onRenderProcessGone(v: WebView, detail: android.webkit.RenderProcessGoneDetail): Boolean {
                // Android requires this to be handled (API 26+): if the sandboxed WebView
                // renderer crashes or is killed under memory pressure and no app callback
                // handles it, the OS kills the WHOLE app. Recreate the WebView (the crashed
                // one can never be reused) — then either close (if the trailer was already
                // playing, same as reaching the end) or move on to the next source (if it
                // crashed before ever starting).
                val wasPlaying = playbackStarted
                recreateWebView()
                if (wasPlaying) {
                    finish()
                } else {
                    advancePlayback()
                }
                return true
            }
        }
    }

    /** Swaps in a brand-new WebView after the renderer process died — the old instance is unusable. */
    private fun recreateWebView() {
        val old = webView
        val parent = old.parent as? ViewGroup ?: return
        val index = parent.indexOfChild(old)
        val params = old.layoutParams
        val wasVisible = old.visibility
        parent.removeView(old)
        try {
            old.destroy()
        } catch (_: Throwable) {
        }
        val fresh = WebView(this)
        fresh.id = old.id
        fresh.visibility = wasVisible
        configureWebView(fresh)
        webView = fresh
        parent.addView(fresh, index, params)
    }

    private fun retryPlayback() {
        sourceIndex = 0
        youtubeStep = 0
        youtubeStreamTried = false
        currentYoutubeId = null
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

        when (val source = sources[sourceIndex]) {
            is TrailerSource.DirectVideo -> playDirectVideo(source.url)
            is TrailerSource.Youtube -> playYoutube(source.videoId)
            is TrailerSource.ExternalLink -> playExternal(source.url)
            is TrailerSource.WebPage -> playWebPage(source.url)
        }
    }

    private fun playDirectVideo(url: String) {
        hideWebView()
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
            player.setMediaItem(MediaItem.fromUri(Uri.parse(url)))
            player.prepare()
            player.playWhenReady = true
        }
        enterImmersiveMode()
        if (DeviceUi.isTvUi(this)) {
            playerView.post { playerView.requestFocus() }
        }
    }

    private fun playYoutube(videoId: String) {
        currentYoutubeId = videoId
        if (!youtubeStreamTried) {
            youtubeStreamTried = true
            lifecycleScope.launch {
                val direct = withContext(Dispatchers.IO) {
                    TrailerStreamResolver.directPlayUrl(videoId)
                }
                if (isFinishing) return@launch
                if (direct != null) {
                    playDirectVideo(direct)
                } else if (DeviceUi.isTvUi(this@TrailerActivity)) {
                    advancePlayback()
                } else {
                    playYoutubeEmbed(videoId)
                }
            }
            return
        }
        if (DeviceUi.isTvUi(this)) {
            advancePlayback()
            return
        }
        playYoutubeEmbed(videoId)
    }

    private fun playYoutubeEmbed(videoId: String) {
        showWebView()
        val origin = "https://www.youtube.com"
        when (youtubeStep) {
            // Tried first: uses the YouTube IFrame Player API, which is the only variant
            // that reports playback state back to us — lets us detect when the trailer
            // actually ends and close automatically instead of leaving YouTube's own
            // "up next"/recommendations screen showing inside the WebView.
            0 -> webView.loadDataWithBaseURL(
                "https://www.youtube-nocookie.com",
                YoutubeTrailerHelper.iframeApiHtml(videoId, "https://www.youtube-nocookie.com", origin),
                "text/html",
                "UTF-8",
                null,
            )
            1 -> webView.loadDataWithBaseURL(
                origin,
                YoutubeTrailerHelper.iframeApiHtml(videoId, origin, origin),
                "text/html",
                "UTF-8",
                null,
            )
            2 -> webView.loadUrl(
                YoutubeTrailerHelper.directEmbedUrl(videoId, origin),
                YoutubeTrailerHelper.embedHeaders(),
            )
            3 -> webView.loadUrl(YoutubeTrailerHelper.pipedEmbedUrl(videoId))
            4, 5, 6 -> {
                val mirrors = YoutubeTrailerHelper.invidiousEmbedUrls(videoId)
                val index = youtubeStep - 4
                if (index < mirrors.size) {
                    webView.loadUrl(mirrors[index])
                } else {
                    advancePlayback()
                    return
                }
            }
            else -> {
                advancePlayback()
                return
            }
        }
        scheduleLoadTimeout()
    }

    private fun playExternal(url: String) {
        if (MetaExtractor.isDirectVideoUrl(url)) {
            playDirectVideo(url)
            return
        }
        YoutubeTrailerHelper.vimeoEmbedUrl(url)?.let {
            loadWebEmbed(it)
            return
        }
        YoutubeTrailerHelper.dailymotionEmbedUrl(url)?.let {
            loadWebEmbed(it)
            return
        }
        YoutubeTrailerHelper.extractId(url)?.let {
            currentYoutubeId = it
            youtubeStep = 0
            playYoutube(it)
            return
        }
        loadWebEmbed(url)
    }

    private fun playWebPage(url: String) {
        if (MetaExtractor.isDirectVideoUrl(url)) {
            playDirectVideo(url)
            return
        }
        YoutubeTrailerHelper.extractId(url)?.let {
            currentYoutubeId = it
            youtubeStep = 0
            playYoutube(it)
            return
        }
        YoutubeTrailerHelper.vimeoEmbedUrl(url)?.let {
            loadWebEmbed(it)
            return
        }
        loadWebEmbed(url)
    }

    private fun loadWebEmbed(url: String) {
        showWebView()
        if (YoutubeTrailerHelper.isAllowedEmbedUrl(url)) {
            webView.loadUrl(url)
        } else {
            advancePlayback()
            return
        }
        scheduleLoadTimeout()
    }

    private fun advancePlayback() {
        if (playbackStarted) return
        cancelLoadTimeout()
        releasePlayer()

        val current = sources.getOrNull(sourceIndex)
        if (current is TrailerSource.Youtube || currentYoutubeId != null) {
            youtubeStep++
            if (youtubeStep <= YOUTUBE_STEPS_LAST) {
                val id = currentYoutubeId
                    ?: (current as? TrailerSource.Youtube)?.videoId
                if (id != null) {
                    playYoutube(id)
                    return
                }
            }
        }

        sourceIndex++
        youtubeStep = 0
        currentYoutubeId = null
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
        showWebView()
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        btnRetry.visibility = View.VISIBLE
        btnBack.requestFocus()
    }

    private fun showWebView() {
        playerView.visibility = View.GONE
        webView.visibility = View.VISIBLE
    }

    private fun hideWebView() {
        webView.stopLoading()
        webView.visibility = View.GONE
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

    private fun blockNavigation(url: String): Boolean {
        if (url.isBlank()) return false
        if (isBlockedGuestUrl(url)) return true
        val lower = url.lowercase()
        if (lower.startsWith("intent:") ||
            lower.startsWith("market:") ||
            lower.contains("vnd.youtube:") ||
            lower.contains("youtube://")
        ) {
            return true
        }
        if (YoutubeTrailerHelper.isAllowedEmbedUrl(url)) return false
        return lower.contains("youtube.com/watch") ||
            lower.contains("youtu.be/") ||
            lower.contains("accounts.google.com") ||
            lower.contains("play.google.com/store")
    }

    private fun hideFullscreenCustomView(): Boolean {
        if (customView == null) return false
        customView?.let { (window.decorView as FrameLayout).removeView(it) }
        customView = null
        customCallback?.onCustomViewHidden()
        customCallback = null
        webView.visibility = View.VISIBLE
        btnBack.requestFocus()
        return true
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

    private fun isBlockedGuestUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains("accounts.google.com") ||
            lower.contains("accounts.youtube.com") ||
            lower.contains("servicelogin") ||
            lower.contains("addaccount")
    }

    override fun onStop() {
        exoPlayer?.pause()
        super.onStop()
    }

    override fun onDestroy() {
        cancelLoadTimeout()
        releasePlayer()
        if (::webView.isInitialized) {
            webView.removeJavascriptInterface("TrailerBridge")
            webView.stopLoading()
            webView.destroy()
        }
        super.onDestroy()
    }

    private inner class TrailerBridge {
        @JavascriptInterface
        fun onPlaying() {
            runOnUiThread { markPlaybackStarted() }
        }

        @JavascriptInterface
        fun onEnded() {
            runOnUiThread { finish() }
        }

        @JavascriptInterface
        fun onPlayerError(code: Int) {
            if (code == 2 || code == 5 || code == 100 || code == 101 || code == 150 || code == 151 || code == 153) {
                runOnUiThread { advancePlayback() }
            }
        }
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val EXTRA_IS_SERIES = "trailer_is_series"
        private const val EXTRA_RELEASE_DATE = "trailer_release_date"
        private const val LOAD_TIMEOUT_MS = 18_000L
        private const val YOUTUBE_STEPS_LAST = 6
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(
            context: android.content.Context,
            url: String,
            title: String = "",
            isSeries: Boolean = false,
            releaseDate: String = "",
        ) = android.content.Intent(context, TrailerActivity::class.java)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_IS_SERIES, isSeries)
            .putExtra(EXTRA_RELEASE_DATE, releaseDate)
    }
}

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

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        enterImmersiveMode()

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        findViewById<TextView>(R.id.trailerTitle).text = title
        statusView = findViewById(R.id.trailerStatus)
        btnBack = findViewById(R.id.btnTrailerBack)
        trailerHeader = findViewById(R.id.trailerHeader)
        btnRetry = findViewById(R.id.btnTrailerRetry)
        playerView = findViewById(R.id.trailerPlayerView)
        webView = findViewById(R.id.trailerWebView)

        sources = TrailerResolver.resolveAll(rawUrl, title)
        if (sources.isEmpty()) {
            showFailed()
            return
        }

        webView.setBackgroundColor(Color.BLACK)
        webView.isFocusable = false
        webView.isFocusableInTouchMode = false
        webView.settings.apply {
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
                setAcceptThirdPartyCookies(webView, true)
            }
        }
        webView.addJavascriptInterface(TrailerBridge(), "TrailerBridge")
        webView.webChromeClient = object : WebChromeClient() {
            override fun onShowCustomView(view: View, callback: CustomViewCallback) {
                if (customView != null) {
                    callback.onCustomViewHidden()
                    return
                }
                markPlaybackStarted()
                customView = view
                customCallback = callback
                val decor = window.decorView as FrameLayout
                decor.addView(
                    view,
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
        webView.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                return blockNavigation(request.url?.toString().orEmpty())
            }

            @Deprecated("Deprecated in Java")
            override fun shouldOverrideUrlLoading(view: WebView, url: String): Boolean {
                return blockNavigation(url)
            }

            override fun onPageFinished(view: WebView?, url: String?) {
                cancelLoadTimeout()
                if (!playbackStarted) {
                    statusView.visibility = View.GONE
                }
            }

            override fun onReceivedError(
                view: WebView,
                request: WebResourceRequest,
                error: android.webkit.WebResourceError,
            ) {
                if (!request.isForMainFrame) return
                advancePlayback()
            }
        }

        btnBack.setOnClickListener { finish() }
        btnRetry.setOnClickListener { retryPlayback() }
        btnRetry.visibility = View.GONE
        btnBack.requestFocus()
        startCurrentSource()
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
                } else {
                    playYoutubeEmbed(videoId)
                }
            }
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
        private const val LOAD_TIMEOUT_MS = 18_000L
        private const val YOUTUBE_STEPS_LAST = 6
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

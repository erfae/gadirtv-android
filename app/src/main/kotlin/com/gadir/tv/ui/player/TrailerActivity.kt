package com.gadir.tv.ui.player

import android.annotation.SuppressLint
import android.graphics.Color
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
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.YoutubeTrailerHelper

class TrailerActivity : BaseLocaleActivity() {
    private var videoId: String? = null
    private lateinit var webView: WebView
    private lateinit var statusView: TextView
    private lateinit var btnBack: TextView
    private lateinit var btnExternal: TextView
    private var customView: View? = null
    private var customCallback: WebChromeClient.CustomViewCallback? = null
    private var embedMode = EmbedMode.DIRECT_EMBED
    private var playbackStarted = false
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { onLoadTimeout() }

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
        btnExternal = findViewById(R.id.btnTrailerYoutube)

        videoId = YoutubeTrailerHelper.extractId(rawUrl)
            ?: MetaExtractor.normalizeTrailerUrl(rawUrl)?.let { YoutubeTrailerHelper.extractId(it) }

        webView = findViewById(R.id.trailerWebView)
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
                advanceEmbedMode()
            }
        }

        btnBack.setOnClickListener { finish() }
        btnExternal.setOnClickListener { openExternally() }
        btnExternal.visibility = View.GONE
        btnBack.requestFocus()
        startPlayback(rawUrl)
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

    private fun startPlayback(rawUrl: String) {
        playbackStarted = false
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_loading)
        scheduleLoadTimeout()

        val vimeo = YoutubeTrailerHelper.vimeoEmbedUrl(rawUrl)
        if (vimeo != null) {
            webView.loadUrl(vimeo)
            return
        }

        val id = videoId
        if (id != null) {
            loadYoutubeEmbed(id)
            return
        }

        val normalized = MetaExtractor.normalizeTrailerUrl(rawUrl)
        if (normalized != null && MetaExtractor.isDirectVideoUrl(normalized)) {
            showFailed()
            return
        }
        YoutubeTrailerHelper.extractId(normalized.orEmpty())?.let {
            videoId = it
            loadYoutubeEmbed(it)
            return
        }
        if (normalized != null) {
            webView.loadUrl(normalized)
            return
        }
        showFailed()
    }

    private fun loadYoutubeEmbed(id: String) {
        val origin = "https://www.youtube.com"
        when (embedMode) {
            EmbedMode.DIRECT_EMBED -> {
                webView.loadUrl(YoutubeTrailerHelper.directEmbedUrl(id, origin), YoutubeTrailerHelper.embedHeaders())
            }
            EmbedMode.PIPED -> {
                webView.loadUrl(YoutubeTrailerHelper.pipedEmbedUrl(id))
            }
            EmbedMode.NOCOOKIE -> {
                webView.loadDataWithBaseURL(
                    "https://www.youtube-nocookie.com",
                    YoutubeTrailerHelper.nocookieIframeHtml(id, origin),
                    "text/html",
                    "UTF-8",
                    null,
                )
            }
            EmbedMode.IFRAME_API -> {
                webView.loadDataWithBaseURL(
                    origin,
                    YoutubeTrailerHelper.iframeApiHtml(id, origin),
                    "text/html",
                    "UTF-8",
                    null,
                )
            }
        }
        scheduleLoadTimeout()
    }

    private fun advanceEmbedMode() {
        if (playbackStarted) return
        val id = videoId ?: run {
            showFailed()
            return
        }
        embedMode = when (embedMode) {
            EmbedMode.DIRECT_EMBED -> EmbedMode.PIPED
            EmbedMode.PIPED -> EmbedMode.NOCOOKIE
            EmbedMode.NOCOOKIE -> EmbedMode.IFRAME_API
            EmbedMode.IFRAME_API -> {
                showFailed()
                return
            }
        }
        loadYoutubeEmbed(id)
    }

    private fun onLoadTimeout() {
        if (playbackStarted) return
        advanceEmbedMode()
    }

    private fun markPlaybackStarted() {
        playbackStarted = true
        cancelLoadTimeout()
        statusView.visibility = View.GONE
        btnExternal.visibility = View.GONE
    }

    private fun showFailed() {
        cancelLoadTimeout()
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        btnExternal.visibility = View.VISIBLE
        btnBack.requestFocus()
    }

    private fun openExternally() {
        val id = videoId
        if (id != null && YoutubeTrailerHelper.openExternally(this, id)) {
            finish()
            return
        }
        Toast.makeText(this, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
    }

    private fun scheduleLoadTimeout() {
        cancelLoadTimeout()
        handler.postDelayed(timeoutRunnable, LOAD_TIMEOUT_MS)
    }

    private fun cancelLoadTimeout() {
        handler.removeCallbacks(timeoutRunnable)
    }

    private fun blockNavigation(url: String): Boolean {
        if (isBlockedGuestUrl(url)) return true
        val lower = url.lowercase()
        return lower.contains("youtube.com/watch") ||
            lower.contains("youtu.be/") ||
            lower.contains("vnd.youtube:")
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

    override fun onDestroy() {
        cancelLoadTimeout()
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
        fun onPlayerError(code: Int) {
            if (code == 150 || code == 151 || code == 153) {
                runOnUiThread { advanceEmbedMode() }
            }
        }
    }

    private enum class EmbedMode {
        DIRECT_EMBED,
        PIPED,
        NOCOOKIE,
        IFRAME_API,
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val LOAD_TIMEOUT_MS = 20_000L
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

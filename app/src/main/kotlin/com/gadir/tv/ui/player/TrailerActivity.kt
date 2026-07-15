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

/** Tráiler dentro de la app: BACK siempre vuelve a GadirTV (no abre YouTube automáticamente). */
class TrailerActivity : BaseLocaleActivity() {
    private var videoId: String? = null
    private lateinit var webView: WebView
    private lateinit var statusView: TextView
    private lateinit var btnBack: TextView
    private lateinit var btnYoutube: TextView
    private var customView: View? = null
    private var customCallback: WebChromeClient.CustomViewCallback? = null
    private var embedMode = EmbedMode.NOCOOKIE
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { onPlaybackTimeout() }

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
        btnYoutube = findViewById(R.id.btnTrailerYoutube)

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
        webView.webChromeClient = object : WebChromeClient() {
            override fun onShowCustomView(view: View, callback: CustomViewCallback) {
                if (customView != null) {
                    callback.onCustomViewHidden()
                    return
                }
                customView = view
                customCallback = callback
                statusView.visibility = View.GONE
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
                statusView.visibility = View.GONE
                schedulePlaybackTimeout()
            }

            override fun onReceivedError(
                view: WebView,
                request: WebResourceRequest,
                error: android.webkit.WebResourceError,
            ) {
                if (!request.isForMainFrame) return
                retryEmbed()
            }
        }

        btnBack.setOnClickListener { finish() }
        btnYoutube.setOnClickListener { openYoutubeExternally() }
        btnYoutube.visibility = View.GONE
        btnBack.requestFocus()
        startEmbed(rawUrl)
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

    private fun startEmbed(rawUrl: String) {
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_loading)
        schedulePlaybackTimeout()

        val id = videoId
        if (id != null) {
            loadYoutubeEmbed(id)
            return
        }
        val normalized = MetaExtractor.normalizeTrailerUrl(rawUrl)
        if (normalized == null || MetaExtractor.isDirectVideoUrl(normalized)) {
            showFailed()
            return
        }
        YoutubeTrailerHelper.extractId(normalized)?.let {
            videoId = it
            loadYoutubeEmbed(it)
            return
        }
        webView.loadUrl(normalized)
    }

    private fun loadYoutubeEmbed(id: String) {
        val origin = "https://www.youtube.com"
        when (embedMode) {
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
    }

    private fun retryEmbed() {
        val id = videoId ?: run {
            showFailed()
            return
        }
        embedMode = when (embedMode) {
            EmbedMode.NOCOOKIE -> EmbedMode.IFRAME_API
            EmbedMode.IFRAME_API -> {
                showFailed()
                return
            }
        }
        loadYoutubeEmbed(id)
        schedulePlaybackTimeout()
    }

    private fun onPlaybackTimeout() {
        if (embedMode == EmbedMode.NOCOOKIE) {
            embedMode = EmbedMode.IFRAME_API
            videoId?.let { loadYoutubeEmbed(it) }
            schedulePlaybackTimeout()
            return
        }
        showFailed()
    }

    private fun showFailed() {
        handler.removeCallbacks(timeoutRunnable)
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        if (videoId != null) {
            btnYoutube.visibility = View.VISIBLE
        }
        btnBack.requestFocus()
    }

    private fun openYoutubeExternally() {
        val id = videoId ?: return
        if (YoutubeTrailerHelper.openInYoutubeApp(this, id)) {
            finish()
            return
        }
        Toast.makeText(this, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
    }

    private fun schedulePlaybackTimeout() {
        handler.removeCallbacks(timeoutRunnable)
        handler.postDelayed(timeoutRunnable, PLAYBACK_TIMEOUT_MS)
    }

    private fun blockNavigation(url: String): Boolean {
        if (isBlockedGuestUrl(url)) return true
        val lower = url.lowercase()
        if (lower.contains("youtube.com/watch") || lower.contains("youtu.be/")) return true
        if (lower.contains("vnd.youtube:")) return true
        return false
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
        handler.removeCallbacks(timeoutRunnable)
        if (::webView.isInitialized) {
            webView.stopLoading()
            webView.destroy()
        }
        super.onDestroy()
    }

    private enum class EmbedMode {
        NOCOOKIE,
        IFRAME_API,
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val PLAYBACK_TIMEOUT_MS = 15_000L
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

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
    private var guestMode = GuestMode.IFRAME_API
    private var videoId: String? = null
    private lateinit var webView: WebView
    private lateinit var header: View
    private var customView: View? = null
    private var customCallback: WebChromeClient.CustomViewCallback? = null
    private var headerVisible = false
    private val hideHeaderHandler = Handler(Looper.getMainLooper())
    private val hideHeaderRunnable = Runnable { hideHeader() }

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        enterImmersiveMode()

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        header = findViewById(R.id.trailerHeader)
        findViewById<TextView>(R.id.trailerTitle).text = title

        videoId = YoutubeTrailerHelper.extractId(rawUrl)
        webView = findViewById(R.id.trailerWebView)
        webView.setBackgroundColor(Color.BLACK)
        webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            databaseEnabled = true
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
                hideHeader(immediate = true)
                enterImmersiveMode()
            }

            override fun onHideCustomView() {
                customView?.let { (window.decorView as FrameLayout).removeView(it) }
                customView = null
                customCallback?.onCustomViewHidden()
                customCallback = null
                webView.visibility = View.VISIBLE
                showHeaderBriefly()
            }
        }
        webView.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                val url = request.url?.toString().orEmpty()
                if (isBlockedGuestUrl(url)) return true
                return false
            }

            @Deprecated("Deprecated in Java")
            override fun shouldOverrideUrlLoading(view: WebView, url: String): Boolean {
                if (isBlockedGuestUrl(url)) return true
                return false
            }

            override fun onReceivedError(
                view: WebView,
                request: WebResourceRequest,
                error: android.webkit.WebResourceError,
            ) {
                if (!request.isForMainFrame) return
                retryGuestPlayback(view)
            }
        }

        if (videoId != null) {
            loadGuestYoutube(webView, videoId!!)
        } else {
            val normalized = MetaExtractor.normalizeTrailerUrl(rawUrl)
            if (normalized == null) {
                finish()
                return
            }
            webView.loadUrl(normalized)
        }

        findViewById<TextView>(R.id.btnTrailerBack).setOnClickListener { finish() }
        hideHeader(immediate = true)
        webView.requestFocus()
    }

    override fun onBackPressed() {
        if (hideFullscreenCustomView()) return
        if (!headerVisible) {
            showHeaderBriefly()
            findViewById<TextView>(R.id.btnTrailerBack).requestFocus()
            return
        }
        super.onBackPressed()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_BACK -> {
                    if (hideFullscreenCustomView()) return true
                    if (!headerVisible) {
                        showHeaderBriefly()
                        findViewById<TextView>(R.id.btnTrailerBack).requestFocus()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_MENU -> {
                    if (!headerVisible) {
                        showHeaderBriefly()
                        return true
                    }
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    private fun hideFullscreenCustomView(): Boolean {
        if (customView == null) return false
        customView?.let { (window.decorView as FrameLayout).removeView(it) }
        customView = null
        customCallback?.onCustomViewHidden()
        customCallback = null
        webView.visibility = View.VISIBLE
        showHeaderBriefly()
        return true
    }

    private fun loadGuestYoutube(webView: WebView, id: String) {
        val origin = "https://www.youtube.com"
        when (guestMode) {
            GuestMode.IFRAME_API -> {
                webView.loadDataWithBaseURL(
                    origin,
                    YoutubeTrailerHelper.iframeApiHtml(id, origin),
                    "text/html",
                    "UTF-8",
                    null,
                )
            }
            GuestMode.NOCOOKIE_EMBED -> {
                webView.loadDataWithBaseURL(
                    "https://www.youtube-nocookie.com",
                    YoutubeTrailerHelper.nocookieIframeHtml(id, origin),
                    "text/html",
                    "UTF-8",
                    null,
                )
            }
            GuestMode.MOBILE -> {
                webView.loadUrl("https://m.youtube.com/watch?v=$id")
            }
        }
    }

    private fun retryGuestPlayback(webView: WebView) {
        val id = videoId ?: return
        guestMode = when (guestMode) {
            GuestMode.IFRAME_API -> GuestMode.NOCOOKIE_EMBED
            GuestMode.NOCOOKIE_EMBED -> GuestMode.MOBILE
            GuestMode.MOBILE -> {
                tryYoutubeAppFallback(id)
                return
            }
        }
        loadGuestYoutube(webView, id)
    }

    private fun onYoutubePlayerError(code: Int) {
        if (code == 150 || code == 151 || code == 153) {
            runOnUiThread {
                val id = videoId ?: return@runOnUiThread
                if (guestMode != GuestMode.MOBILE) {
                    guestMode = when (guestMode) {
                        GuestMode.IFRAME_API -> GuestMode.NOCOOKIE_EMBED
                        else -> GuestMode.MOBILE
                    }
                    loadGuestYoutube(webView, id)
                } else {
                    tryYoutubeAppFallback(id)
                }
            }
        }
    }

    private fun tryYoutubeAppFallback(videoId: String) {
        if (YoutubeTrailerHelper.openInYoutubeApp(this, videoId)) {
            finish()
            return
        }
        Toast.makeText(this, R.string.trailer_playback_failed, Toast.LENGTH_LONG).show()
    }

    private fun showHeaderBriefly() {
        headerVisible = true
        header.visibility = View.VISIBLE
        hideHeaderHandler.removeCallbacks(hideHeaderRunnable)
        hideHeaderHandler.postDelayed(hideHeaderRunnable, HEADER_HIDE_MS)
    }

    private fun hideHeader(immediate: Boolean = false) {
        hideHeaderHandler.removeCallbacks(hideHeaderRunnable)
        if (immediate) {
            headerVisible = false
            header.visibility = View.GONE
        } else {
            hideHeaderRunnable.run()
        }
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
        hideHeaderHandler.removeCallbacks(hideHeaderRunnable)
        webView.removeJavascriptInterface("TrailerBridge")
        webView.destroy()
        super.onDestroy()
    }

    private inner class TrailerBridge {
        @JavascriptInterface
        fun onReady() = Unit

        @JavascriptInterface
        fun onPlaying() {
            runOnUiThread { hideHeader(immediate = true) }
        }

        @JavascriptInterface
        fun onPlayerError(code: Int) {
            onYoutubePlayerError(code)
        }
    }

    private enum class GuestMode {
        IFRAME_API,
        NOCOOKIE_EMBED,
        MOBILE,
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val HEADER_HIDE_MS = 4_000L
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

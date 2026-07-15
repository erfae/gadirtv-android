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

/** Último recurso para tráiler: WebView con salida inmediata por BACK (no bloquea el mando). */
class TrailerActivity : BaseLocaleActivity() {
    private var videoId: String? = null
    private lateinit var webView: WebView
    private lateinit var statusView: TextView
    private lateinit var btnBack: TextView
    private var customView: View? = null
    private var customCallback: WebChromeClient.CustomViewCallback? = null
    private var embedAttempt = 0
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

        videoId = YoutubeTrailerHelper.extractId(rawUrl)
        if (videoId != null && YoutubeTrailerHelper.openInYoutubeApp(this, videoId!!)) {
            finish()
            return
        }

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

            override fun onPageFinished(view: WebView?, url: String?) {
                statusView.visibility = View.GONE
                handler.removeCallbacks(timeoutRunnable)
                handler.postDelayed(timeoutRunnable, PLAYBACK_TIMEOUT_MS)
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
        if (event.action == KeyEvent.ACTION_DOWN &&
            (event.keyCode == KeyEvent.KEYCODE_DPAD_CENTER || event.keyCode == KeyEvent.KEYCODE_ENTER)
        ) {
            if (btnBack.requestFocus()) return true
        }
        return super.dispatchKeyEvent(event)
    }

    private fun startEmbed(rawUrl: String) {
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_loading)
        handler.removeCallbacks(timeoutRunnable)
        handler.postDelayed(timeoutRunnable, PLAYBACK_TIMEOUT_MS)

        val id = videoId
        if (id != null) {
            loadYoutubeEmbed(id)
            return
        }
        val normalized = MetaExtractor.normalizeTrailerUrl(rawUrl)
        if (normalized == null) {
            showFailedAndExit()
            return
        }
        if (MetaExtractor.isDirectVideoUrl(normalized)) {
            showFailedAndExit()
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
        webView.loadDataWithBaseURL(
            "https://www.youtube-nocookie.com",
            YoutubeTrailerHelper.nocookieIframeHtml(id, origin),
            "text/html",
            "UTF-8",
            null,
        )
    }

    private fun retryEmbed() {
        val id = videoId
        if (id == null) {
            showFailedAndExit()
            return
        }
        embedAttempt += 1
        if (embedAttempt == 1) {
            loadYoutubeEmbed(id)
            return
        }
        if (YoutubeTrailerHelper.openInYoutubeApp(this, id)) {
            finish()
            return
        }
        showFailedAndExit()
    }

    private fun onPlaybackTimeout() {
        val id = videoId
        if (id != null && YoutubeTrailerHelper.openInYoutubeApp(this, id)) {
            finish()
            return
        }
        if (embedAttempt == 0 && id != null) {
            embedAttempt = 1
            loadYoutubeEmbed(id)
            handler.postDelayed(timeoutRunnable, PLAYBACK_TIMEOUT_MS)
            return
        }
        showFailedAndExit()
    }

    private fun showFailedAndExit() {
        handler.removeCallbacks(timeoutRunnable)
        Toast.makeText(this, R.string.trailer_playback_failed, Toast.LENGTH_LONG).show()
        statusView.visibility = View.VISIBLE
        statusView.text = getString(R.string.trailer_playback_failed)
        btnBack.requestFocus()
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

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val PLAYBACK_TIMEOUT_MS = 12_000L
        private const val EMBED_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; Android TV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

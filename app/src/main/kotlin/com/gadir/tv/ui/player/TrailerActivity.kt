package com.gadir.tv.ui.player

import android.annotation.SuppressLint
import android.os.Build
import android.os.Bundle
import android.view.View
import android.webkit.CookieManager
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.R
import com.gadir.tv.util.MetaExtractor

class TrailerActivity : BaseLocaleActivity() {
    private var guestMode = GuestMode.TV
    private var videoId: String? = null

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_trailer)
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            )

        val rawUrl = intent.getStringExtra(EXTRA_URL).orEmpty()
        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        findViewById<TextView>(R.id.trailerTitle).text = title

        videoId = extractYoutubeId(rawUrl)
        val webView = findViewById<WebView>(R.id.trailerWebView)
        webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            databaseEnabled = true
            mediaPlaybackRequiresUserGesture = false
            javaScriptCanOpenWindowsAutomatically = false
            setSupportMultipleWindows(false)
            userAgentString = TV_USER_AGENT
        }
        CookieManager.getInstance().apply {
            setAcceptCookie(true)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                setAcceptThirdPartyCookies(webView, true)
            }
        }
        webView.webChromeClient = WebChromeClient()
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
        findViewById<TextView>(R.id.btnTrailerBack).requestFocus()
    }

    private fun loadGuestYoutube(webView: WebView, id: String) {
        when (guestMode) {
            GuestMode.TV -> {
                webView.loadUrl("https://www.youtube.com/tv#/watch?v=$id&autoplay=1")
            }
            GuestMode.NOCOOKIE_EMBED -> {
                val html = """
                    <!DOCTYPE html>
                    <html>
                    <head>
                      <meta name="viewport" content="width=device-width, initial-scale=1">
                      <style>
                        html, body { margin:0; padding:0; background:#000; height:100%; overflow:hidden; }
                        iframe { position:absolute; top:0; left:0; width:100%; height:100%; border:0; }
                      </style>
                    </head>
                    <body>
                      <iframe
                        src="https://www.youtube-nocookie.com/embed/$id?autoplay=1&rel=0&playsinline=1&modestbranding=1&fs=1&iv_load_policy=3&controls=1"
                        allow="autoplay; encrypted-media; fullscreen"
                        allowfullscreen>
                      </iframe>
                    </body>
                    </html>
                """.trimIndent()
                webView.loadDataWithBaseURL(
                    "https://www.youtube-nocookie.com",
                    html,
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
            GuestMode.TV -> GuestMode.NOCOOKIE_EMBED
            GuestMode.NOCOOKIE_EMBED -> GuestMode.MOBILE
            GuestMode.MOBILE -> return
        }
        loadGuestYoutube(webView, id)
    }

    private fun isBlockedGuestUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains("accounts.google.com") ||
            lower.contains("servicelogin") ||
            lower.contains("switch_account") ||
            lower.contains("signin") ||
            lower.contains("oauth") ||
            lower.contains("addaccount")
    }

    private fun extractYoutubeId(url: String): String? {
        val patterns = listOf(
            Regex("(?:youtube\\.com/watch\\?v=|youtu\\.be/|youtube\\.com/embed/)([\\w-]{6,})"),
            Regex("^([\\w-]{11})$"),
        )
        for (pattern in patterns) {
            val match = pattern.find(url)
            if (match != null) return match.groupValues[1]
        }
        return null
    }

    private enum class GuestMode {
        TV,
        NOCOOKIE_EMBED,
        MOBILE,
    }

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"
        private const val TV_USER_AGENT =
            "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

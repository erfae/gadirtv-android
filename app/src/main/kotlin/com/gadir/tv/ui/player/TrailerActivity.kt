package com.gadir.tv.ui.player

import android.annotation.SuppressLint
import android.os.Bundle
import android.view.View
import android.webkit.WebChromeClient
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.gadir.tv.R
import com.gadir.tv.util.MetaExtractor

class TrailerActivity : AppCompatActivity() {
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

        val videoId = extractYoutubeId(rawUrl)
        val webView = findViewById<WebView>(R.id.trailerWebView)
        webView.settings.javaScriptEnabled = true
        webView.settings.domStorageEnabled = true
        webView.settings.mediaPlaybackRequiresUserGesture = false
        webView.settings.userAgentString =
            "Mozilla/5.0 (Linux; Android 10; TV) AppleWebKit/537.36 Chrome/120.0.0.0 Safari/537.36"
        webView.webChromeClient = WebChromeClient()
        webView.webViewClient = WebViewClient()

        if (videoId != null) {
            webView.loadUrl("https://www.youtube.com/embed/$videoId?autoplay=1&rel=0")
        } else {
            val normalized = MetaExtractor.normalizeTrailerUrl(rawUrl) ?: rawUrl
            webView.loadUrl(normalized)
        }

        findViewById<TextView>(R.id.btnTrailerBack).setOnClickListener { finish() }
        findViewById<TextView>(R.id.btnTrailerBack).requestFocus()
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

    companion object {
        private const val EXTRA_URL = "trailer_url"
        private const val EXTRA_TITLE = "trailer_title"

        fun intent(context: android.content.Context, url: String, title: String = "") =
            android.content.Intent(context, TrailerActivity::class.java)
                .putExtra(EXTRA_URL, url)
                .putExtra(EXTRA_TITLE, title)
    }
}

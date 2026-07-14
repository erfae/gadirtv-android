package com.gadir.tv.ui.player

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.util.VolumeHelper
import org.videolan.libvlc.LibVLC
import org.videolan.libvlc.Media
import org.videolan.libvlc.MediaPlayer
import org.videolan.libvlc.util.VLCVideoLayout

class VlcPlayerActivity : BaseLocaleActivity() {
    private var libVlc: LibVLC? = null
    private var mediaPlayer: MediaPlayer? = null
    private var overlaysVisible = false
    private val pendingUrls = ArrayDeque<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_vlc_player)
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            )

        val title = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        val url = intent.getStringExtra(EXTRA_URL).orEmpty()
        pendingUrls.add(url)
        intent.getStringArrayListExtra(EXTRA_ALTERNATE_URLS)?.forEach { alt ->
            if (alt.isNotBlank() && alt !in pendingUrls) pendingUrls.add(alt)
        }

        findViewById<TextView>(R.id.vlcTitle).text = title
        val overlay = findViewById<View>(R.id.vlcOverlay)
        overlay.visibility = View.GONE

        val options = ArrayList<String>()
        options.add("--http-user-agent=${PlaylistRepository.userAgent}")
        options.add("--network-caching=1200")
        options.add("--live-caching=1200")
        options.add("--gain=8")
        libVlc = LibVLC(this, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(findViewById<VLCVideoLayout>(R.id.vlcVideo), null, false, false)
            volume = 100
            setEventListener { event ->
                if (event.type == MediaPlayer.Event.EncounteredError) {
                    tryNextUrl()
                }
            }
        }
        playUrl(url)
        VolumeHelper.boostOnPlaybackStart(this)
    }

    private fun playUrl(url: String) {
        val vlc = libVlc ?: return
        val player = mediaPlayer ?: return
        val media = Media(vlc, Uri.parse(url))
        player.media = media
        media.release()
        player.volume = 100
        player.play()
    }

    private fun tryNextUrl(): Boolean {
        if (pendingUrls.size <= 1) return false
        pendingUrls.removeFirst()
        val next = pendingUrls.firstOrNull() ?: return false
        playUrl(next)
        return true
    }

    override fun onResume() {
        super.onResume()
        mediaPlayer?.play()
    }

    override fun onStop() {
        mediaPlayer?.pause()
        super.onStop()
    }

    override fun onDestroy() {
        mediaPlayer?.stop()
        mediaPlayer?.detachViews()
        mediaPlayer?.release()
        mediaPlayer = null
        libVlc?.release()
        libVlc = null
        super.onDestroy()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_MENU -> {
                    toggleOverlay()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    VolumeHelper.adjust(this, raise = false)
                    showOverlay()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    VolumeHelper.adjust(this, raise = true)
                    showOverlay()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    private fun toggleOverlay() {
        val overlay = findViewById<View>(R.id.vlcOverlay)
        overlaysVisible = !overlaysVisible
        overlay.visibility = if (overlaysVisible) View.VISIBLE else View.GONE
    }

    private fun showOverlay() {
        overlaysVisible = true
        findViewById<View>(R.id.vlcOverlay).visibility = View.VISIBLE
    }

    companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"
        private const val EXTRA_ALTERNATE_URLS = "alternate_urls"

        fun intent(
            context: Context,
            title: String,
            url: String,
            alternateUrls: List<String> = emptyList(),
        ): Intent = Intent(context, VlcPlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putStringArrayListExtra(EXTRA_ALTERNATE_URLS, ArrayList(alternateUrls))
    }
}

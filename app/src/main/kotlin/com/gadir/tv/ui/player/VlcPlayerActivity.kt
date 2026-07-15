package com.gadir.tv.ui.player

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.widget.ImageButton
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository
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
    private val hideHandler = Handler(Looper.getMainLooper())
    private val hideOverlaysRunnable = Runnable { hideOverlays() }

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
        findViewById<ImageButton>(R.id.btnFullscreen).visibility = View.GONE

        val settings = AppSettings(this)
        val bufferMs = settings.networkBufferMs
        val options = ArrayList<String>()
        options.add("--http-user-agent=${PlaylistRepository.userAgent}")
        options.add("--network-caching=$bufferMs")
        options.add("--live-caching=$bufferMs")
        options.add("--gain=2")
        options.add("--audio-resampler=soxr")
        libVlc = LibVLC(this, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(findViewById<VLCVideoLayout>(R.id.vlcVideo), null, false, false)
            volume = VLC_VOLUME
            setEventListener { event ->
                if (event.type == MediaPlayer.Event.EncounteredError) {
                    tryNextUrl()
                }
            }
        }
        playUrl(url)
        VolumeHelper.boostOnPlaybackStart(this)

        findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
            showOverlays()
        }
        findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
            showOverlays()
        }

        showOverlays()
    }

    private fun playUrl(url: String) {
        val vlc = libVlc ?: return
        val player = mediaPlayer ?: return
        val media = Media(vlc, Uri.parse(url))
        player.media = media
        media.release()
        player.volume = VLC_VOLUME
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
        mediaPlayer?.volume = VLC_VOLUME
        VolumeHelper.boostOnPlaybackStart(this)
    }

    override fun onStop() {
        mediaPlayer?.pause()
        super.onStop()
    }

    override fun onDestroy() {
        hideHandler.removeCallbacksAndMessages(null)
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
                    if (!overlaysVisible) {
                        showOverlays()
                        return true
                    }
                    scheduleHideOverlays()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    VolumeHelper.adjust(this, raise = false)
                    showOverlays()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    VolumeHelper.adjust(this, raise = true)
                    showOverlays()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    private fun showOverlays() {
        overlaysVisible = true
        findViewById<View>(R.id.vlcOverlay).visibility = View.VISIBLE
        findViewById<View>(R.id.vlcVolumeControls).visibility = View.VISIBLE
        scheduleHideOverlays()
    }

    private fun hideOverlays() {
        overlaysVisible = false
        findViewById<View>(R.id.vlcOverlay).visibility = View.GONE
        findViewById<View>(R.id.vlcVolumeControls).visibility = View.GONE
        hideHandler.removeCallbacks(hideOverlaysRunnable)
    }

    private fun scheduleHideOverlays() {
        hideHandler.removeCallbacks(hideOverlaysRunnable)
        hideHandler.postDelayed(hideOverlaysRunnable, CONTROLS_HIDE_MS)
    }

    companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"
        private const val EXTRA_ALTERNATE_URLS = "alternate_urls"
        private const val VLC_VOLUME = 100
        private const val CONTROLS_HIDE_MS = 5_000L

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

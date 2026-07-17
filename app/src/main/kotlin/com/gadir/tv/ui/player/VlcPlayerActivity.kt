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
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.EpgEntry
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.util.VolumeHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
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
    private val api = XtreamApi()
    private lateinit var epgNowView: TextView
    private lateinit var epgNextView: TextView
    private var currentStreamId = 0
    private var currentEpgChannelId = ""
    private var isLivePlayback = false
    private var resumePositionMs = 0L
    private var resumeSeekPending = false

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
        epgNowView = findViewById(R.id.vlcEpgNow)
        epgNextView = findViewById(R.id.vlcEpgNext)
        findViewById<ImageButton>(R.id.btnFullscreen).visibility = View.GONE
        findViewById<ImageButton>(R.id.btnVlcBack).setOnClickListener { finish() }
        findViewById<org.videolan.libvlc.util.VLCVideoLayout>(R.id.vlcVideo).setOnClickListener {
            showOverlays()
        }
        currentStreamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        isLivePlayback = currentStreamId > 0
        resumePositionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L).coerceAtLeast(0L)
        resumeSeekPending = resumePositionMs > 0L && !isLivePlayback
        loadLiveEpg(currentStreamId, intent.getStringExtra(EXTRA_EPG_CHANNEL_ID).orEmpty())

        val settings = AppSettings(this)
        val bufferMs = settings.networkBufferMs
        val options = com.gadir.tv.player.VlcAudioOptions.baseOptions(bufferMs)
        libVlc = LibVLC(this, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(findViewById<VLCVideoLayout>(R.id.vlcVideo), null, false, false)
            volume = VLC_VOLUME
            setEventListener { event ->
                when (event.type) {
                    MediaPlayer.Event.EncounteredError -> tryNextUrl()
                    MediaPlayer.Event.Playing -> {
                        if (resumeSeekPending && resumePositionMs > 0L) {
                            mediaPlayer?.time = resumePositionMs
                            resumeSeekPending = false
                        }
                    }
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

    private fun loadLiveEpg(streamId: Int, epgChannelId: String = "") {
        if (streamId <= 0) {
            epgNowView.visibility = View.GONE
            epgNextView.visibility = View.GONE
            return
        }
        currentEpgChannelId = epgChannelId
        val profile = PlaylistRepository.profile ?: return
        epgNowView.text = getString(R.string.epg_loading)
        epgNowView.visibility = View.VISIBLE
        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpg(profile, streamId, epgChannelId = epgChannelId, limit = 4)
            }
            if (streamId != currentStreamId) return@launch
            applyLiveEpg(epg)
        }
    }

    private fun applyLiveEpg(epg: List<EpgEntry>) {
        if (epg.isEmpty()) {
            epgNowView.text = getString(R.string.epg_unavailable)
            epgNextView.visibility = View.GONE
            return
        }
        val now = System.currentTimeMillis() / 1000L
        val currentIndex = epg.indexOfFirst { entry ->
            entry.start > 0L && entry.end > 0L && now >= entry.start && now < entry.end
        }.takeIf { it >= 0 } ?: 0
        val current = epg[currentIndex]
        epgNowView.text = getString(R.string.epg_now) + ": " + current.title
        epgNowView.visibility = View.VISIBLE
        val next = epg.getOrNull(currentIndex + 1)
        if (next != null) {
            epgNextView.text = getString(R.string.epg_next) + ": " + next.title
            epgNextView.visibility = View.VISIBLE
        } else {
            epgNextView.visibility = View.GONE
        }
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

    private fun zapChannel(delta: Int) {
        if (!isLivePlayback || currentStreamId <= 0) return
        val channel = LiveChannelNavigator.neighbor(this, currentStreamId, delta) ?: return
        switchToChannel(channel)
    }

    private fun switchToChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        currentStreamId = channel.streamId
        currentEpgChannelId = channel.epgChannelId
        LiveChannelStore(this).lastStreamId = channel.streamId

        findViewById<TextView>(R.id.vlcTitle).text = channel.name
        loadLiveEpg(channel.streamId, channel.epgChannelId)

        val urls = LiveStreamUrls.candidates(api, profile, channel)
        pendingUrls.clear()
        pendingUrls.addAll(urls)
        playUrl(urls.first())
        showOverlays()
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
                KeyEvent.KEYCODE_DPAD_UP -> {
                    if (isLivePlayback) {
                        zapChannel(-1)
                        return true
                    }
                    if (!overlaysVisible) {
                        showOverlays()
                        return true
                    }
                    scheduleHideOverlays()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    if (isLivePlayback) {
                        zapChannel(1)
                        return true
                    }
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
        if (!isLivePlayback) {
            findViewById<View>(R.id.btnVlcBack).visibility = View.VISIBLE
        }
        scheduleHideOverlays()
    }

    private fun hideOverlays() {
        overlaysVisible = false
        findViewById<View>(R.id.vlcOverlay).visibility = View.GONE
        findViewById<View>(R.id.vlcVolumeControls).visibility = View.GONE
        findViewById<View>(R.id.btnVlcBack).visibility = View.GONE
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
        private const val EXTRA_STREAM_ID = "stream_id"
        private const val EXTRA_EPG_CHANNEL_ID = "epg_channel_id"
        private const val EXTRA_POSITION_MS = "position_ms"
        private const val VLC_VOLUME = com.gadir.tv.player.VlcAudioOptions.VOLUME_FULLSCREEN
        private const val CONTROLS_HIDE_MS = 8_000L

        fun intent(
            context: Context,
            title: String,
            url: String,
            alternateUrls: List<String> = emptyList(),
            streamId: Int = 0,
            epgChannelId: String = "",
            positionMs: Long = 0L,
        ): Intent = Intent(context, VlcPlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_STREAM_ID, streamId)
            .putExtra(EXTRA_EPG_CHANNEL_ID, epgChannelId)
            .putExtra(EXTRA_POSITION_MS, positionMs)
            .putStringArrayListExtra(EXTRA_ALTERNATE_URLS, ArrayList(alternateUrls))
    }
}

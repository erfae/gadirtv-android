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
import android.widget.SeekBar
import android.widget.TextView
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.TimeFormat
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
    private var controlsVisible = false
    private val pendingUrls = ArrayDeque<String>()
    private val hideHandler = Handler(Looper.getMainLooper())
    private val hideControlsRunnable = Runnable { hideControls() }
    private val progressRunnable = object : Runnable {
        override fun run() {
            updateVodProgress()
            hideHandler.postDelayed(this, 1_000L)
        }
    }
    private val api = XtreamApi()

    private lateinit var vodControls: View
    private lateinit var epgPanel: View
    private lateinit var volumeControls: View
    private lateinit var btnBack: ImageButton
    private lateinit var vodTitle: TextView
    private lateinit var vodPosition: TextView
    private lateinit var vodDuration: TextView
    private lateinit var vodSeekBar: SeekBar
    private lateinit var btnVodPlayPause: ImageButton

    private var currentStreamId = 0
    private var isLivePlayback = false
    private var resumePositionMs = 0L
    private var resumeSeekPending = false
    private var userSeeking = false
    private var epgLoaded = false

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

        volumeControls = findViewById(R.id.vlcVolumeControls)
        btnBack = findViewById(R.id.btnVlcBack)
        vodControls = findViewById(R.id.vlcVodControls)
        epgPanel = findViewById(R.id.vlcEpgPanel)

        btnBack.setOnClickListener { finish() }
        findViewById<VLCVideoLayout>(R.id.vlcVideo).setOnClickListener { showControls() }

        currentStreamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        isLivePlayback = currentStreamId > 0
        resumePositionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L).coerceAtLeast(0L)
        resumeSeekPending = resumePositionMs > 0L && !isLivePlayback

        if (isLivePlayback) {
            setupLiveUi(title)
        } else {
            setupVodControls(title)
        }

        val settings = AppSettings(this)
        val bufferMs = settings.networkBufferMs.coerceAtLeast(AppSettings.BUFFER_FAST_MS)
        val options = com.gadir.tv.player.VlcAudioOptions.baseOptions(bufferMs)
        libVlc = LibVLC(this, options)
        mediaPlayer = MediaPlayer(libVlc).apply {
            attachViews(findViewById(R.id.vlcVideo), null, false, false)
            volume = VLC_VOLUME
            setEventListener { event ->
                when (event.type) {
                    MediaPlayer.Event.EncounteredError -> {
                        if (!tryNextUrl()) {
                            android.widget.Toast.makeText(
                                this@VlcPlayerActivity,
                                R.string.series_playback_failed,
                                android.widget.Toast.LENGTH_LONG,
                            ).show()
                        }
                    }
                    MediaPlayer.Event.Playing -> {
                        if (resumeSeekPending && resumePositionMs > 0L) {
                            mediaPlayer?.time = resumePositionMs
                            resumeSeekPending = false
                        }
                        showControls()
                        updatePlayPauseIcon()
                    }
                    MediaPlayer.Event.Paused -> updatePlayPauseIcon()
                }
            }
        }
        playUrl(url)
        VolumeHelper.boostOnPlaybackStart(this)

        findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
            showControls()
        }
        findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
            showControls()
        }

        showControls()
    }

    private fun setupLiveUi(channelTitle: String) {
        vodControls.visibility = View.GONE
        epgPanel.visibility = View.GONE
        findViewById<TextView>(R.id.playerChannelTitle).text = channelTitle
        loadFullscreenEpg(currentStreamId, intent.getStringExtra(EXTRA_EPG_CHANNEL_ID).orEmpty())
    }

    private fun setupVodControls(title: String) {
        epgPanel.visibility = View.GONE
        vodControls.visibility = View.GONE
        vodTitle = vodControls.findViewById(R.id.vodTitle)
        vodPosition = vodControls.findViewById(R.id.vodPosition)
        vodDuration = vodControls.findViewById(R.id.vodDuration)
        vodSeekBar = vodControls.findViewById(R.id.vodSeekBar)
        btnVodPlayPause = vodControls.findViewById(R.id.btnVodPlayPause)
        vodTitle.text = title

        btnVodPlayPause.setOnClickListener { togglePlayPause() }
        vodControls.findViewById<ImageButton>(R.id.btnVodRewind).setOnClickListener {
            seekBy(-SEEK_STEP_MS)
            showControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodForward).setOnClickListener {
            seekBy(SEEK_STEP_MS)
            showControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodVolUp).setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
            showControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodVolDown).setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
            showControls()
        }
        vodSeekBar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                if (!fromUser) return
                val duration = mediaPlayer?.length ?: 0L
                if (duration > 0L) {
                    val position = (duration * progress) / seekBar!!.max
                    vodPosition.text = TimeFormat.formatMs(position)
                }
            }

            override fun onStartTrackingTouch(seekBar: SeekBar?) {
                userSeeking = true
                hideHandler.removeCallbacks(hideControlsRunnable)
            }

            override fun onStopTrackingTouch(seekBar: SeekBar?) {
                userSeeking = false
                val duration = mediaPlayer?.length ?: 0L
                if (duration > 0L && seekBar != null) {
                    val position = (duration * seekBar.progress) / seekBar.max
                    mediaPlayer?.time = position
                }
                scheduleHideControls()
            }
        })
    }

    private fun loadFullscreenEpg(streamId: Int, epgChannelId: String) {
        if (streamId <= 0) return
        val profile = PlaylistRepository.profile ?: return
        val loading = findViewById<TextView>(R.id.epgLoadingLabel)
        val list = findViewById<RecyclerView>(R.id.epgList)
        list.layoutManager = LinearLayoutManager(this)
        loading.visibility = View.VISIBLE
        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpg(profile, streamId, epgChannelId = epgChannelId, limit = 10)
            }
            if (streamId != currentStreamId) return@launch
            loading.visibility = View.GONE
            if (epg.isEmpty()) {
                loading.visibility = View.VISIBLE
                loading.text = getString(R.string.epg_unavailable)
                return@launch
            }
            val now = System.currentTimeMillis() / 1000L
            list.adapter = EpgAdapter(epg, now)
            epgLoaded = true
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

    private fun togglePlayPause() {
        val player = mediaPlayer ?: return
        if (player.isPlaying) player.pause() else player.play()
        updatePlayPauseIcon()
        showControls()
    }

    private fun seekBy(deltaMs: Long) {
        val player = mediaPlayer ?: return
        val duration = player.length
        if (duration <= 0L) return
        val target = (player.time + deltaMs).coerceIn(0L, duration)
        player.time = target
        updateVodProgress()
    }

    private fun updatePlayPauseIcon() {
        if (isLivePlayback || !::btnVodPlayPause.isInitialized) return
        val playing = mediaPlayer?.isPlaying == true
        btnVodPlayPause.setImageResource(
            if (playing) R.drawable.ic_pause else R.drawable.ic_play,
        )
    }

    private fun updateVodProgress() {
        if (isLivePlayback || !::vodSeekBar.isInitialized) return
        val player = mediaPlayer ?: return
        val duration = player.length
        if (duration <= 0L) return
        val position = player.time
        vodDuration.text = TimeFormat.formatMs(duration)
        vodPosition.text = TimeFormat.formatMs(position)
        if (!userSeeking) {
            vodSeekBar.progress = ((position * vodSeekBar.max) / duration).toInt()
        }
    }

    private fun zapChannel(delta: Int) {
        if (!isLivePlayback || currentStreamId <= 0) return
        val channel = LiveChannelNavigator.neighbor(this, currentStreamId, delta) ?: return
        switchToChannel(channel)
    }

    private fun switchToChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        currentStreamId = channel.streamId
        LiveChannelStore(this).lastStreamId = channel.streamId
        findViewById<TextView>(R.id.playerChannelTitle).text = channel.name
        epgLoaded = false
        loadFullscreenEpg(channel.streamId, channel.epgChannelId)
        val urls = LiveStreamUrls.candidates(api, profile, channel)
        pendingUrls.clear()
        pendingUrls.addAll(urls)
        playUrl(urls.first())
        showControls()
    }

    private fun showControls() {
        controlsVisible = true
        btnBack.visibility = View.VISIBLE
        volumeControls.visibility = View.VISIBLE
        if (isLivePlayback) {
            epgPanel.visibility = View.VISIBLE
            vodControls.visibility = View.GONE
        } else {
            vodControls.visibility = View.VISIBLE
            epgPanel.visibility = View.GONE
            updateVodProgress()
            updatePlayPauseIcon()
            hideHandler.removeCallbacks(progressRunnable)
            hideHandler.post(progressRunnable)
            btnVodPlayPause.requestFocus()
        }
        scheduleHideControls()
    }

    private fun hideControls() {
        controlsVisible = false
        btnBack.visibility = View.GONE
        volumeControls.visibility = View.GONE
        vodControls.visibility = View.GONE
        epgPanel.visibility = View.GONE
        hideHandler.removeCallbacks(hideControlsRunnable)
        hideHandler.removeCallbacks(progressRunnable)
    }

    private fun scheduleHideControls() {
        hideHandler.removeCallbacks(hideControlsRunnable)
        hideHandler.postDelayed(hideControlsRunnable, CONTROLS_HIDE_MS)
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
        if (event.action != KeyEvent.ACTION_DOWN) return super.dispatchKeyEvent(event)

        if (isLivePlayback) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_MENU -> {
                    if (!controlsVisible) {
                        showControls()
                        return true
                    }
                    scheduleHideControls()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    zapChannel(-1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    zapChannel(1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    VolumeHelper.adjust(this, raise = false)
                    showControls()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    VolumeHelper.adjust(this, raise = true)
                    showControls()
                    return true
                }
            }
        } else {
            when (event.keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_MENU -> {
                    if (!controlsVisible) {
                        showControls()
                        return true
                    }
                    togglePlayPause()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_UP, KeyEvent.KEYCODE_DPAD_DOWN -> {
                    if (!controlsVisible) {
                        showControls()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    if (!controlsVisible) {
                        seekBy(-SEEK_STEP_MS)
                        showControls()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    if (!controlsVisible) {
                        seekBy(SEEK_STEP_MS)
                        showControls()
                        return true
                    }
                }
                KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE -> {
                    togglePlayPause()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"
        private const val EXTRA_ALTERNATE_URLS = "alternate_urls"
        private const val EXTRA_STREAM_ID = "stream_id"
        private const val EXTRA_EPG_CHANNEL_ID = "epg_channel_id"
        private const val EXTRA_POSITION_MS = "position_ms"
        private const val VLC_VOLUME = com.gadir.tv.player.VlcAudioOptions.VOLUME_FULLSCREEN
        private const val SEEK_STEP_MS = 10_000L
        private const val CONTROLS_HIDE_MS = 5_000L

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

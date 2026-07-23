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
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamStallTracker
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.VlcInstanceGuard
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.DeviceUi
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
    private val allPlaybackUrls = ArrayList<String>()
    private val hideHandler = Handler(Looper.getMainLooper())
    private val hideControlsRunnable = Runnable { hideControls() }
    private val progressRunnable = object : Runnable {
        override fun run() {
            updateVodProgress()
            hideHandler.postDelayed(this, 500L)
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
    private var vodDurationMs = 0L
    private var exoFallbackLaunched = false
    private var allowExoFallback = true

    private var vlcUsesSoftwareDecode = false
    private var vlcReleased = false
    private var vlcPlaybackToken = 0
    private var activeLiveUrl: String? = null
    private var liveRecoverAttempts = 0
    private val liveStallTracker = LiveStreamStallTracker(8_000L)
    private var liveStallRunnable: Runnable? = null
    private var lastDisplayedPictures = -1

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
        allowExoFallback = !intent.getBooleanExtra(EXTRA_DISABLE_EXO_FALLBACK, false)
        allPlaybackUrls.clear()
        allPlaybackUrls.add(url)
        pendingUrls.add(url)
        intent.getStringArrayListExtra(EXTRA_ALTERNATE_URLS)?.forEach { alt ->
            if (alt.isNotBlank() && alt !in allPlaybackUrls) {
                allPlaybackUrls.add(alt)
                pendingUrls.add(alt)
            }
        }

        volumeControls = findViewById(R.id.vlcVolumeControls)
        btnBack = findViewById(R.id.btnVlcBack)
        vodControls = findViewById(R.id.vlcVodControls)
        epgPanel = findViewById(R.id.vlcEpgPanel)

        btnBack.setOnClickListener { finish() }
        findViewById<VLCVideoLayout>(R.id.vlcVideo).setOnClickListener { showControls() }

        currentStreamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        isLivePlayback = kind == ResumeStore.KIND_LIVE
        resumePositionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L).coerceAtLeast(0L)
        resumeSeekPending = resumePositionMs > 0L && !isLivePlayback
        if (isLivePlayback) {
            com.gadir.tv.data.LivePlaybackGate.acquire()
        }

        if (isLivePlayback) {
            setupLiveUi(title)
        } else {
            setupVodControls(title)
        }

        val settings = AppSettings(this)
        val bufferMs = settings.networkBufferMs.coerceIn(AppSettings.BUFFER_NORMAL_MS, AppSettings.BUFFER_STABLE_MS)
        val launchDelayMs = if (isLivePlayback && DeviceUi.isTvUi(this)) {
            VlcInstanceGuard.cooldownRemainingMs(LIVE_VLC_COOLDOWN_MS)
        } else {
            0L
        }
        if (launchDelayMs > 0L) {
            findViewById<View>(R.id.vlcVideo).postDelayed({
                if (isFinishing || isDestroyed) return@postDelayed
                startVlcPlayback(bufferMs)
            }, launchDelayMs)
        } else {
            startVlcPlayback(bufferMs)
        }

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

    private fun startVlcPlayback(bufferMs: Int, attempt: Int = 0) {
        if (isFinishing || isDestroyed) return
        if (!initVlcPlayer(bufferMs, preferSoftware = false)) {
            if (isLivePlayback && DeviceUi.isTvUi(this) && attempt < 3) {
                findViewById<View>(R.id.vlcVideo).postDelayed({
                    startVlcPlayback(bufferMs, attempt + 1)
                }, 400L)
                return
            }
            if (!fallbackToExoPlayer()) {
                android.widget.Toast.makeText(this, R.string.series_playback_failed, android.widget.Toast.LENGTH_LONG).show()
                finish()
            }
            return
        }
        playUrl(pendingUrls.firstOrNull().orEmpty())
        VolumeHelper.boostOnPlaybackStart(this)
    }

    private fun vlcAlive(): Boolean = !vlcReleased && !isFinishing && !isDestroyed

    private fun initVlcPlayer(bufferMs: Int, preferSoftware: Boolean): Boolean {
        releaseVlcPlayer()
        if (!VlcInstanceGuard.acquire(LIVE_VLC_ACQUIRE_MS)) {
            return false
        }
        vlcReleased = false
        vlcPlaybackToken++
        vlcUsesSoftwareDecode = preferSoftware
        val options = when {
            preferSoftware -> com.gadir.tv.player.VlcAudioOptions.softwareOptions(bufferMs)
            isLivePlayback -> com.gadir.tv.player.VlcAudioOptions.liveFullscreenOptions(bufferMs)
            else -> com.gadir.tv.player.VlcAudioOptions.vodOptions(bufferMs)
        }
        return try {
            libVlc = LibVLC(applicationContext, options)
            mediaPlayer = MediaPlayer(libVlc).apply {
                attachViews(findViewById(R.id.vlcVideo), null, false, false)
                volume = VLC_VOLUME
                setEventListener { event -> handleVlcEvent(event) }
            }
            true
        } catch (_: Throwable) {
            releaseVlcPlayer()
            if (!preferSoftware) {
                initVlcPlayer(bufferMs, preferSoftware = true)
            } else {
                false
            }
        }
    }

    private fun handleVlcEvent(event: MediaPlayer.Event) {
        if (!vlcAlive()) return
        when (event.type) {
            MediaPlayer.Event.EncounteredError -> {
                hideHandler.post { recoverFromVlcError() }
            }
            MediaPlayer.Event.Playing -> {
                if (!vlcAlive()) return
                if (resumeSeekPending && resumePositionMs > 0L) {
                    mediaPlayer?.setTime(resumePositionMs, true)
                    resumeSeekPending = false
                }
                if (isLivePlayback) {
                    lastDisplayedPictures = -1
                    liveStallTracker.reset()
                    liveStallTracker.ping()
                    armLiveStallWatchdog()
                }
                runOnUiThread {
                    if (!vlcAlive()) return@runOnUiThread
                    showControls()
                    updatePlayPauseIcon()
                }
            }
            MediaPlayer.Event.Vout -> {
                if (isLivePlayback && event.voutCount > 0) {
                    liveStallTracker.ping()
                }
            }
            MediaPlayer.Event.Paused -> runOnUiThread { updatePlayPauseIcon() }
            MediaPlayer.Event.LengthChanged -> {
                vodDurationMs = mediaPlayer?.length ?: 0L
                updateVodProgress()
            }
            MediaPlayer.Event.TimeChanged -> {
                updateVodProgress()
            }
            MediaPlayer.Event.PositionChanged -> {}
        }
    }

    /**
     * IPTV live streams keep firing TimeChanged/PositionChanged even when the decoder/
     * renderer is stuck on a frozen frame (network layer still demuxes data), so those
     * events alone are not reliable proof of a healthy stream. libVLC's displayedPictures
     * counter only increases when a frame is actually rendered — use it as ground truth
     * for stall detection when available, falling back to event-based pings otherwise.
     */
    private fun sampleLiveFrameProgress() {
        val stats = try {
            mediaPlayer?.media?.stats
        } catch (_: Throwable) {
            null
        }
        val displayed = stats?.displayedPictures
        if (displayed != null && displayed > 0) {
            liveStallTracker.noteProgress(displayed.toLong())
            lastDisplayedPictures = displayed
        } else {
            liveStallTracker.ping()
        }
    }

    private fun recoverFromVlcError() {
        if (!vlcAlive()) return
        val bufferMs = AppSettings(this).networkBufferMs
            .coerceIn(AppSettings.BUFFER_NORMAL_MS, AppSettings.BUFFER_STABLE_MS)
        val currentUrl = pendingUrls.firstOrNull().orEmpty()
            .ifBlank { allPlaybackUrls.firstOrNull().orEmpty() }
        if (!vlcUsesSoftwareDecode && initVlcPlayer(bufferMs, preferSoftware = true)) {
            playUrl(currentUrl)
            return
        }
        if (!tryNextUrl()) {
            fallbackToExoPlayer()
        }
    }

    private fun releaseVlcPlayer() {
        vlcReleased = true
        vlcPlaybackToken++
        disarmLiveStallWatchdog()
        val player = mediaPlayer
        val vlc = libVlc
        mediaPlayer = null
        libVlc = null
        try {
            player?.setEventListener(null)
            player?.stop()
            player?.detachViews()
            player?.release()
        } catch (_: Throwable) {
        }
        try {
            vlc?.release()
        } catch (_: Throwable) {
        }
        VlcInstanceGuard.release()
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
                val duration = currentVodDuration()
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
                val duration = currentVodDuration()
                if (duration > 0L && seekBar != null) {
                    val position = (duration * seekBar.progress) / seekBar.max
                    mediaPlayer?.setTime(position, true)
                }
                scheduleHideControls()
            }
        })
    }

    private fun currentVodDuration(): Long {
        val length = mediaPlayer?.length ?: 0L
        return if (length > 0L) length else vodDurationMs
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
                api.shortEpgFast(profile, streamId, epgChannelId = epgChannelId, limit = 10)
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
        if (!vlcAlive()) return
        val vlc = libVlc ?: return
        val player = mediaPlayer ?: return
        val token = ++vlcPlaybackToken
        if (isLivePlayback) {
            activeLiveUrl = url
            liveRecoverAttempts = 0
            liveStallTracker.reset()
        }
        try {
            player.stop()
            player.volume = 0
            val resolved = com.gadir.tv.util.NetworkUrlResolver.resolve(url)
            val media = Media(vlc, Uri.parse(resolved.url))
            resolved.hostHeader?.let { media.addOption(":http-host=$it") }
            PlaylistRepository.profile?.host?.let { host ->
                media.addOption(":http-referrer=${com.gadir.tv.util.HostUtils.baseUrl(host)}/")
            }
            media.addOption(":http-user-agent=${PlaylistRepository.userAgent}")
            if (!isLivePlayback) {
                val cache = AppSettings(this).networkBufferMs.coerceIn(2_000, 8_000)
                media.addOption(":network-caching=$cache")
                media.addOption(":file-caching=${(cache * 3).coerceIn(8_000, 24_000)}")
                media.addOption(":clock-jitter=0")
            }
            if (!vlcAlive() || token != vlcPlaybackToken) {
                media.release()
                return
            }
            player.media = media
            media.release()
            player.volume = VLC_VOLUME
            player.play()
        } catch (_: Throwable) {
            if (!vlcAlive() || token != vlcPlaybackToken) return
            hideHandler.post { recoverFromVlcError() }
        }
    }

    private fun armLiveStallWatchdog() {
        if (!isLivePlayback) return
        disarmLiveStallWatchdog(resetTracker = true)
        val runnable = object : Runnable {
            override fun run() {
                if (!isLivePlayback || mediaPlayer == null) {
                    disarmLiveStallWatchdog()
                    return
                }
                if (mediaPlayer?.isPlaying != true) {
                    // Momentary pause/buffering shouldn't kill stall detection permanently —
                    // just skip this sample and check again on the next tick.
                    hideHandler.postDelayed(this, 4_000L)
                    return
                }
                sampleLiveFrameProgress()
                if (liveStallTracker.isStalled()) {
                    recoverLiveFromStall()
                    return
                }
                hideHandler.postDelayed(this, 4_000L)
            }
        }
        liveStallRunnable = runnable
        hideHandler.postDelayed(runnable, 4_000L)
    }

    private fun disarmLiveStallWatchdog(resetTracker: Boolean = true) {
        liveStallRunnable?.let { hideHandler.removeCallbacks(it) }
        liveStallRunnable = null
        if (resetTracker) liveStallTracker.reset()
    }

    private fun recoverLiveFromStall() {
        if (!vlcAlive()) return
        liveRecoverAttempts += 1
        liveStallTracker.reset()
        disarmLiveStallWatchdog()
        if (tryNextUrl()) return
        if (liveRecoverAttempts <= 2) {
            activeLiveUrl?.let { playUrl(it) }
            armLiveStallWatchdog()
            return
        }
        liveRecoverAttempts = 0
        if (!fallbackToExoPlayer()) {
            android.widget.Toast.makeText(this, R.string.connection_failed, android.widget.Toast.LENGTH_SHORT).show()
        }
    }

    private fun tryNextUrl(): Boolean {
        if (pendingUrls.isEmpty()) return false
        pendingUrls.removeFirst()
        val next = pendingUrls.firstOrNull() ?: return false
        playUrl(next)
        return true
    }

    private fun fallbackToExoPlayer(): Boolean {
        if (!allowExoFallback || exoFallbackLaunched) return false
        exoFallbackLaunched = true
        val url = intent.getStringExtra(EXTRA_URL).orEmpty()
            .ifBlank { allPlaybackUrls.firstOrNull().orEmpty() }
        if (url.isBlank()) return false
        val alternates = allPlaybackUrls.filter { it.isNotBlank() && it != url }
        startActivity(
            PlayerActivity.intent(
                context = this,
                title = intent.getStringExtra(EXTRA_TITLE).orEmpty(),
                url = url,
                kind = intent.getStringExtra(EXTRA_KIND).orEmpty(),
                contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty(),
                imageUrl = intent.getStringExtra(EXTRA_IMAGE_URL).orEmpty(),
                extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty()
                    .ifBlank { if (isLivePlayback) "ts" else "mkv" },
                positionMs = resumePositionMs,
                streamId = currentStreamId,
                alternateUrls = alternates,
                disableVlcFallback = true,
            ),
        )
        finish()
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
        val wasPlaying = player.isPlaying
        val duration = currentVodDuration()
        val target = if (duration > 0L) {
            (player.time + deltaMs).coerceIn(0L, duration)
        } else {
            (player.time + deltaMs).coerceAtLeast(0L)
        }
        player.setTime(target, true)
        if (wasPlaying && !player.isPlaying) {
            player.play()
        }
        updateVodProgress()
        showControls()
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
        val duration = currentVodDuration()
        if (duration <= 0L) return
        val position = player.time.coerceAtLeast(0L)
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
        val urls = if (com.gadir.tv.util.DeviceUi.isTvUi(this)) {
            LiveStreamUrls.tvCandidates(api, profile, channel)
        } else {
            LiveStreamUrls.candidates(api, profile, channel)
        }
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
        if (!vlcAlive()) return
        try {
            mediaPlayer?.play()
            mediaPlayer?.volume = VLC_VOLUME
        } catch (_: Throwable) {
        }
        VolumeHelper.boostOnPlaybackStart(this)
    }

    override fun onStop() {
        try {
            mediaPlayer?.pause()
        } catch (_: Throwable) {
        }
        super.onStop()
    }

    override fun onDestroy() {
        if (isLivePlayback) {
            com.gadir.tv.data.LivePlaybackGate.release()
        }
        hideHandler.removeCallbacksAndMessages(null)
        releaseVlcPlayer()
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
                    seekBy(-SEEK_STEP_MS)
                    showControls()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    seekBy(SEEK_STEP_MS)
                    showControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE -> {
                    togglePlayPause()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_REWIND -> {
                    seekBy(-SEEK_STEP_MS)
                    showControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_FAST_FORWARD -> {
                    seekBy(SEEK_STEP_MS)
                    showControls()
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
        private const val EXTRA_KIND = "kind"
        private const val EXTRA_CONTENT_ID = "content_id"
        private const val EXTRA_IMAGE_URL = "image_url"
        private const val EXTRA_EXTENSION = "extension"
        private const val EXTRA_DISABLE_EXO_FALLBACK = "disable_exo_fallback"
        private const val VLC_VOLUME = com.gadir.tv.player.VlcAudioOptions.VOLUME_FULLSCREEN
        private const val SEEK_STEP_MS = 10_000L
        private const val CONTROLS_HIDE_MS = 5_000L
        private const val LIVE_VLC_COOLDOWN_MS = 1_200L
        private const val LIVE_VLC_ACQUIRE_MS = 4_000L

        fun intent(
            context: Context,
            title: String,
            url: String,
            alternateUrls: List<String> = emptyList(),
            streamId: Int = 0,
            epgChannelId: String = "",
            positionMs: Long = 0L,
            kind: String = "",
            contentId: String = "",
            imageUrl: String = "",
            extension: String = "mkv",
            disableExoFallback: Boolean = false,
        ): Intent = Intent(context, VlcPlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_STREAM_ID, streamId)
            .putExtra(EXTRA_EPG_CHANNEL_ID, epgChannelId)
            .putExtra(EXTRA_POSITION_MS, positionMs)
            .putExtra(EXTRA_KIND, kind)
            .putExtra(EXTRA_CONTENT_ID, contentId)
            .putExtra(EXTRA_IMAGE_URL, imageUrl)
            .putExtra(EXTRA_EXTENSION, extension)
            .putStringArrayListExtra(EXTRA_ALTERNATE_URLS, ArrayList(alternateUrls))
            .putExtra(EXTRA_DISABLE_EXO_FALLBACK, disableExoFallback)
    }
}

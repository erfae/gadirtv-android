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
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.ui.settings.SettingsActivity
import androidx.appcompat.app.AlertDialog
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.VodStreamUrls
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.player.PlayerFactory
import com.gadir.tv.ui.player.VlcPlayerActivity
import com.gadir.tv.util.TimeFormat
import com.gadir.tv.util.VolumeHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class PlayerActivity : BaseLocaleActivity() {
    private var player: ExoPlayer? = null
    private var playbackMonitor: LivePlaybackMonitor? = null
    private lateinit var resumeStore: ResumeStore
    private val api = XtreamApi()
    private var isLive = false
    private var liveOverlaysVisible = false
    private var epgLoaded = false
    private var liveStreamId = 0
    private var liveEpgChannelId = ""
    private val pendingLiveUrls = ArrayDeque<String>()
    private val pendingVodUrls = ArrayDeque<String>()
    private var activeLiveUrl: String? = null
    private var liveRecoverAttempts = 0
    private var liveZapToken = 0
    private var liveStoppedInBackground = false

    private lateinit var volumeControls: View
    private lateinit var epgPanel: View

    private lateinit var vodControls: View
    private lateinit var vodTitle: TextView
    private lateinit var vodPosition: TextView
    private lateinit var vodDuration: TextView
    private lateinit var vodSeekBar: SeekBar
    private lateinit var btnVodPlayPause: ImageButton
    private lateinit var btnPlayerBack: ImageButton

    private val hideHandler = Handler(Looper.getMainLooper())
    private var userSeeking = false
    private var controlsVisible = false

    private val hideControlsRunnable = Runnable { hideVodControls() }
    private val hideLiveOverlaysRunnable = Runnable { hideLiveOverlays() }
    private val progressRunnable = object : Runnable {
        override fun run() {
            updateVodProgress()
            if (!isLive && controlsVisible) {
                hideHandler.postDelayed(this, 500L)
            }
        }
    }

    private var liveUrlSettled = false
    private var vlcFallbackLaunched = false
    private var allowVlcFallback = true
    private var vodExtension = "mkv"

    private val playerListener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            if (playbackState == Player.STATE_READY) {
                updateVodProgress()
                if (isLive && player?.isPlaying == true && (player?.currentPosition ?: 0L) > 1_500L) {
                    liveUrlSettled = true
                    liveRecoverAttempts = 0
                }
            }
            updatePlayPauseIcon()
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            updatePlayPauseIcon()
            if (isLive && isPlaying && (player?.currentPosition ?: 0L) > 1_500L) {
                liveUrlSettled = true
                liveRecoverAttempts = 0
            }
        }

        override fun onPlayerError(error: PlaybackException) {
            if (isLive && tryNextLiveUrl()) return
            if (isLive && fallbackToVlcLivePlayer()) return
            if (!isLive && tryNextVodUrl()) return
            if (!isLive && fallbackToVlcPlayer()) return
            android.widget.Toast.makeText(
                this@PlayerActivity,
                R.string.series_playback_failed,
                android.widget.Toast.LENGTH_LONG,
            ).show()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_player)
        resumeStore = ResumeStore(this)

        val url = intent.getStringExtra(EXTRA_URL).orEmpty()
        val positionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L)
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        val streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        liveEpgChannelId = intent.getStringExtra(EXTRA_EPG_CHANNEL_ID).orEmpty()
        val channelTitle = intent.getStringExtra(EXTRA_TITLE).orEmpty()
        allowVlcFallback = !intent.getBooleanExtra(EXTRA_DISABLE_VLC_FALLBACK, false)
        vodExtension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mkv" }
        isLive = kind == ResumeStore.KIND_LIVE
        liveStreamId = streamId
        if (isLive) {
            com.gadir.tv.data.LivePlaybackGate.acquire()
            com.gadir.tv.data.LiveStreamSupervisor.register(liveStreamStopAction)
            pendingLiveUrls.clear()
            pendingLiveUrls.add(url)
            intent.getStringArrayListExtra(EXTRA_ALTERNATE_URLS)?.forEach { alt ->
                if (alt.isNotBlank() && alt !in pendingLiveUrls && pendingLiveUrls.size < 2) {
                    pendingLiveUrls.add(alt)
                }
            }
        } else {
            pendingVodUrls.clear()
            pendingVodUrls.add(url)
            intent.getStringArrayListExtra(EXTRA_ALTERNATE_URLS)?.forEach { alt ->
                if (alt.isNotBlank() && alt !in pendingVodUrls) pendingVodUrls.add(alt)
            }
            com.gadir.tv.data.VodStreamSupervisor.register(vodStreamStopAction)
        }

        findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).apply {
            useController = false
            setKeepContentOnPlayerReset(true)
            setShowBuffering(androidx.media3.ui.PlayerView.SHOW_BUFFERING_NEVER)
            setOnClickListener {
                if (!isLive) showVodControls()
            }
        }

        btnPlayerBack = findViewById(R.id.btnPlayerBack)
        btnPlayerBack.setOnClickListener { finish() }

        enableImmersiveMode()

        val noSignal = findViewById<View>(R.id.playerNoSignal)
        findViewById<View>(R.id.btnNoSignalSettings).setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }

        volumeControls = findViewById(R.id.playerVolumeControls)
        epgPanel = findViewById(R.id.playerEpgPanel)
        vodControls = findViewById(R.id.playerVodControls)
        vodControls.visibility = View.GONE

        if (isLive) {
            findViewById<TextView>(R.id.playerChannelTitle).text = channelTitle
            findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
                VolumeHelper.adjust(this, raise = true)
                showLiveOverlays()
            }
            findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
                VolumeHelper.adjust(this, raise = false)
                showLiveOverlays()
            }
            findViewById<ImageButton>(R.id.btnFullscreen).visibility = View.GONE
            hideLiveOverlays()
        } else {
            volumeControls.visibility = View.GONE
            epgPanel.visibility = View.GONE
            setupVodControls(channelTitle)
            showVodControls()
        }

        player = (if (isLive) PlayerFactory.createForLive(this) else PlayerFactory.create(this)).also { exo ->
            VolumeHelper.boostOnPlaybackStart(this)
            findViewById<androidx.media3.ui.PlayerView>(R.id.playerView).player = exo
            exo.volume = 1f
            exo.addListener(playerListener)
            startPlayback(exo, url, positionMs)
            if (isLive) {
                liveUrlSettled = false
                playbackMonitor = LivePlaybackMonitor(
                    player = exo,
                    overlay = noSignal,
                    timeoutMs = 20_000L,
                    bufferingFallbackMs = 25_000L,
                    stallTimeoutMs = 12_000L,
                    shouldHoldStream = { liveUrlSettled },
                    onBeforeNoSignal = {
                        if (restartLivePlayback()) {
                            true
                        } else {
                            liveRecoverAttempts = 0
                            tryNextLiveUrl() || fallbackToVlcLivePlayer()
                        }
                    },
                ).also { it.start() }
            } else {
                exo.addListener(object : Player.Listener {
                    override fun onPlaybackStateChanged(playbackState: Int) {
                        if (playbackState == Player.STATE_READY) {
                            exo.removeListener(this)
                            showVodControls()
                        }
                    }
                })
            }
        }
    }

    private fun startPlayback(exo: ExoPlayer, url: String, positionMs: Long) {
        if (isLive) {
            activeLiveUrl = url
            liveRecoverAttempts = 0
        }
        val item = if (isLive) {
            LiveStreamUrls.mediaItem(url)
        } else {
            VodStreamUrls.mediaItem(url, vodExtension)
        }
        exo.setMediaItem(item)
        exo.prepare()
        if (positionMs > 0L) {
            exo.seekTo(positionMs)
        }
        exo.playWhenReady = true
    }

    private fun restartLivePlayback(): Boolean {
        if (!isLive || liveRecoverAttempts >= 2) return false
        val url = activeLiveUrl?.takeIf { it.isNotBlank() } ?: return false
        val exo = player ?: return false
        liveRecoverAttempts += 1
        liveUrlSettled = false
        playbackMonitor?.reset()
        exo.stop()
        exo.clearMediaItems()
        exo.setMediaItem(LiveStreamUrls.mediaItem(url))
        exo.prepare()
        exo.playWhenReady = true
        return true
    }

    private fun tryNextLiveUrl(): Boolean {
        if (pendingLiveUrls.isEmpty()) return false
        pendingLiveUrls.removeFirst()
        val next = pendingLiveUrls.firstOrNull() ?: return false
        val exo = player ?: return false
        liveUrlSettled = false
        liveRecoverAttempts = 0
        activeLiveUrl = next
        playbackMonitor?.reset()
        exo.setMediaItem(LiveStreamUrls.mediaItem(next))
        exo.prepare()
        exo.playWhenReady = true
        return true
    }

    private fun tryNextVodUrl(): Boolean {
        if (pendingVodUrls.isEmpty()) return false
        pendingVodUrls.removeFirst()
        val next = pendingVodUrls.firstOrNull() ?: return false
        val exo = player ?: return false
        exo.setMediaItem(VodStreamUrls.mediaItem(next, vodExtension))
        exo.prepare()
        exo.playWhenReady = true
        return true
    }

    private fun fallbackToVlcPlayer(): Boolean {
        if (isLive || !allowVlcFallback || vlcFallbackLaunched) return false
        vlcFallbackLaunched = true
        val url = pendingVodUrls.firstOrNull().orEmpty()
        if (url.isBlank()) return false
        startActivity(
            com.gadir.tv.ui.player.VlcPlayerActivity.intent(
                context = this,
                title = intent.getStringExtra(EXTRA_TITLE).orEmpty(),
                url = url,
                alternateUrls = pendingVodUrls.drop(1).toList(),
                positionMs = intent.getLongExtra(EXTRA_POSITION_MS, 0L),
                kind = intent.getStringExtra(EXTRA_KIND).orEmpty(),
                contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty(),
                imageUrl = intent.getStringExtra(EXTRA_IMAGE_URL).orEmpty(),
                extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mkv" },
                disableExoFallback = true,
            ),
        )
        finish()
        return true
    }

    private fun fallbackToVlcLivePlayer(): Boolean {
        if (!isLive || vlcFallbackLaunched) return false
        vlcFallbackLaunched = true
        val urls = buildList {
            add(intent.getStringExtra(EXTRA_URL).orEmpty())
            addAll(intent.getStringArrayListExtra(EXTRA_ALTERNATE_URLS).orEmpty())
        }.filter { it.isNotBlank() }.distinct()
        val url = urls.firstOrNull().orEmpty()
        if (url.isBlank()) return false
        startActivity(
            VlcPlayerActivity.intent(
                context = this,
                title = intent.getStringExtra(EXTRA_TITLE).orEmpty(),
                url = url,
                alternateUrls = urls.drop(1),
                streamId = liveStreamId,
                kind = ResumeStore.KIND_LIVE,
                contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty(),
                imageUrl = intent.getStringExtra(EXTRA_IMAGE_URL).orEmpty(),
                extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "ts" },
                disableExoFallback = true,
            ),
        )
        finish()
        return true
    }

    override fun onResume() {
        super.onResume()
        enableImmersiveMode()
        if (isLive && liveStoppedInBackground) {
            liveStoppedInBackground = false
            val exo = player
            val url = activeLiveUrl?.takeIf { it.isNotBlank() } ?: pendingLiveUrls.firstOrNull()
            if (exo != null && !url.isNullOrBlank()) {
                liveUrlSettled = false
                exo.setMediaItem(LiveStreamUrls.mediaItem(url))
                exo.prepare()
                playbackMonitor?.start()
            }
        }
        player?.playWhenReady = true
    }

    private fun enableImmersiveMode() {
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            )
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) enableImmersiveMode()
    }

    private fun showLiveOverlays() {
        if (!isLive) return
        liveOverlaysVisible = true
        volumeControls.visibility = View.VISIBLE
        epgPanel.visibility = View.VISIBLE
        if (!epgLoaded) {
            epgLoaded = true
            loadFullscreenEpg(liveStreamId)
        }
        hideHandler.removeCallbacks(hideLiveOverlaysRunnable)
        hideHandler.postDelayed(hideLiveOverlaysRunnable, CONTROLS_HIDE_MS)
    }

    private fun hideLiveOverlays() {
        if (!isLive) return
        liveOverlaysVisible = false
        volumeControls.visibility = View.GONE
        epgPanel.visibility = View.GONE
        hideHandler.removeCallbacks(hideLiveOverlaysRunnable)
    }

    private fun scheduleHideLiveOverlays() {
        hideHandler.removeCallbacks(hideLiveOverlaysRunnable)
        hideHandler.postDelayed(hideLiveOverlaysRunnable, CONTROLS_HIDE_MS)
    }

    private fun setupVodControls(title: String) {
        vodTitle = vodControls.findViewById(R.id.vodTitle)
        vodPosition = vodControls.findViewById(R.id.vodPosition)
        vodDuration = vodControls.findViewById(R.id.vodDuration)
        vodSeekBar = vodControls.findViewById(R.id.vodSeekBar)
        btnVodPlayPause = vodControls.findViewById(R.id.btnVodPlayPause)

        vodTitle.text = title

        btnVodPlayPause.setOnClickListener { togglePlayPause() }
        vodControls.findViewById<ImageButton>(R.id.btnVodRewind).setOnClickListener {
            seekBy(-SEEK_STEP_MS)
            showVodControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodForward).setOnClickListener {
            seekBy(SEEK_STEP_MS)
            showVodControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodVolUp).setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
            showVodControls()
        }
        vodControls.findViewById<ImageButton>(R.id.btnVodVolDown).setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
            showVodControls()
        }

        vodSeekBar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                if (!fromUser) return
                val duration = player?.duration ?: 0L
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
                val duration = player?.duration ?: 0L
                if (duration > 0L && seekBar != null) {
                    val position = (duration * seekBar.progress) / seekBar.max
                    player?.seekTo(position)
                }
                scheduleHideControls()
            }
        })

        vodControls.setOnClickListener { showVodControls() }
    }

    private fun togglePlayPause() {
        val exo = player ?: return
        if (exo.isPlaying) exo.pause() else exo.play()
        showVodControls()
    }

    private fun seekBy(deltaMs: Long) {
        val exo = player ?: return
        val wasPlaying = exo.isPlaying
        val duration = exo.duration
        val target = if (duration > 0L) {
            (exo.currentPosition + deltaMs).coerceIn(0L, duration)
        } else {
            (exo.currentPosition + deltaMs).coerceAtLeast(0L)
        }
        exo.seekTo(target)
        exo.playWhenReady = wasPlaying
        updateVodProgress()
    }

    private fun updatePlayPauseIcon() {
        if (isLive || !::btnVodPlayPause.isInitialized) return
        val playing = player?.isPlaying == true
        btnVodPlayPause.setImageResource(
            if (playing) R.drawable.ic_pause else R.drawable.ic_play,
        )
    }

    private fun updateVodProgress() {
        if (isLive || !::vodSeekBar.isInitialized) return
        val exo = player ?: return
        val duration = exo.duration
        if (duration <= 0L) return
        val position = exo.currentPosition
        vodDuration.text = TimeFormat.formatMs(duration)
        vodPosition.text = TimeFormat.formatMs(position)
        if (!userSeeking) {
            vodSeekBar.progress = ((position * vodSeekBar.max) / duration).toInt()
        }
    }

    private fun showVodControls() {
        if (isLive) return
        controlsVisible = true
        vodControls.visibility = View.VISIBLE
        btnPlayerBack.visibility = View.VISIBLE
        updateVodProgress()
        updatePlayPauseIcon()
        hideHandler.removeCallbacks(hideControlsRunnable)
        hideHandler.removeCallbacks(progressRunnable)
        hideHandler.post(progressRunnable)
        scheduleHideControls()
        btnVodPlayPause.requestFocus()
    }

    private fun hideVodControls() {
        if (isLive) return
        controlsVisible = false
        vodControls.visibility = View.GONE
        btnPlayerBack.visibility = View.GONE
        hideHandler.removeCallbacks(hideControlsRunnable)
        hideHandler.removeCallbacks(progressRunnable)
    }

    private fun scheduleHideControls() {
        hideHandler.removeCallbacks(hideControlsRunnable)
        hideHandler.postDelayed(hideControlsRunnable, CONTROLS_HIDE_MS)
    }

    private fun zapLiveChannel(delta: Int) {
        if (!isLive || liveStreamId <= 0) return
        val channel = LiveChannelNavigator.neighbor(this, liveStreamId, delta) ?: return
        switchToLiveChannel(channel)
    }

    private fun switchToLiveChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        liveStreamId = channel.streamId
        liveEpgChannelId = channel.epgChannelId
        LiveChannelStore(this).lastStreamId = channel.streamId
        findViewById<TextView>(R.id.playerChannelTitle).text = channel.name
        epgLoaded = false
        loadFullscreenEpg(channel.streamId)
        val urls = if (DeviceUi.isTvUi(this)) {
            LiveStreamUrls.tvCandidates(api, profile, channel)
        } else {
            LiveStreamUrls.candidates(api, profile, channel)
        }
        pendingLiveUrls.clear()
        pendingLiveUrls.addAll(urls.filter { it.isNotBlank() }.distinct().take(2))
        val next = pendingLiveUrls.firstOrNull() ?: return
        val exo = player ?: return
        liveUrlSettled = false
        liveRecoverAttempts = 0
        activeLiveUrl = next
        playbackMonitor?.reset()
        exo.stop()
        val token = ++liveZapToken
        // Give the panel a moment to register the previous stream's disconnect before
        // opening a new one — some panels are slow to free the connection slot, so
        // zapping too fast can make the new channel fail with "max connections reached".
        hideHandler.postDelayed({
            if (token != liveZapToken) return@postDelayed
            val current = player ?: return@postDelayed
            current.setMediaItem(LiveStreamUrls.mediaItem(next))
            current.prepare()
            current.playWhenReady = true
        }, ZAP_RECONNECT_DELAY_MS)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN && isLive) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER,
                KeyEvent.KEYCODE_MENU,
                -> {
                    if (!liveOverlaysVisible) {
                        showLiveOverlays()
                        return true
                    }
                    scheduleHideLiveOverlays()
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    zapLiveChannel(-1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    zapLiveChannel(1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    if (!liveOverlaysVisible) {
                        VolumeHelper.adjust(this, raise = false)
                        showLiveOverlays()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    if (!liveOverlaysVisible) {
                        VolumeHelper.adjust(this, raise = true)
                        showLiveOverlays()
                        return true
                    }
                }
            }
        }
        if (!isLive && event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    if (!controlsVisible) {
                        showVodControls()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_UP, KeyEvent.KEYCODE_DPAD_DOWN, KeyEvent.KEYCODE_MENU -> {
                    if (!controlsVisible) {
                        showVodControls()
                        return true
                    }
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    seekBy(-SEEK_STEP_MS)
                    showVodControls()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    seekBy(SEEK_STEP_MS)
                    showVodControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE -> {
                    togglePlayPause()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_PLAY -> {
                    player?.play()
                    showVodControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_PAUSE -> {
                    player?.pause()
                    showVodControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_REWIND -> {
                    seekBy(-SEEK_STEP_MS)
                    showVodControls()
                    return true
                }
                KeyEvent.KEYCODE_MEDIA_FAST_FORWARD -> {
                    seekBy(SEEK_STEP_MS)
                    showVodControls()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onBackPressed() {
        if (isLive) {
            if (liveOverlaysVisible) {
                hideLiveOverlays()
                return
            }
            finish()
            return
        }
        if (controlsVisible) {
            hideVodControls()
            return
        }
        promptVodExit()
    }

    private fun promptVodExit() {
        val exo = player
        if (exo == null) {
            finish()
            return
        }
        val positionMs = exo.currentPosition
        val durationMs = exo.duration
        val nearEnd = durationMs > 0 && positionMs >= durationMs - 30_000L
        if (positionMs < 90_000L || nearEnd) {
            saveProgress()
            finish()
            return
        }
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        val contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty()
        AlertDialog.Builder(this)
            .setTitle(R.string.playback_exit_title)
            .setMessage(R.string.playback_exit_message)
            .setPositiveButton(R.string.playback_continue) { _, _ ->
                saveProgress()
                finish()
            }
            .setNegativeButton(R.string.playback_restart) { _, _ ->
                if (kind.isNotEmpty() && contentId.isNotEmpty()) {
                    resumeStore.remove(kind, contentId)
                }
                finish()
            }
            .setNeutralButton(R.string.playback_cancel, null)
            .show()
    }

    private fun loadFullscreenEpg(streamId: Int) {
        val profile = PlaylistRepository.profile ?: return
        if (streamId <= 0) return

        val loading = findViewById<TextView>(R.id.epgLoadingLabel)
        val list = findViewById<RecyclerView>(R.id.epgList)
        list.layoutManager = LinearLayoutManager(this)
        loading.visibility = View.VISIBLE

        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpgFast(
                    profile,
                    streamId = streamId,
                    epgChannelId = liveEpgChannelId,
                    limit = 10,
                )
            }
            loading.visibility = View.GONE
            if (epg.isEmpty()) {
                loading.visibility = View.VISIBLE
                loading.text = getString(R.string.epg_unavailable)
                return@launch
            }
            val now = System.currentTimeMillis() / 1000L
            list.adapter = EpgAdapter(epg, now)
        }
    }

    override fun onStop() {
        saveProgress()
        when {
            isLive -> stopLivePlaybackNow()
            else -> stopVodPlaybackNow()
        }
        super.onStop()
    }

    private fun stopVodPlaybackNow() {
        try {
            player?.playWhenReady = false
            player?.stop()
            player?.clearMediaItems()
        } catch (_: Throwable) {
        }
    }

    private fun stopLivePlaybackNow() {
        playbackMonitor?.stop()
        try {
            player?.stop()
            player?.clearMediaItems()
        } catch (_: Throwable) {
        }
        liveStoppedInBackground = true
    }

    private val liveStreamStopAction = {
        if (isLive && !isFinishing) {
            stopLivePlaybackNow()
        }
    }

    private val vodStreamStopAction = {
        if (!isLive) {
            stopVodPlaybackNow()
        }
    }

    override fun onDestroy() {
        if (isLive) {
            com.gadir.tv.data.LiveStreamSupervisor.unregister(liveStreamStopAction)
            com.gadir.tv.data.LivePlaybackGate.release()
        } else {
            com.gadir.tv.data.VodStreamSupervisor.unregister(vodStreamStopAction)
        }
        hideHandler.removeCallbacksAndMessages(null)
        playbackMonitor?.stop()
        playbackMonitor = null
        player?.removeListener(playerListener)
        player?.release()
        player = null
        super.onDestroy()
    }

    private fun saveProgress() {
        val exo = player ?: return
        val kind = intent.getStringExtra(EXTRA_KIND).orEmpty()
        val contentId = intent.getStringExtra(EXTRA_CONTENT_ID).orEmpty()
        if (kind.isEmpty() || contentId.isEmpty() || kind == ResumeStore.KIND_LIVE) return
        val duration = exo.duration
        if (duration <= 0L) return
        resumeStore.save(
            kind = kind,
            id = contentId,
            positionMs = exo.currentPosition,
            durationMs = duration,
            title = intent.getStringExtra(EXTRA_TITLE).orEmpty(),
            imageUrl = intent.getStringExtra(EXTRA_IMAGE_URL).orEmpty(),
            extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mp4" },
        )
    }

    companion object {
        private const val EXTRA_TITLE = "title"
        private const val EXTRA_URL = "url"
        private const val EXTRA_KIND = "kind"
        private const val EXTRA_CONTENT_ID = "content_id"
        private const val EXTRA_IMAGE_URL = "image_url"
        private const val EXTRA_EXTENSION = "extension"
        private const val EXTRA_POSITION_MS = "position_ms"
        private const val EXTRA_STREAM_ID = "stream_id"
        private const val EXTRA_EPG_CHANNEL_ID = "epg_channel_id"
        private const val EXTRA_ALTERNATE_URLS = "alternate_urls"
        private const val EXTRA_DISABLE_VLC_FALLBACK = "disable_vlc_fallback"
        private const val SEEK_STEP_MS = 10_000L
        private const val CONTROLS_HIDE_MS = 4_000L
        private const val ZAP_RECONNECT_DELAY_MS = 500L

        fun intent(
            context: Context,
            title: String,
            url: String,
            kind: String = ResumeStore.KIND_LIVE,
            contentId: String = "",
            imageUrl: String = "",
            extension: String = "mp4",
            positionMs: Long = 0L,
            streamId: Int = 0,
            epgChannelId: String = "",
            alternateUrls: List<String> = emptyList(),
            disableVlcFallback: Boolean = false,
        ): Intent = Intent(context, PlayerActivity::class.java)
            .putExtra(EXTRA_TITLE, title)
            .putExtra(EXTRA_URL, url)
            .putExtra(EXTRA_KIND, kind)
            .putExtra(EXTRA_CONTENT_ID, contentId)
            .putExtra(EXTRA_IMAGE_URL, imageUrl)
            .putExtra(EXTRA_EXTENSION, extension)
            .putExtra(EXTRA_POSITION_MS, positionMs)
            .putExtra(EXTRA_STREAM_ID, streamId)
            .putExtra(EXTRA_EPG_CHANNEL_ID, epgChannelId)
            .putStringArrayListExtra(EXTRA_ALTERNATE_URLS, ArrayList(alternateUrls))
            .putExtra(EXTRA_DISABLE_VLC_FALLBACK, disableVlcFallback)
    }
}

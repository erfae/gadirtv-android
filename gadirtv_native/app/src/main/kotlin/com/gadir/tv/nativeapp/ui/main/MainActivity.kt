package com.gadir.tv.nativeapp.ui.main

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.nativeapp.R
import com.gadir.tv.nativeapp.data.PlaylistRepository
import com.gadir.tv.nativeapp.data.XtreamApi
import com.gadir.tv.nativeapp.model.Category
import com.gadir.tv.nativeapp.model.LiveChannel
import com.gadir.tv.nativeapp.ui.player.PlayerActivity

class MainActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private var miniPlayer: ExoPlayer? = null
    private var selectedCategoryId: String? = null

    private lateinit var categoryList: RecyclerView
    private lateinit var channelList: RecyclerView
    private lateinit var previewTitle: TextView

    private val categories = mutableListOf<Category>()
    private val channels = mutableListOf<LiveChannel>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val profile = PlaylistRepository.profile
        if (profile == null) {
            finish()
            return
        }

        findViewById<TextView>(R.id.profileLabel).text = profile.name

        categoryList = findViewById(R.id.categoryList)
        channelList = findViewById(R.id.channelList)
        previewTitle = findViewById(R.id.previewTitle)

        categoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)

        categories.clear()
        categories.add(Category(id = "", name = getString(R.string.category_all)))
        categories.addAll(PlaylistRepository.categories)

        categoryList.adapter = CategoryAdapter(categories) { cat ->
            selectedCategoryId = cat.id.ifEmpty { null }
            reloadChannels()
        }

        reloadChannels()

        miniPlayer = ExoPlayer.Builder(this).build().also { player ->
            findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).player = player
            player.playWhenReady = true
        }
    }

    private fun reloadChannels() {
        channels.clear()
        channels.addAll(PlaylistRepository.channelsFor(selectedCategoryId))
        channelList.adapter = ChannelAdapter(channels) { channel ->
            previewChannel(channel)
        }
        if (channels.isNotEmpty()) {
            channelList.post { channelList.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus() }
        }
    }

    private fun previewChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        previewTitle.text = channel.name
        val url = api.streamUrl(profile, channel.streamId)
        miniPlayer?.setMediaItem(MediaItem.fromUri(url))
        miniPlayer?.prepare()
    }

    fun openFullscreen(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        val url = api.streamUrl(profile, channel.streamId)
        startActivity(
            PlayerActivity.intent(this, channel.name, url),
        )
    }

    override fun onStop() {
        super.onStop()
        miniPlayer?.pause()
    }

    override fun onDestroy() {
        miniPlayer?.release()
        miniPlayer = null
        super.onDestroy()
    }
}

package com.gadir.tv.ui.main

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.ui.player.PlayerActivity
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.gadir.tv.ui.series.SeriesDetailActivity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private var miniPlayer: ExoPlayer? = null
    private var selectedLiveCategoryId: String? = null
    private var selectedCatalogCategoryId: String? = null
    private var currentTab = Tab.LIVE

    private lateinit var tabLive: TextView
    private lateinit var tabMovies: TextView
    private lateinit var tabSeries: TextView
    private lateinit var panelLive: View
    private lateinit var panelCatalog: View

    private lateinit var liveCategoryList: RecyclerView
    private lateinit var channelList: RecyclerView
    private lateinit var previewTitle: TextView

    private lateinit var catalogCategoryList: RecyclerView
    private lateinit var catalogGrid: RecyclerView
    private lateinit var catalogLoading: TextView
    private lateinit var catalogEmpty: TextView

    private val liveCategories = mutableListOf<Category>()
    private val channels = mutableListOf<LiveChannel>()
    private val catalogCategories = mutableListOf<Category>()
    private val posterItems = mutableListOf<PosterAdapter.PosterItem>()

    private enum class Tab { LIVE, MOVIES, SERIES }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val profile = PlaylistRepository.profile
        if (profile == null) {
            finish()
            return
        }

        findViewById<TextView>(R.id.profileLabel).apply {
            text = profile.name
            setOnClickListener { openProfiles() }
        }

        tabLive = findViewById(R.id.tabLive)
        tabMovies = findViewById(R.id.tabMovies)
        tabSeries = findViewById(R.id.tabSeries)
        panelLive = findViewById(R.id.panelLive)
        panelCatalog = findViewById(R.id.panelMovies)

        liveCategoryList = panelLive.findViewById(R.id.categoryList)
        channelList = panelLive.findViewById(R.id.channelList)
        previewTitle = panelLive.findViewById(R.id.previewTitle)

        catalogCategoryList = panelCatalog.findViewById(R.id.catalogCategoryList)
        catalogGrid = panelCatalog.findViewById(R.id.catalogGrid)
        catalogLoading = panelCatalog.findViewById(R.id.catalogLoading)
        catalogEmpty = panelCatalog.findViewById(R.id.catalogEmpty)

        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
        catalogCategoryList.layoutManager = LinearLayoutManager(this)
        catalogGrid.layoutManager = GridLayoutManager(this, 5)

        setupLiveTab()
        setupTabNavigation()

        miniPlayer = ExoPlayer.Builder(this).build().also { player ->
            panelLive.findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).player = player
            player.playWhenReady = true
        }

        showTab(Tab.LIVE)
    }

    private fun setupLiveTab() {
        liveCategories.clear()
        liveCategories.add(Category(id = "", name = getString(R.string.category_all)))
        liveCategories.addAll(PlaylistRepository.categories)

        liveCategoryList.adapter = CategoryAdapter(liveCategories) { cat ->
            selectedLiveCategoryId = cat.id.ifEmpty { null }
            reloadChannels()
        }
        reloadChannels()
    }

    private fun setupTabNavigation() {
        tabLive.setOnClickListener { showTab(Tab.LIVE) }
        tabMovies.setOnClickListener { showTab(Tab.MOVIES) }
        tabSeries.setOnClickListener { showTab(Tab.SERIES) }

        tabLive.setOnFocusChangeListener { _, hasFocus -> if (hasFocus) showTab(Tab.LIVE) }
        tabMovies.setOnFocusChangeListener { _, hasFocus -> if (hasFocus) showTab(Tab.MOVIES) }
        tabSeries.setOnFocusChangeListener { _, hasFocus -> if (hasFocus) showTab(Tab.SERIES) }
    }

    private fun showTab(tab: Tab) {
        currentTab = tab
        tabLive.isSelected = tab == Tab.LIVE
        tabMovies.isSelected = tab == Tab.MOVIES
        tabSeries.isSelected = tab == Tab.SERIES

        when (tab) {
            Tab.LIVE -> {
                panelLive.visibility = View.VISIBLE
                panelCatalog.visibility = View.GONE
                miniPlayer?.playWhenReady = true
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                miniPlayer?.pause()
                setupCatalogTab(tab)
            }
        }
    }

    private fun setupCatalogTab(tab: Tab) {
        val cats = when (tab) {
            Tab.MOVIES -> PlaylistRepository.vodCategories
            Tab.SERIES -> PlaylistRepository.seriesCategories
            Tab.LIVE -> emptyList()
        }

        catalogCategories.clear()
        catalogCategories.addAll(cats)
        selectedCatalogCategoryId = null
        posterItems.clear()
        catalogGrid.adapter = PosterAdapter(posterItems) { item ->
            onPosterClick(tab, item)
        }

        if (catalogCategories.isEmpty()) {
            catalogLoading.visibility = View.GONE
            catalogEmpty.visibility = View.VISIBLE
            catalogEmpty.text = getString(R.string.catalog_empty)
            catalogCategoryList.adapter = CategoryAdapter(emptyList()) {}
            return
        }

        catalogCategoryList.adapter = CategoryAdapter(catalogCategories) { cat ->
            selectedCatalogCategoryId = cat.id
            loadCatalogItems(tab, cat.id)
        }

        val first = catalogCategories.first()
        selectedCatalogCategoryId = first.id
        loadCatalogItems(tab, first.id)
    }

    private fun loadCatalogItems(tab: Tab, categoryId: String) {
        when (tab) {
            Tab.MOVIES -> PlaylistRepository.cachedVod(categoryId)?.let {
                bindMovies(it)
                return
            }
            Tab.SERIES -> PlaylistRepository.cachedSeries(categoryId)?.let {
                bindSeries(it)
                return
            }
            Tab.LIVE -> Unit
        }

        val profile = PlaylistRepository.profile ?: return
        catalogLoading.visibility = View.VISIBLE
        catalogEmpty.visibility = View.GONE
        catalogGrid.visibility = View.INVISIBLE

        lifecycleScope.launch {
            val items = withContext(Dispatchers.IO) {
                when (tab) {
                    Tab.MOVIES -> {
                        val movies = api.vodStreams(profile, categoryId)
                        PlaylistRepository.cacheVod(categoryId, movies)
                        movies
                    }
                    Tab.SERIES -> {
                        val series = api.seriesList(profile, categoryId)
                        PlaylistRepository.cacheSeries(categoryId, series)
                        series
                    }
                    Tab.LIVE -> emptyList<Any>()
                }
            }

            catalogLoading.visibility = View.GONE
            catalogGrid.visibility = View.VISIBLE
            when (tab) {
                Tab.MOVIES -> bindMovies(items as List<VodMovie>)
                Tab.SERIES -> bindSeries(items as List<SeriesItem>)
                Tab.LIVE -> Unit
            }
        }
    }

    private fun bindMovies(movies: List<VodMovie>) {
        posterItems.clear()
        movies.forEach { movie ->
            posterItems.add(
                PosterAdapter.PosterItem(
                    id = movie.streamId,
                    title = movie.name,
                    imageUrl = movie.icon,
                    extension = movie.extension,
                ),
            )
        }
        updateCatalogGrid()
    }

    private fun bindSeries(series: List<SeriesItem>) {
        posterItems.clear()
        series.forEach { item ->
            posterItems.add(
                PosterAdapter.PosterItem(
                    id = item.seriesId,
                    title = item.name,
                    imageUrl = item.cover,
                ),
            )
        }
        updateCatalogGrid()
    }

    private fun updateCatalogGrid() {
        catalogGrid.adapter?.notifyDataSetChanged()
        catalogEmpty.visibility = if (posterItems.isEmpty()) View.VISIBLE else View.GONE

        if (posterItems.isNotEmpty()) {
            catalogGrid.post {
                catalogGrid.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
            }
        }
    }

    private fun onPosterClick(tab: Tab, item: PosterAdapter.PosterItem) {
        val profile = PlaylistRepository.profile ?: return
        when (tab) {
            Tab.MOVIES -> {
                val url = api.movieStreamUrl(profile, item.id, item.extension)
                startActivity(PlayerActivity.intent(this, item.title, url))
            }
            Tab.SERIES -> {
                val series = SeriesItem(
                    seriesId = item.id,
                    name = item.title,
                    cover = item.imageUrl,
                    categoryId = selectedCatalogCategoryId.orEmpty(),
                )
                startActivity(SeriesDetailActivity.intent(this, series))
            }
            Tab.LIVE -> Unit
        }
    }

    private fun reloadChannels() {
        channels.clear()
        channels.addAll(PlaylistRepository.channelsFor(selectedLiveCategoryId))
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
        startActivity(PlayerActivity.intent(this, channel.name, url))
    }

    private fun openProfiles() {
        startActivity(Intent(this, ProfilesActivity::class.java))
    }

    override fun onBackPressed() {
        openProfiles()
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

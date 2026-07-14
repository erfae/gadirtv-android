package com.gadir.tv.ui.main

import android.content.Intent
import com.gadir.tv.util.TrailerLauncher
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.CatalogPreloader
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Category
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.ui.movie.MovieDetailActivity
import com.gadir.tv.ui.player.LivePlaybackMonitor
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.PlayerFactory
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.gadir.tv.ui.search.SearchActivity
import com.gadir.tv.ui.series.SeriesDetailActivity
import com.gadir.tv.ui.settings.SettingsActivity
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.VolumeHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private lateinit var favoritesStore: FavoritesStore
    private lateinit var appSettings: AppSettings
    private var miniPlayer: ExoPlayer? = null
    private var miniPlaybackMonitor: LivePlaybackMonitor? = null
    private var currentPreviewChannel: LiveChannel? = null
    private var selectedLiveCategoryId: String? = null
    private var selectedCatalogCategoryId: String? = null
    private var currentTab = Tab.HOME

    private lateinit var tabHome: View
    private lateinit var tabLive: View
    private lateinit var tabMovies: View
    private lateinit var tabSeries: View
    private lateinit var panelHome: View
    private lateinit var panelLive: View
    private lateinit var panelCatalog: View

    private lateinit var liveCategoryList: RecyclerView
    private lateinit var channelList: RecyclerView
    private lateinit var previewTitle: TextView
    private lateinit var epgNow: TextView
    private lateinit var epgNext: TextView

    private lateinit var catalogCategoryList: RecyclerView
    private lateinit var catalogGrid: RecyclerView
    private lateinit var catalogLoading: TextView
    private lateinit var catalogEmpty: TextView

    private lateinit var heroImage: ImageView
    private lateinit var heroType: TextView
    private lateinit var heroTitle: TextView
    private lateinit var heroSubtitle: TextView
    private lateinit var heroPlot: TextView
    private lateinit var heroPlay: TextView
    private lateinit var heroTrailer: TextView
    private lateinit var heroPoster: ImageView
    private lateinit var homeLoading: TextView
    private lateinit var homeEmpty: TextView
    private lateinit var favoritesRailTitle: TextView
    private lateinit var favoritesRail: RecyclerView
    private lateinit var resumeRailTitle: TextView
    private lateinit var resumeRail: RecyclerView
    private lateinit var moviesRail: RecyclerView
    private lateinit var seriesRail: RecyclerView

    private val liveCategories = mutableListOf<Category>()
    private val channels = mutableListOf<LiveChannel>()
    private val catalogCategories = mutableListOf<Category>()
    private val posterItems = mutableListOf<PosterAdapter.PosterItem>()
    private val favoriteItems = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val resumeItems = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentMovies = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentSeries = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val heroItems = mutableListOf<HeroItem>()
    private var heroPlotRequestId = 0
    private var heroTrailerUrl: String? = null
    private var heroIndex = 0
    private var railPreviewItem: HomeRailAdapter.HomeRailItem? = null
    private var homeLoaded = false
    private val heroHandler = Handler(Looper.getMainLooper())
    private val heroRotateRunnable = object : Runnable {
        override fun run() {
            if (railPreviewItem != null) return
            if (heroItems.size > 1) {
                heroIndex = (heroIndex + 1) % heroItems.size
                bindHero(heroItems[heroIndex])
            }
            heroHandler.postDelayed(this, 8000L)
        }
    }

    private sealed class HeroItem {
        abstract val title: String
        abstract val imageUrl: String
        abstract val posterUrl: String

        data class Movie(val movie: VodMovie) : HeroItem() {
            override val title: String get() = movie.name
            override val imageUrl: String get() = movie.icon
            override val posterUrl: String get() = movie.icon
        }

        data class Series(val series: SeriesItem) : HeroItem() {
            override val title: String get() = series.name
            override val imageUrl: String get() = series.cover
            override val posterUrl: String get() = series.cover
        }

        data class Rail(val item: HomeRailAdapter.HomeRailItem) : HeroItem() {
            override val title: String get() = item.title
            override val imageUrl: String get() = item.imageUrl
            override val posterUrl: String get() = item.imageUrl
        }
    }

    private enum class Tab { HOME, LIVE, MOVIES, SERIES }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val profile = PlaylistRepository.profile
        if (profile == null) {
            finish()
            return
        }

        favoritesStore = FavoritesStore(this)
        resumeStore = ResumeStore(this)
        appSettings = AppSettings(this)

        findViewById<TextView>(R.id.profileLabel).text = profile.name
        findViewById<TextView>(R.id.btnSearch).setOnClickListener {
            startActivity(Intent(this, SearchActivity::class.java))
        }
        findViewById<TextView>(R.id.btnSettings).setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        findViewById<TextView>(R.id.btnLogout).setOnClickListener { logoutUser() }
        findViewById<TextView>(R.id.btnExit).setOnClickListener { exitApp() }

        tabHome = findViewById(R.id.tabHome)
        tabLive = findViewById(R.id.tabLive)
        tabMovies = findViewById(R.id.tabMovies)
        tabSeries = findViewById(R.id.tabSeries)
        panelHome = findViewById(R.id.panelHome)
        panelLive = findViewById(R.id.panelLive)
        panelCatalog = findViewById(R.id.panelMovies)

        liveCategoryList = panelLive.findViewById(R.id.categoryList)
        channelList = panelLive.findViewById(R.id.channelList)
        previewTitle = panelLive.findViewById(R.id.previewTitle)
        epgNow = panelLive.findViewById(R.id.epgNow)
        epgNext = panelLive.findViewById(R.id.epgNext)

        catalogCategoryList = panelCatalog.findViewById(R.id.catalogCategoryList)
        catalogGrid = panelCatalog.findViewById(R.id.catalogGrid)
        catalogLoading = panelCatalog.findViewById(R.id.catalogLoading)
        catalogEmpty = panelCatalog.findViewById(R.id.catalogEmpty)

        heroImage = panelHome.findViewById(R.id.heroImage)
        heroType = panelHome.findViewById(R.id.heroType)
        heroTitle = panelHome.findViewById(R.id.heroTitle)
        heroSubtitle = panelHome.findViewById(R.id.heroSubtitle)
        heroPlot = panelHome.findViewById(R.id.heroPlot)
        heroPlay = panelHome.findViewById(R.id.heroPlay)
        heroTrailer = panelHome.findViewById(R.id.heroTrailer)
        heroPoster = panelHome.findViewById(R.id.heroPoster)
        homeLoading = panelHome.findViewById(R.id.homeLoading)
        homeEmpty = panelHome.findViewById(R.id.homeEmpty)
        favoritesRailTitle = panelHome.findViewById(R.id.favoritesRailTitle)
        favoritesRail = panelHome.findViewById(R.id.favoritesRail)
        resumeRailTitle = panelHome.findViewById(R.id.resumeRailTitle)
        resumeRail = panelHome.findViewById(R.id.resumeRail)
        moviesRail = panelHome.findViewById(R.id.moviesRail)
        seriesRail = panelHome.findViewById(R.id.seriesRail)

        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
        catalogCategoryList.layoutManager = LinearLayoutManager(this)
        catalogGrid.layoutManager = GridLayoutManager(this, 5)
        favoritesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        resumeRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        moviesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seriesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)

        heroPlay.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus) {
                railPreviewItem = null
                bindHero(heroItems.getOrNull(heroIndex) ?: return@setOnFocusChangeListener)
                startHeroRotation()
            }
        }

        setupLiveTab()
        setupTabNavigation()
        heroPlay.setOnClickListener { playHero() }
        heroTrailer.setOnClickListener { openHeroTrailer() }

        setupMiniPlayer()

        lifecycleScope.launch(Dispatchers.IO) {
            val activeProfile = PlaylistRepository.profile ?: return@launch
            runCatching { CatalogPreloader.preloadRemaining(api, activeProfile) }
        }

        showTab(Tab.HOME)
    }

    private fun setupLiveTab() {
        liveCategories.clear()
        liveCategories.add(Category(id = "", name = getString(R.string.category_all)))
        liveCategories.add(
            Category(
                id = FavoritesStore.FAVORITES_CATEGORY_ID,
                name = getString(R.string.category_favorites),
            ),
        )
        liveCategories.addAll(PlaylistRepository.categories)

        liveCategoryList.adapter = CategoryAdapter(
            items = liveCategories,
            onClick = { cat ->
                selectedLiveCategoryId = when (cat.id) {
                    "" -> null
                    FavoritesStore.FAVORITES_CATEGORY_ID -> FavoritesStore.FAVORITES_CATEGORY_ID
                    else -> cat.id
                }
                reloadChannels(keepCategoryFocus = true)
            },
            onMoveRight = { focusFirstChannel() },
        )
        reloadChannels()
    }

    private fun focusFirstChannel() {
        if (channels.isEmpty()) return
        channelList.post {
            channelList.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
        }
    }

    private fun focusCategoryList() {
        liveCategoryList.post {
            liveCategoryList.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
        }
    }

    private fun focusCatalogCategoryList() {
        catalogCategoryList.post {
            catalogCategoryList.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
        }
    }

    private fun focusFirstCatalogItem() {
        if (posterItems.isEmpty()) return
        catalogGrid.post {
            catalogGrid.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
        }
    }

    private fun setupTabNavigation() {
        bindNavTab(tabHome, Tab.HOME)
        bindNavTab(tabLive, Tab.LIVE)
        bindNavTab(tabMovies, Tab.MOVIES)
        bindNavTab(tabSeries, Tab.SERIES)
    }

    private fun bindNavTab(view: View, tab: Tab) {
        view.setOnClickListener { showTab(tab) }
    }

    private fun showTab(tab: Tab) {
        currentTab = tab
        tabHome.isSelected = tab == Tab.HOME
        tabLive.isSelected = tab == Tab.LIVE
        tabMovies.isSelected = tab == Tab.MOVIES
        tabSeries.isSelected = tab == Tab.SERIES

        when (tab) {
            Tab.HOME -> {
                panelHome.visibility = View.VISIBLE
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.GONE
                miniPlayer?.pause()
                miniPlaybackMonitor?.stop()
                if (!homeLoaded) {
                    loadHome()
                } else {
                    startHeroRotation()
                }
            }
            Tab.LIVE -> {
                panelHome.visibility = View.GONE
                panelLive.visibility = View.VISIBLE
                panelCatalog.visibility = View.GONE
                stopHeroRotation()
                miniPlayer?.playWhenReady = true
                if (appSettings.autoplayPreview) {
                    miniPlaybackMonitor?.start()
                }
                focusCategoryList()
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelHome.visibility = View.GONE
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                stopHeroRotation()
                miniPlayer?.pause()
                miniPlaybackMonitor?.stop()
                setupCatalogTab(tab)
                focusCatalogCategoryList()
            }
        }
    }

    private fun loadHome() {
        val profile = PlaylistRepository.profile ?: return
        homeLoading.visibility = View.VISIBLE
        homeEmpty.visibility = View.GONE

        lifecycleScope.launch {
            val movies = withContext(Dispatchers.IO) {
                val cached = HomeLoader.recentMoviesFromCache()
                if (cached.isNotEmpty()) cached
                else HomeLoader.loadRecentMovies(api, profile)
            }
            val series = withContext(Dispatchers.IO) {
                val cached = HomeLoader.recentSeriesFromCache()
                if (cached.isNotEmpty()) cached
                else HomeLoader.loadRecentSeries(api, profile)
            }

            homeLoading.visibility = View.GONE
            homeLoaded = true

            recentMovies.clear()
            movies.forEach { movie ->
                recentMovies.add(
                    HomeRailAdapter.HomeRailItem(
                        id = movie.streamId,
                        title = movie.name,
                        imageUrl = movie.icon,
                        badge = getString(R.string.hero_type_movie),
                        kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                        extension = movie.extension,
                    ),
                )
            }

            recentSeries.clear()
            series.forEach { item ->
                recentSeries.add(
                    HomeRailAdapter.HomeRailItem(
                        id = item.seriesId,
                        title = item.name,
                        imageUrl = item.cover,
                        badge = getString(R.string.hero_type_series),
                        kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                    ),
                )
            }

            buildFavoriteItems()
            buildResumeItems()

            bindHomeRail(resumeRail, resumeItems)
            resumeRailTitle.visibility = if (resumeItems.isEmpty()) View.GONE else View.VISIBLE
            resumeRail.visibility = if (resumeItems.isEmpty()) View.GONE else View.VISIBLE

            bindHomeRail(favoritesRail, favoriteItems)
            bindHomeRail(moviesRail, recentMovies)
            bindHomeRail(seriesRail, recentSeries)

            favoritesRailTitle.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE
            favoritesRail.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE

            heroItems.clear()
            recentMovies.take(6).forEach { heroItems.add(HeroItem.Rail(it)) }
            recentSeries.take(6).forEach { heroItems.add(HeroItem.Rail(it)) }
            heroIndex = 0
            railPreviewItem = null

            if (heroItems.isEmpty()) {
                homeEmpty.visibility = View.VISIBLE
            } else {
                homeEmpty.visibility = View.GONE
                bindHero(heroItems[heroIndex])
                startHeroRotation()
            }
        }
    }

    private fun buildResumeItems() {
        resumeItems.clear()
        resumeStore.loadAll().forEach { record ->
            val kind = when (record.kind) {
                ResumeStore.KIND_MOVIE -> HomeRailAdapter.HomeRailItem.KIND_MOVIE
                ResumeStore.KIND_SERIES -> HomeRailAdapter.HomeRailItem.KIND_SERIES
                else -> return@forEach
            }
            resumeItems.add(
                HomeRailAdapter.HomeRailItem(
                    id = record.id.toIntOrNull() ?: return@forEach,
                    title = record.title,
                    imageUrl = record.imageUrl,
                    badge = getString(R.string.rail_continue),
                    kind = kind,
                    extension = record.extension,
                    subtitle = getString(R.string.resume_progress, record.progressPercent),
                    resumePositionMs = record.positionMs,
                ),
            )
        }
    }

    private fun buildFavoriteItems() {
        favoriteItems.clear()
        val liveIds = favoritesStore.load(FavoritesStore.KIND_LIVE)
        PlaylistRepository.channelsFor(null)
            .filter { liveIds.contains(it.streamId) }
            .forEach { channel ->
                favoriteItems.add(
                    HomeRailAdapter.HomeRailItem(
                        id = channel.streamId,
                        title = channel.name,
                        imageUrl = channel.icon,
                        badge = getString(R.string.tab_live),
                        kind = HomeRailAdapter.HomeRailItem.KIND_LIVE,
                    ),
                )
            }

        val movieIds = favoritesStore.load(FavoritesStore.KIND_MOVIE)
        findFavoriteMovies(movieIds).forEach { movie ->
            favoriteItems.add(
                HomeRailAdapter.HomeRailItem(
                    id = movie.streamId,
                    title = movie.name,
                    imageUrl = movie.icon,
                    badge = getString(R.string.hero_type_movie),
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                    extension = movie.extension,
                ),
            )
        }

        val seriesIds = favoritesStore.load(FavoritesStore.KIND_SERIES)
        findFavoriteSeries(seriesIds).forEach { item ->
            favoriteItems.add(
                HomeRailAdapter.HomeRailItem(
                    id = item.seriesId,
                    title = item.name,
                    imageUrl = item.cover,
                    badge = getString(R.string.hero_type_series),
                    kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                ),
            )
        }
    }

    private fun findFavoriteMovies(ids: Set<Int>): List<VodMovie> {
        if (ids.isEmpty()) return emptyList()
        val found = mutableListOf<VodMovie>()
        val seen = mutableSetOf<Int>()
        PlaylistRepository.vodCategories.forEach { cat ->
            val cached = PlaylistRepository.cachedVod(cat.id).orEmpty()
            cached.forEach { movie ->
                if (ids.contains(movie.streamId) && seen.add(movie.streamId)) {
                    found.add(movie)
                }
            }
        }
        recentMovies.forEach { rail ->
            if (ids.contains(rail.id) && seen.add(rail.id)) {
                found.add(
                    VodMovie(
                        streamId = rail.id,
                        name = rail.title,
                        icon = rail.imageUrl,
                        categoryId = "",
                        extension = rail.extension,
                    ),
                )
            }
        }
        return found
    }

    private fun findFavoriteSeries(ids: Set<Int>): List<SeriesItem> {
        if (ids.isEmpty()) return emptyList()
        val found = mutableListOf<SeriesItem>()
        val seen = mutableSetOf<Int>()
        PlaylistRepository.seriesCategories.forEach { cat ->
            val cached = PlaylistRepository.cachedSeries(cat.id).orEmpty()
            cached.forEach { item ->
                if (ids.contains(item.seriesId) && seen.add(item.seriesId)) {
                    found.add(item)
                }
            }
        }
        recentSeries.forEach { rail ->
            if (ids.contains(rail.id) && seen.add(rail.id)) {
                found.add(
                    SeriesItem(
                        seriesId = rail.id,
                        name = rail.title,
                        cover = rail.imageUrl,
                        categoryId = "",
                    ),
                )
            }
        }
        return found
    }

    private fun bindHomeRail(list: RecyclerView, items: List<HomeRailAdapter.HomeRailItem>) {
        list.clipChildren = false
        list.clipToPadding = false
        list.adapter = HomeRailAdapter(
            items = items,
            onClick = { item -> onHomeRailClick(item) },
            onFocus = { item -> previewHomeRailItem(item) },
            onToggleFavorite = { item -> toggleHomeFavorite(item) },
            isFavorite = { item -> isHomeFavorite(item) },
        )
    }

    private fun isHomeFavorite(item: HomeRailAdapter.HomeRailItem): Boolean =
        favoritesStore.isFavorite(item.kind, item.id)

    private fun toggleHomeFavorite(item: HomeRailAdapter.HomeRailItem) {
        favoritesStore.toggle(item.kind, item.id)
        if (currentTab == Tab.HOME) {
            buildFavoriteItems()
            favoritesRailTitle.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE
            favoritesRail.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE
            bindHomeRail(favoritesRail, favoriteItems)
        }
        if (currentTab == Tab.LIVE &&
            selectedLiveCategoryId == FavoritesStore.FAVORITES_CATEGORY_ID
        ) {
            reloadChannels(keepCategoryFocus = true)
        }
    }

    private fun previewHomeRailItem(item: HomeRailAdapter.HomeRailItem) {
        railPreviewItem = item
        stopHeroRotation()
        bindHero(HeroItem.Rail(item))
    }

    private fun onHomeRailClick(item: HomeRailAdapter.HomeRailItem) {
        when (item.kind) {
            HomeRailAdapter.HomeRailItem.KIND_MOVIE -> {
                if (item.resumePositionMs > 0L) {
                    playMovie(
                        title = item.title,
                        streamId = item.id,
                        extension = item.extension,
                        imageUrl = item.imageUrl,
                        positionMs = item.resumePositionMs,
                    )
                } else {
                    openMovieDetail(
                        streamId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
                        extension = item.extension,
                    )
                }
            }
            HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                if (item.resumePositionMs > 0L) {
                    playSeriesEpisode(
                        title = item.title,
                        episodeId = item.id,
                        extension = item.extension,
                        imageUrl = item.imageUrl,
                        positionMs = item.resumePositionMs,
                    )
                } else {
                    startActivity(
                        SeriesDetailActivity.intent(
                            this,
                            SeriesItem(item.id, item.title, item.imageUrl, ""),
                        ),
                    )
                }
            }
            HomeRailAdapter.HomeRailItem.KIND_LIVE -> {
                val channel = PlaylistRepository.allChannels.firstOrNull { it.streamId == item.id }
                    ?: return
                openFullscreen(channel)
            }
        }
    }

    private fun openMovieDetail(
        streamId: Int,
        title: String,
        cover: String,
        extension: String = "mp4",
    ) {
        startActivity(
            MovieDetailActivity.intent(
                context = this,
                streamId = streamId,
                name = title,
                cover = cover,
                extension = extension,
            ),
        )
    }

    private fun playMovie(
        title: String,
        streamId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
    ) {
        val profile = PlaylistRepository.profile ?: return
        val url = api.movieStreamUrl(profile, streamId, extension)
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = title,
                url = url,
                kind = ResumeStore.KIND_MOVIE,
                contentId = streamId.toString(),
                imageUrl = imageUrl,
                extension = extension,
                positionMs = positionMs,
            ),
        )
    }

    private fun playSeriesEpisode(
        title: String,
        episodeId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
    ) {
        val profile = PlaylistRepository.profile ?: return
        val url = api.seriesStreamUrl(profile, episodeId, extension)
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = title,
                url = url,
                kind = ResumeStore.KIND_SERIES,
                contentId = episodeId.toString(),
                imageUrl = imageUrl,
                extension = extension,
                positionMs = positionMs,
            ),
        )
    }

    private fun bindHero(item: HeroItem) {
        heroPlotRequestId += 1
        val requestId = heroPlotRequestId
        heroTrailerUrl = null
        heroTrailer.visibility = View.GONE

        heroTitle.text = item.title
        heroSubtitle.text = ""
        heroPlot.text = getString(R.string.hero_plot_empty)

        when (item) {
            is HeroItem.Movie -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_movie),
                    playLabel = getString(R.string.hero_play),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                loadMoviePlot(item.movie.streamId, requestId)
            }
            is HeroItem.Series -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_series),
                    playLabel = getString(R.string.hero_play_series),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                loadSeriesPlot(item.series.seriesId, requestId)
            }
            is HeroItem.Rail -> {
                applyHeroMeta(
                    badge = item.item.badge,
                    playLabel = when (item.item.kind) {
                        HomeRailAdapter.HomeRailItem.KIND_SERIES -> getString(R.string.hero_play_series)
                        else -> getString(R.string.hero_play)
                    },
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                heroSubtitle.text = item.item.subtitle
                when (item.item.kind) {
                    HomeRailAdapter.HomeRailItem.KIND_MOVIE -> loadMoviePlot(item.item.id, requestId)
                    HomeRailAdapter.HomeRailItem.KIND_SERIES -> loadSeriesPlot(item.item.id, requestId)
                    HomeRailAdapter.HomeRailItem.KIND_LIVE -> Unit
                }
            }
        }
    }

    private fun applyHeroMeta(
        badge: String,
        playLabel: String,
        backdrop: String,
        poster: String,
    ) {
        heroType.text = badge.uppercase()
        heroPlay.text = playLabel
        loadHeroImage(heroImage, backdrop)
        loadHeroImage(heroPoster, poster)
    }

    private fun loadHeroImage(target: ImageView, url: String) {
        ImageLoader.loadPoster(target, url)
    }

    private fun showHeroTrailer(url: String?) {
        if (url.isNullOrBlank()) {
            heroTrailer.visibility = View.GONE
            heroTrailerUrl = null
        } else {
            heroTrailerUrl = url
            heroTrailer.visibility = View.VISIBLE
        }
    }

    private fun openHeroTrailer() {
        val url = heroTrailerUrl ?: return
        TrailerLauncher.open(this, url)
    }

    private fun loadMoviePlot(streamId: Int, requestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val info = withContext(Dispatchers.IO) { api.vodInfo(profile, streamId) }
            if (requestId != heroPlotRequestId) return@launch
            if (info == null) return@launch
            if (info.name.isNotBlank()) heroTitle.text = info.name
            heroPlot.text = info.plot.ifBlank { getString(R.string.hero_plot_empty) }
            heroSubtitle.text = listOf(info.genre, info.releaseDate, info.rating)
                .filter { it.isNotBlank() }
                .joinToString(" · ")
            val backdrop = info.backdrop.ifBlank { info.cover }
            if (backdrop.isNotEmpty()) loadHeroImage(heroImage, backdrop)
            if (info.cover.isNotEmpty()) loadHeroImage(heroPoster, info.cover)
            showHeroTrailer(info.trailerUrl.ifBlank { null })
        }
    }

    private fun loadSeriesPlot(seriesId: Int, requestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, seriesId) }
            if (requestId != heroPlotRequestId) return@launch
            if (detail == null) return@launch
            if (detail.name.isNotBlank()) heroTitle.text = detail.name
            heroPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }
            heroSubtitle.text = listOf(detail.genre, detail.releaseDate, detail.rating)
                .filter { it.isNotBlank() }
                .joinToString(" · ")
            if (detail.cover.isNotEmpty()) {
                val backdrop = detail.backdrop.ifBlank { detail.cover }
                loadHeroImage(heroImage, backdrop)
                loadHeroImage(heroPoster, detail.cover)
            }
            showHeroTrailer(detail.trailerUrl.ifBlank { null })
        }
    }

    private fun playHero() {
        val item = railPreviewItem
            ?: (heroItems.getOrNull(heroIndex) as? HeroItem.Rail)?.item
        if (item != null) {
            playHomeItem(item)
            return
        }
        when (val hero = heroItems.getOrNull(heroIndex)) {
            is HeroItem.Movie -> playMovie(
                title = hero.title,
                streamId = hero.movie.streamId,
                extension = hero.movie.extension,
                imageUrl = hero.movie.icon,
            )
            is HeroItem.Series -> {
                startActivity(SeriesDetailActivity.intent(this, hero.series))
            }
            is HeroItem.Rail -> playHomeItem(hero.item)
            null -> Unit
        }
    }

    private fun playHomeItem(item: HomeRailAdapter.HomeRailItem) {
        when (item.kind) {
            HomeRailAdapter.HomeRailItem.KIND_MOVIE -> playMovie(
                title = item.title,
                streamId = item.id,
                extension = item.extension,
                imageUrl = item.imageUrl,
                positionMs = item.resumePositionMs,
            )
            HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                if (item.resumePositionMs > 0L) {
                    playSeriesEpisode(
                        title = item.title,
                        episodeId = item.id,
                        extension = item.extension,
                        imageUrl = item.imageUrl,
                        positionMs = item.resumePositionMs,
                    )
                } else {
                    startActivity(
                        SeriesDetailActivity.intent(
                            this,
                            SeriesItem(item.id, item.title, item.imageUrl, ""),
                        ),
                    )
                }
            }
            HomeRailAdapter.HomeRailItem.KIND_LIVE -> {
                val channel = PlaylistRepository.allChannels.firstOrNull { it.streamId == item.id }
                    ?: return
                openFullscreen(channel)
            }
        }
    }

    private fun startHeroRotation() {
        heroHandler.removeCallbacks(heroRotateRunnable)
        if (heroItems.size > 1 && currentTab == Tab.HOME) {
            heroHandler.postDelayed(heroRotateRunnable, 8000L)
        }
    }

    private fun stopHeroRotation() {
        heroHandler.removeCallbacks(heroRotateRunnable)
    }

    private fun setupCatalogTab(tab: Tab) {
        val cats = when (tab) {
            Tab.MOVIES -> PlaylistRepository.vodCategories
            Tab.SERIES -> PlaylistRepository.seriesCategories
            Tab.LIVE, Tab.HOME -> emptyList()
        }

        catalogCategories.clear()
        catalogCategories.addAll(cats)
        selectedCatalogCategoryId = null
        posterItems.clear()
        catalogGrid.adapter = PosterAdapter(
            items = posterItems,
            onClick = { item -> onPosterClick(tab, item) },
            kind = when (tab) {
                Tab.MOVIES -> FavoritesStore.KIND_MOVIE
                Tab.SERIES -> FavoritesStore.KIND_SERIES
                else -> null
            },
            isFavorite = { item ->
                val kind = when (tab) {
                    Tab.MOVIES -> FavoritesStore.KIND_MOVIE
                    Tab.SERIES -> FavoritesStore.KIND_SERIES
                    else -> return@PosterAdapter false
                }
                favoritesStore.isFavorite(kind, item.id)
            },
            onToggleFavorite = { item ->
                val kind = when (tab) {
                    Tab.MOVIES -> FavoritesStore.KIND_MOVIE
                    Tab.SERIES -> FavoritesStore.KIND_SERIES
                    else -> return@PosterAdapter
                }
                favoritesStore.toggle(kind, item.id)
            },
        )

        if (catalogCategories.isEmpty()) {
            catalogLoading.visibility = View.GONE
            catalogEmpty.visibility = View.VISIBLE
            catalogEmpty.text = getString(R.string.catalog_empty)
            catalogCategoryList.adapter = CategoryAdapter(emptyList(), onClick = {})
            return
        }

        catalogCategoryList.adapter = CategoryAdapter(
            items = catalogCategories,
            onClick = { cat ->
                selectedCatalogCategoryId = cat.id
                loadCatalogItems(tab, cat.id)
            },
            onMoveRight = { focusFirstCatalogItem() },
        )

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
            Tab.LIVE, Tab.HOME -> Unit
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
                    Tab.LIVE, Tab.HOME -> emptyList<Any>()
                }
            }

            catalogLoading.visibility = View.GONE
            catalogGrid.visibility = View.VISIBLE
            when (tab) {
                Tab.MOVIES -> bindMovies(items as List<VodMovie>)
                Tab.SERIES -> bindSeries(items as List<SeriesItem>)
                Tab.LIVE, Tab.HOME -> Unit
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
    }

    private fun onPosterClick(tab: Tab, item: PosterAdapter.PosterItem) {
        when (tab) {
            Tab.MOVIES -> openMovieDetail(
                streamId = item.id,
                title = item.title,
                cover = item.imageUrl,
                extension = item.extension,
            )
            Tab.SERIES -> {
                val series = SeriesItem(
                    seriesId = item.id,
                    name = item.title,
                    cover = item.imageUrl,
                    categoryId = selectedCatalogCategoryId.orEmpty(),
                )
                startActivity(SeriesDetailActivity.intent(this, series))
            }
            Tab.LIVE, Tab.HOME -> Unit
        }
    }

    private fun reloadChannels(keepCategoryFocus: Boolean = false) {
        channels.clear()
        channels.addAll(
            when (selectedLiveCategoryId) {
                FavoritesStore.FAVORITES_CATEGORY_ID ->
                    PlaylistRepository.channelsFor(null).filter {
                        favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId)
                    }
                else -> PlaylistRepository.channelsFor(selectedLiveCategoryId)
            },
        )
        channelList.adapter = ChannelAdapter(
            items = channels,
            onFocus = { channel -> previewChannel(channel) },
            onMoveLeft = { focusCategoryList() },
            isFavorite = { favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId) },
            onToggleFavorite = { channel ->
                favoritesStore.toggle(FavoritesStore.KIND_LIVE, channel.streamId)
                if (selectedLiveCategoryId == FavoritesStore.FAVORITES_CATEGORY_ID) {
                    reloadChannels(keepCategoryFocus = true)
                } else {
                    channelList.adapter?.notifyDataSetChanged()
                }
            },
        )
        if (!keepCategoryFocus && channels.isNotEmpty()) {
            focusFirstChannel()
        }
    }

    private fun previewChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        currentPreviewChannel = channel
        previewTitle.text = channel.name
        epgNow.text = getString(R.string.epg_unavailable)
        epgNext.visibility = View.GONE
        if (appSettings.autoplayPreview) {
            val urls = LiveStreamUrls.candidates(api, profile, channel)
            val url = urls.first()
            miniPlayer?.apply {
                stop()
                clearMediaItems()
                setMediaItem(MediaItem.fromUri(url))
                prepare()
                volume = 1f
                playWhenReady = true
            }
            miniPlaybackMonitor?.start()
            miniPlaybackMonitor?.reset()
        } else {
            miniPlayer?.stop()
            miniPlayer?.clearMediaItems()
            miniPlaybackMonitor?.stop()
        }

        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpg(profile, channel.streamId, limit = 2)
            }
            if (previewTitle.text != channel.name) return@launch
            if (epg.isEmpty()) {
                epgNow.text = getString(R.string.epg_unavailable)
                epgNext.visibility = View.GONE
            } else {
                epgNow.text = epg[0].title
                if (epg.size > 1) {
                    epgNext.text = getString(R.string.epg_next) + ": " + epg[1].title
                    epgNext.visibility = View.VISIBLE
                } else {
                    epgNext.visibility = View.GONE
                }
            }
        }
    }

    fun openFullscreen(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        miniPlayer?.stop()
        miniPlayer?.clearMediaItems()
        val urls = LiveStreamUrls.candidates(api, profile, channel)
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = channel.name,
                url = urls.first(),
                kind = ResumeStore.KIND_LIVE,
                contentId = channel.streamId.toString(),
                imageUrl = channel.icon,
                streamId = channel.streamId,
                extension = channel.extension,
                alternateUrls = urls.drop(1),
            ),
        )
    }

    private fun logoutUser() {
        ProfileStore(this).clearActive()
        PlaylistRepository.clear()
        startActivity(
            Intent(this, ProfilesActivity::class.java)
                .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK),
        )
        finish()
    }

    private fun exitApp() {
        finishAffinity()
    }

    override fun onBackPressed() {
        when (currentTab) {
            Tab.HOME -> logoutUser()
            else -> showTab(Tab.HOME)
        }
    }

    override fun onStop() {
        super.onStop()
        miniPlayer?.pause()
        stopHeroRotation()
    }

    override fun onResume() {
        super.onResume()
        if (currentTab == Tab.LIVE && appSettings.autoplayPreview) {
            currentPreviewChannel?.let { previewChannel(it) }
        }
    }

    override fun onDestroy() {
        stopHeroRotation()
        miniPlaybackMonitor?.stop()
        miniPlaybackMonitor = null
        miniPlayer?.release()
        miniPlayer = null
        super.onDestroy()
    }

    private fun setupMiniPlayer() {
        panelLive.findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).apply {
            useController = false
            setShowBuffering(androidx.media3.ui.PlayerView.SHOW_BUFFERING_NEVER)
        }
        val noSignal = panelLive.findViewById<View>(R.id.miniNoSignal)
        panelLive.findViewById<View>(R.id.btnNoSignalSettings).setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        miniPlayer = PlayerFactory.create(this).also { player ->
            panelLive.findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).player = player
            player.playWhenReady = true
            val previewOverlay = panelLive.findViewById<View>(R.id.miniPreviewOverlay)
            player.addListener(object : androidx.media3.common.Player.Listener {
                override fun onIsPlayingChanged(isPlaying: Boolean) {
                    if (!appSettings.autoplayPreview) return
                    val showInfo = !isPlaying
                    previewTitle.visibility = if (showInfo) View.VISIBLE else View.GONE
                    previewOverlay.visibility = if (showInfo) View.VISIBLE else View.GONE
                }
            })
            miniPlaybackMonitor = LivePlaybackMonitor(player, noSignal)
        }
        panelLive.findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
        }
        panelLive.findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
        }
        panelLive.findViewById<ImageButton>(R.id.btnFullscreen).setOnClickListener {
            currentPreviewChannel?.let { openFullscreen(it) }
        }
    }
}

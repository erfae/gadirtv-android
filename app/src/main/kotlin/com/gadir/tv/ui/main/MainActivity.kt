package com.gadir.tv.ui.main

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.gadir.tv.R
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
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
    private lateinit var favoritesStore: FavoritesStore
    private var miniPlayer: ExoPlayer? = null
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
    private lateinit var heroPoster: ImageView
    private lateinit var homeLoading: TextView
    private lateinit var homeEmpty: TextView
    private lateinit var favoritesRailTitle: TextView
    private lateinit var favoritesRail: RecyclerView
    private lateinit var moviesRail: RecyclerView
    private lateinit var seriesRail: RecyclerView

    private val liveCategories = mutableListOf<Category>()
    private val channels = mutableListOf<LiveChannel>()
    private val catalogCategories = mutableListOf<Category>()
    private val posterItems = mutableListOf<PosterAdapter.PosterItem>()
    private val favoriteItems = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentMovies = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentSeries = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val heroItems = mutableListOf<HeroItem>()
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

        findViewById<TextView>(R.id.profileLabel).text = profile.name
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
        heroPoster = panelHome.findViewById(R.id.heroPoster)
        homeLoading = panelHome.findViewById(R.id.homeLoading)
        homeEmpty = panelHome.findViewById(R.id.homeEmpty)
        favoritesRailTitle = panelHome.findViewById(R.id.favoritesRailTitle)
        favoritesRail = panelHome.findViewById(R.id.favoritesRail)
        moviesRail = panelHome.findViewById(R.id.moviesRail)
        seriesRail = panelHome.findViewById(R.id.seriesRail)

        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
        catalogCategoryList.layoutManager = LinearLayoutManager(this)
        catalogGrid.layoutManager = GridLayoutManager(this, 5)
        favoritesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
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

        panelLive.findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).apply {
            useController = false
            setShowBuffering(androidx.media3.ui.PlayerView.SHOW_BUFFERING_NEVER)
        }
        miniPlayer = ExoPlayer.Builder(this).build().also { player ->
            panelLive.findViewById<androidx.media3.ui.PlayerView>(R.id.miniPlayer).player = player
            player.playWhenReady = true
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
        tabHome.setOnClickListener { showTab(Tab.HOME) }
        tabLive.setOnClickListener { showTab(Tab.LIVE) }
        tabMovies.setOnClickListener { showTab(Tab.MOVIES) }
        tabSeries.setOnClickListener { showTab(Tab.SERIES) }
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
                startHeroRotation()
                homeLoaded = false
                loadHome()
            }
            Tab.LIVE -> {
                panelHome.visibility = View.GONE
                panelLive.visibility = View.VISIBLE
                panelCatalog.visibility = View.GONE
                stopHeroRotation()
                miniPlayer?.playWhenReady = true
                focusCategoryList()
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelHome.visibility = View.GONE
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                stopHeroRotation()
                miniPlayer?.pause()
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
                HomeLoader.loadRecentMovies(api, profile)
            }
            val series = withContext(Dispatchers.IO) {
                HomeLoader.loadRecentSeries(api, profile)
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

    private fun buildFavoriteItems() {
        favoriteItems.clear()
        val liveIds = favoritesStore.load(FavoritesStore.KIND_LIVE)
        PlaylistRepository.allChannels
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
        val profile = PlaylistRepository.profile ?: return
        when (item.kind) {
            HomeRailAdapter.HomeRailItem.KIND_MOVIE -> {
                val url = api.movieStreamUrl(profile, item.id, item.extension)
                startActivity(PlayerActivity.intent(this, item.title, url))
            }
            HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                startActivity(
                    SeriesDetailActivity.intent(
                        this,
                        SeriesItem(item.id, item.title, item.imageUrl, ""),
                    ),
                )
            }
            HomeRailAdapter.HomeRailItem.KIND_LIVE -> {
                val channel = PlaylistRepository.allChannels.firstOrNull { it.streamId == item.id }
                    ?: return
                openFullscreen(channel)
            }
        }
    }

    private fun bindHero(item: HeroItem) {
        heroTitle.text = item.title
        heroSubtitle.text = ""
        heroPlot.text = getString(R.string.hero_plot_empty)

        when (item) {
            is HeroItem.Movie -> applyHeroMeta(
                badge = getString(R.string.hero_type_movie),
                playLabel = getString(R.string.hero_play),
                backdrop = item.imageUrl,
                poster = item.posterUrl,
            )
            is HeroItem.Series -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_series),
                    playLabel = getString(R.string.hero_play_series),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                loadSeriesPlot(item.series.seriesId)
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
                    HomeRailAdapter.HomeRailItem.KIND_MOVIE -> loadMoviePlot(item.item.id)
                    HomeRailAdapter.HomeRailItem.KIND_SERIES -> loadSeriesPlot(item.item.id)
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
        if (url.isNotEmpty()) {
            Glide.with(this).load(url).into(target)
        } else {
            target.setImageResource(R.drawable.tv_banner)
        }
    }

    private fun loadMoviePlot(streamId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val info = withContext(Dispatchers.IO) { api.vodInfo(profile, streamId) }
            if (info == null) return@launch
            if (heroTitle.text != info.name && heroTitle.text.isNotEmpty()) return@launch
            if (info.name.isNotBlank()) heroTitle.text = info.name
            heroPlot.text = info.plot.ifBlank { getString(R.string.hero_plot_empty) }
            heroSubtitle.text = listOf(info.genre, info.releaseDate, info.rating)
                .filter { it.isNotBlank() }
                .joinToString(" · ")
            val backdrop = info.backdrop.ifBlank { info.cover }
            if (backdrop.isNotEmpty()) loadHeroImage(heroImage, backdrop)
            if (info.cover.isNotEmpty()) loadHeroImage(heroPoster, info.cover)
        }
    }

    private fun loadSeriesPlot(seriesId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, seriesId) }
            if (detail == null) return@launch
            heroPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }
            heroSubtitle.text = listOf(detail.genre, detail.releaseDate, detail.rating)
                .filter { it.isNotBlank() }
                .joinToString(" · ")
            if (detail.cover.isNotEmpty()) {
                loadHeroImage(heroImage, detail.cover)
                loadHeroImage(heroPoster, detail.cover)
            }
        }
    }

    private fun playHero() {
        val profile = PlaylistRepository.profile ?: return
        railPreviewItem?.let {
            onHomeRailClick(it)
            return
        }
        val item = heroItems.getOrNull(heroIndex) ?: return
        when (item) {
            is HeroItem.Movie -> {
                val url = api.movieStreamUrl(profile, item.movie.streamId, item.movie.extension)
                startActivity(PlayerActivity.intent(this, item.title, url))
            }
            is HeroItem.Series -> {
                startActivity(SeriesDetailActivity.intent(this, item.series))
            }
            is HeroItem.Rail -> onHomeRailClick(item.item)
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
            Tab.LIVE, Tab.HOME -> Unit
        }
    }

    private fun reloadChannels(keepCategoryFocus: Boolean = false) {
        channels.clear()
        channels.addAll(
            when (selectedLiveCategoryId) {
                FavoritesStore.FAVORITES_CATEGORY_ID ->
                    PlaylistRepository.allChannels.filter {
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
        previewTitle.text = channel.name
        epgNow.text = getString(R.string.epg_unavailable)
        epgNext.visibility = View.GONE
        val url = api.streamUrl(profile, channel.streamId)
        miniPlayer?.setMediaItem(MediaItem.fromUri(url))
        miniPlayer?.prepare()

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
        val url = api.streamUrl(profile, channel.streamId)
        startActivity(PlayerActivity.intent(this, channel.name, url))
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

    override fun onDestroy() {
        stopHeroRotation()
        miniPlayer?.release()
        miniPlayer = null
        super.onDestroy()
    }
}

package com.gadir.tv.ui.main

import android.content.Intent
import android.view.KeyEvent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.core.widget.NestedScrollView
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.BootstrapLoader
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Category
import com.gadir.tv.model.EpgEntry
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.Profile
import com.gadir.tv.model.VodMovie
import com.gadir.tv.ui.movie.MovieDetailActivity
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.LiveVlcPlayer
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.ui.profiles.ProfilesActivity
import org.videolan.libvlc.util.VLCVideoLayout
import com.gadir.tv.ui.search.SearchActivity
import com.gadir.tv.ui.series.SeriesDetailActivity
import com.gadir.tv.ui.settings.SettingsActivity
import com.gadir.tv.util.AccountFormat
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.FocusScaleHelper
import com.gadir.tv.util.ChannelIconHelper
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.ProfileAvatarHelper
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.TvNavHelper
import com.gadir.tv.util.VolumeHelper
import com.gadir.tv.util.HeaderClockHelper
import java.util.Date
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private lateinit var favoritesStore: FavoritesStore
    private lateinit var liveChannelStore: LiveChannelStore
    private lateinit var appSettings: AppSettings
    private var miniVlcPlayer: LiveVlcPlayer? = null
    private var miniVlcView: VLCVideoLayout? = null
    private var channelAdapter: ChannelAdapter? = null
    private var currentPreviewChannel: LiveChannel? = null
    private var previewingStreamId: Int? = null
    private var previewUrls = listOf<String>()
    private var previewUrlIndex = 0
    private var previewWorkingUrl: String? = null
    private val epgCache = mutableMapOf<Int, List<EpgEntry>>()
    private val previewHandler = Handler(Looper.getMainLooper())
    private var pendingPreview: Runnable? = null
    private var previewToken = 0
    private var selectedLiveCategoryId: String? = null
    private var selectedCatalogCategoryId: String? = null
    private var movieCategoryId: String? = null
    private var seriesCategoryId: String? = null
    private var moviesCatalogReady = false
    private var seriesCatalogReady = false
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
    private lateinit var previewLogo: ImageView
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
    private lateinit var resumeRailTitle: TextView
    private lateinit var resumeRail: RecyclerView
    private lateinit var moviesRail: RecyclerView
    private lateinit var moviesRailTitle: TextView
    private lateinit var seriesRail: RecyclerView
    private lateinit var seriesRailTitle: TextView
    private lateinit var homeScrollView: NestedScrollView

    private lateinit var headerClock: TextView
    private lateinit var headerDate: TextView
    private lateinit var headerExpiration: TextView
    private lateinit var btnSearch: TextView
    private lateinit var btnReload: TextView
    private lateinit var btnSettings: TextView
    private lateinit var btnLogout: TextView
    private lateinit var btnExit: TextView
    private lateinit var profileAvatar: TextView

    private val clockHandler = Handler(Looper.getMainLooper())
    private val channels = mutableListOf<LiveChannel>()
    private val catalogCategories = mutableListOf<Category>()
    private val posterItems = mutableListOf<PosterAdapter.PosterItem>()
    private val favoriteItems = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val resumeItems = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentMovies = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentSeries = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val heroItems = mutableListOf<HeroItem>()
    private var heroPlotRequestId = 0
    private var heroIndex = 0
    private var railPreviewItem: HomeRailAdapter.HomeRailItem? = null
    private var homeLoaded = false
    private var shouldFocusHomeRailsOnResume = true
    private var catalogLoadToken = 0
    private var reloadingChannels = false
    private lateinit var miniPreviewControls: View
    private lateinit var previewContainer: View
    private val miniControlsHandler = Handler(Looper.getMainLooper())
    private val hideMiniControlsRunnable = Runnable { hideMiniPreviewControls() }
    private val heroHandler = Handler(Looper.getMainLooper())
    private val clockRunnable = object : Runnable {
        override fun run() {
            val now = Date()
            headerClock.text = HeaderClockHelper.formatTime(this@MainActivity, now)
            headerDate.text = HeaderClockHelper.formatDate(this@MainActivity, now)
            clockHandler.postDelayed(this, 1_000L)
        }
    }

    private val liveCategories = mutableListOf<Category>()
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
        liveChannelStore = LiveChannelStore(this)
        resumeStore = ResumeStore(this)
        appSettings = AppSettings(this)

        headerClock = findViewById(R.id.headerClock)
        headerDate = findViewById(R.id.headerDate)
        headerExpiration = findViewById(R.id.headerExpiration)
        profileAvatar = findViewById(R.id.profileAvatar)
        ProfileAvatarHelper.bind(
            findViewById(R.id.profileAvatarCircle),
            profileAvatar,
            profile,
        )
        updateHeaderAccountInfo()
        startHeaderClock()
        findViewById<TextView>(R.id.btnSearch).also { btnSearch = it }
        TvFocusHelper.bindButton(btnSearch) {
            startActivity(Intent(this, SearchActivity::class.java))
        }
        findViewById<TextView>(R.id.btnReload).also { btnReload = it }
        TvFocusHelper.bindButton(btnReload) { reloadPlaylist() }
        findViewById<TextView>(R.id.btnSettings).also { btnSettings = it }
        TvFocusHelper.bindButton(btnSettings) {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        findViewById<TextView>(R.id.btnLogout).also { btnLogout = it }
        TvFocusHelper.bindButton(btnLogout) { logoutUser() }
        findViewById<TextView>(R.id.btnExit).also { btnExit = it }
        TvFocusHelper.bindButton(btnExit) { exitApp() }

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
        previewLogo = panelLive.findViewById(R.id.previewLogo)
        epgNow = panelLive.findViewById(R.id.epgNow)
        epgNext = panelLive.findViewById(R.id.epgNext)
        previewContainer = panelLive.findViewById(R.id.previewContainer)

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
        resumeRailTitle = panelHome.findViewById(R.id.resumeRailTitle)
        resumeRail = panelHome.findViewById(R.id.resumeRail)
        moviesRail = panelHome.findViewById(R.id.moviesRail)
        moviesRailTitle = panelHome.findViewById(R.id.moviesRailTitle)
        seriesRail = panelHome.findViewById(R.id.seriesRail)
        seriesRailTitle = panelHome.findViewById(R.id.seriesRailTitle)
        homeScrollView = panelHome.findViewById(R.id.homeScrollView)

        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
        catalogCategoryList.layoutManager = LinearLayoutManager(this)
        configureCatalogGrid()
        favoritesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        resumeRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        moviesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seriesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)

        heroPlay.setOnFocusChangeListener { view, hasFocus ->
            FocusScaleHelper.applyConeFocus(view, hasFocus)
            if (hasFocus) {
                railPreviewItem = null
                bindHero(heroItems.getOrNull(heroIndex) ?: return@setOnFocusChangeListener)
                startHeroRotation()
            }
        }
        heroPlay.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    focusFirstHomeRail()
                    true
                }
                else -> false
            }
        }

        setupLiveTab()
        setupTabNavigation()
        heroPlay.setOnClickListener { openHeroContent() }
        tabHome.nextFocusUpId = R.id.btnSettings
        tabLive.nextFocusUpId = R.id.btnSettings
        tabMovies.nextFocusUpId = R.id.btnSettings
        tabSeries.nextFocusUpId = R.id.btnSettings
        tabHome.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN || currentTab != Tab.HOME) {
                return@setOnKeyListener false
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                focusLastHomeRail()
                return@setOnKeyListener true
            }
            false
        }

        setupMiniPlayer()
        setupHeaderFocusChain()

        showTab(Tab.HOME)
    }

    private fun setupLiveTab() {
        epgCache.clear()
        liveCategories.clear()
        liveCategories.add(Category(id = "", name = getString(R.string.category_all)))
        liveCategories.add(
            Category(
                id = FavoritesStore.FAVORITES_CATEGORY_ID,
                name = getString(R.string.category_favorites),
            ),
        )
        liveCategories.addAll(PlaylistRepository.categories)

        val applyLiveCategory: (Category) -> Unit = liveCat@{ cat ->
            val newId = when (cat.id) {
                "" -> null
                FavoritesStore.FAVORITES_CATEGORY_ID -> FavoritesStore.FAVORITES_CATEGORY_ID
                else -> cat.id
            }
            if (newId == selectedLiveCategoryId || reloadingChannels) return@liveCat
            val compact = DeviceUi.isCompact(this)
            try {
                if (!compact) stopLivePreview()
                selectedLiveCategoryId = newId
                (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
                reloadChannels(keepCategoryFocus = true)
            } catch (_: Exception) {
                reloadChannels(keepCategoryFocus = true)
            }
        }

        liveCategoryList.adapter = CategoryAdapter(
            items = liveCategories,
            selectedId = { liveSelectedCategoryKey() },
            onClick = applyLiveCategory,
            onFocus = if (DeviceUi.isCompact(this)) null else applyLiveCategory,
            onMoveRight = { focusFirstChannel() },
            onMoveUp = { focusBottomTab(Tab.LIVE) },
        )
        channelList.setItemViewCacheSize(24)
        channelAdapter = ChannelAdapter(
            items = channels,
            onFocus = focus@{ channel ->
                if (DeviceUi.isCompact(this) || reloadingChannels) return@focus
                schedulePreview(channel)
            },
            onOpen = { channel -> openFullscreen(channel) },
            onMoveLeft = { if (!DeviceUi.isCompact(this)) focusCategoryList() },
            onMoveRight = {
                if (DeviceUi.isCompact(this)) {
                    if (channels.isNotEmpty()) TvNavHelper.focusItem(channelList, 0)
                } else {
                    focusPreviewPanel()
                }
            },
            onMoveUp = { if (!DeviceUi.isCompact(this)) focusCategoryList() },
            isFavorite = { favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId) },
            onToggleFavorite = { channel ->
                favoritesStore.toggle(FavoritesStore.KIND_LIVE, channel.streamId)
                if (selectedLiveCategoryId == FavoritesStore.FAVORITES_CATEGORY_ID) {
                    reloadChannels(keepCategoryFocus = true)
                } else {
                    channelAdapter?.notifyDataSetChanged()
                }
            },
        )
        channelList.adapter = channelAdapter
        selectedLiveCategoryId = liveChannelStore.lastCategoryId?.takeIf { it.isNotEmpty() }
        reloadChannels(keepCategoryFocus = true)
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
    }

    private fun focusFirstChannel() {
        if (channels.isEmpty()) return
        TvNavHelper.focusItem(channelList, 0)
    }

    private fun startHeaderClock() {
        clockHandler.removeCallbacks(clockRunnable)
        clockRunnable.run()
    }

    private fun restoreLiveTabSession() {
        val savedCategory = liveChannelStore.lastCategoryId?.takeIf { it.isNotEmpty() }
        if (savedCategory != selectedLiveCategoryId) {
            selectedLiveCategoryId = savedCategory
            reloadChannels(keepCategoryFocus = true)
        }
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        restoreLastChannel()
    }

    private fun restoreLastChannel() {
        val lastId = liveChannelStore.lastStreamId
        if (lastId <= 0 || channels.isEmpty()) {
            focusCategoryList()
            return
        }
        val index = channels.indexOfFirst { it.streamId == lastId }
        if (index < 0) {
            focusCategoryList()
            return
        }
        channelList.scrollToPosition(index)
        TvNavHelper.focusItem(channelList, index)
    }

    private fun zapChannel(delta: Int, keepPreviewFocus: Boolean = false) {
        if (channels.isEmpty()) return
        val current = currentPreviewChannel
        val index = if (current != null) {
            channels.indexOfFirst { it.streamId == current.streamId }.takeIf { it >= 0 }
        } else {
            null
        } ?: channelList.getChildAdapterPosition(channelList.focusedChild).takeIf { it >= 0 }
        ?: 0
        val next = (index + delta).coerceIn(0, channels.lastIndex)
        if (next == index) return
        val channel = channels[next]
        channelList.scrollToPosition(next)
        if (keepPreviewFocus) {
            schedulePreview(channel)
            previewContainer.post { previewContainer.requestFocus() }
        } else {
            TvNavHelper.focusItem(channelList, next)
        }
    }

    private fun focusPreviewPanel() {
        if (currentPreviewChannel == null) return
        previewContainer.requestFocus()
    }

    private fun isFocusInPreviewPanel(): Boolean {
        val focused = currentFocus ?: return false
        return focused === previewContainer
    }

    private fun focusChannelAt(channel: LiveChannel?) {
        val target = channel ?: currentPreviewChannel ?: return
        val index = channels.indexOfFirst { it.streamId == target.streamId }
        if (index < 0) return
        TvNavHelper.focusItem(channelList, index)
    }

    private fun liveSelectedCategoryKey(): String =
        selectedLiveCategoryId ?: ""

    private fun focusHeader() {
        btnSettings.requestFocus()
    }

    private fun setupHeaderFocusChain() {
        val headerButtons = listOf(btnSearch, btnReload, btnSettings, btnLogout, btnExit)
        headerButtons.forEach { button ->
            button.setOnKeyListener { _, keyCode, event ->
                if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
                when (keyCode) {
                    KeyEvent.KEYCODE_DPAD_DOWN -> {
                        focusContentFromHeader()
                        true
                    }
                    else -> false
                }
            }
        }
        updateHeaderDownFocus()
    }

    private fun updateHeaderDownFocus() {
        val target = when (currentTab) {
            Tab.HOME -> heroPlay.id
            Tab.LIVE -> liveCategoryList.id
            Tab.MOVIES, Tab.SERIES -> catalogCategoryList.id
        }
        listOf(btnSearch, btnReload, btnSettings, btnLogout, btnExit).forEach {
            it.nextFocusDownId = target
        }
    }

    private fun focusContentFromHeader() {
        when (currentTab) {
            Tab.HOME -> heroPlay.requestFocus()
            Tab.LIVE -> focusCategoryList()
            Tab.MOVIES, Tab.SERIES -> focusCatalogCategoryList()
        }
    }

    private fun isFocusInHeader(): Boolean {
        val focused = currentFocus ?: return false
        return focused === btnSearch ||
            focused === btnReload ||
            focused === btnSettings ||
            focused === btnLogout ||
            focused === btnExit
    }

    private fun focusCategoryList() {
        stopLivePreview()
        TvNavHelper.focusItem(liveCategoryList, liveCategoryIndex())
    }

    private fun liveCategoryIndex(): Int {
        return when (selectedLiveCategoryId) {
            null -> 0
            FavoritesStore.FAVORITES_CATEGORY_ID -> 1
            else -> liveCategories.indexOfFirst { it.id == selectedLiveCategoryId }
                .takeIf { it >= 0 } ?: 0
        }
    }

    private fun focusCatalogCategoryList() {
        val index = catalogCategories.indexOfFirst { it.id == selectedCatalogCategoryId }
            .takeIf { it >= 0 } ?: 0
        TvNavHelper.focusItem(catalogCategoryList, index)
    }

    private fun catalogCategoryIndex(): Int {
        return catalogCategories.indexOfFirst { it.id == selectedCatalogCategoryId }
            .takeIf { it >= 0 } ?: 0
    }

    private fun focusFirstCatalogItem() {
        if (posterItems.isEmpty()) return
        TvNavHelper.focusItem(catalogGrid, 0)
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
        updateHeaderDownFocus()

        when (tab) {
            Tab.HOME -> {
                panelHome.visibility = View.VISIBLE
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.GONE
                miniVlcPlayer?.pause()
                hideMiniPreviewControls()
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
                VolumeHelper.boostOnPlaybackStart(this)
                if (appSettings.autoplayPreview) {
                    currentPreviewChannel?.let { schedulePreview(it) }
                }
                restoreLiveTabSession()
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelHome.visibility = View.GONE
                panelLive.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                stopHeroRotation()
                miniVlcPlayer?.pause()
                val ready = if (tab == Tab.MOVIES) moviesCatalogReady else seriesCatalogReady
                if (!ready) {
                    setupCatalogTab(tab)
                    if (tab == Tab.MOVIES) moviesCatalogReady = true else seriesCatalogReady = true
                } else {
                    restoreCatalogTab(tab)
                }
                focusCatalogCategoryList()
            }
        }
    }

    private fun loadHome() {
        val profile = PlaylistRepository.profile ?: return
        val cachedMovies = HomeLoader.recentMoviesFromCache()
        val cachedSeries = HomeLoader.recentSeriesFromCache()
        if (cachedMovies.isNotEmpty() || cachedSeries.isNotEmpty()) {
            applyHomeData(cachedMovies, cachedSeries)
            homeLoading.visibility = View.GONE
            homeLoaded = true
            focusHeroOnStart()
            refreshHomeIfNeeded(profile, cachedMovies.size)
            return
        }

        homeLoading.visibility = View.VISIBLE
        homeEmpty.visibility = View.GONE

        lifecycleScope.launch {
            val moviesDeferred = async(Dispatchers.IO) {
                HomeLoader.loadRecentMovies(api, profile)
            }
            val seriesDeferred = async(Dispatchers.IO) {
                HomeLoader.loadRecentSeries(api, profile)
            }
            val movies = moviesDeferred.await()
            val series = seriesDeferred.await()
            PlaylistRepository.setHomeRecent(movies, series)
            applyHomeData(movies, series)
            homeLoading.visibility = View.GONE
            homeLoaded = true
            focusHeroOnStart()
        }
    }

    private fun updateHeaderAccountInfo() {
        val account = PlaylistRepository.accountInfo
        val exp = AccountFormat.formatExpiration(account?.expDate.orEmpty())
        headerExpiration.text = getString(R.string.header_expires, exp)
        headerExpiration.visibility = View.VISIBLE
    }

    private fun refreshHomeIfNeeded(profile: Profile, cachedMovieCount: Int) {
        if (cachedMovieCount >= 12) return
        lifecycleScope.launch {
            val movies = withContext(Dispatchers.IO) {
                HomeLoader.loadRecentMovies(api, profile)
            }
            val series = withContext(Dispatchers.IO) {
                HomeLoader.loadRecentSeries(api, profile)
            }
            if (movies.size <= cachedMovieCount && series.size <= recentSeries.size) return@launch
            PlaylistRepository.setHomeRecent(movies, series)
            applyHomeData(movies, series)
        }
    }

    private fun focusHeroPlay() {
        if (currentTab != Tab.HOME || heroItems.isEmpty() || !shouldFocusHomeRailsOnResume) return
        heroPlay.post {
            if (heroPlay.requestFocus()) {
                shouldFocusHomeRailsOnResume = false
                return@post
            }
            heroPlay.postDelayed({
                if (heroPlay.requestFocus()) shouldFocusHomeRailsOnResume = false
            }, 120L)
        }
    }

    private fun focusHeroOnStart() {
        if (currentTab != Tab.HOME) return
        homeScrollView.post { homeScrollView.smoothScrollTo(0, 0) }
        if (heroItems.isEmpty()) {
            shouldFocusHomeRailsOnResume = false
            return
        }
        heroPlay.post {
            if (heroPlay.requestFocus()) {
                shouldFocusHomeRailsOnResume = false
            } else {
                heroPlay.postDelayed({
                    if (heroPlay.requestFocus()) shouldFocusHomeRailsOnResume = false
                }, 120L)
            }
        }
    }

    private fun focusFirstHomeRail() {
        when {
            resumeRail.visibility == View.VISIBLE && resumeItems.isNotEmpty() ->
                focusHomeRailItem(resumeRail, resumeRailTitle)
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
        }
    }

    private fun focusHomeRailItem(rail: RecyclerView, titleView: View? = null) {
        homeScrollView.post {
            val scrollY = (titleView?.top ?: rail.top).coerceAtLeast(0)
            homeScrollView.smoothScrollTo(0, scrollY)
            TvNavHelper.focusItem(rail, 0)
        }
    }

    private fun focusLastHomeRail() {
        when {
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            resumeRail.visibility == View.VISIBLE && resumeItems.isNotEmpty() ->
                focusHomeRailItem(resumeRail, resumeRailTitle)
            else -> heroPlay.requestFocus()
        }
    }

    private fun focusHomeRailBelowResume() {
        when {
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
            else -> tabHome.requestFocus()
        }
    }

    private fun focusHomeRailBelowFavorites() {
        when {
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
            else -> tabHome.requestFocus()
        }
    }

    private fun focusHomeRailAboveFavorites() {
        when {
            resumeRail.visibility == View.VISIBLE && resumeItems.isNotEmpty() ->
                focusHomeRailItem(resumeRail, resumeRailTitle)
            else -> heroPlay.requestFocus()
        }
    }

    private fun focusHomeRailAboveMovies() {
        when {
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            resumeRail.visibility == View.VISIBLE && resumeItems.isNotEmpty() ->
                focusHomeRailItem(resumeRail, resumeRailTitle)
            else -> heroPlay.requestFocus()
        }
    }

    private fun focusHomeRailBelowMovies() {
        when {
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
            else -> tabHome.requestFocus()
        }
    }

    private fun focusHomeRailAboveSeries() {
        when {
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            resumeRail.visibility == View.VISIBLE && resumeItems.isNotEmpty() ->
                focusHomeRailItem(resumeRail, resumeRailTitle)
            else -> heroPlay.requestFocus()
        }
    }

    private fun wireHomeRails() {
        bindHomeRail(
            resumeRail,
            resumeItems,
            onMoveUp = { heroPlay.requestFocus() },
            onMoveDown = { focusHomeRailBelowResume() },
        )
        bindHomeRail(
            favoritesRail,
            favoriteItems,
            onMoveUp = { focusHomeRailAboveFavorites() },
            onMoveDown = { focusHomeRailBelowFavorites() },
        )
        bindHomeRail(
            moviesRail,
            recentMovies,
            onMoveUp = { focusHomeRailAboveMovies() },
            onMoveDown = { focusHomeRailBelowMovies() },
        )
        bindHomeRail(
            seriesRail,
            recentSeries,
            onMoveUp = { focusHomeRailAboveSeries() },
            onMoveDown = { tabHome.requestFocus() },
        )
    }

    private fun applyHomeData(movies: List<VodMovie>, series: List<SeriesItem>) {
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

        wireHomeRails()
        resumeRailTitle.visibility = if (resumeItems.isEmpty()) View.GONE else View.VISIBLE
        resumeRail.visibility = if (resumeItems.isEmpty()) View.GONE else View.VISIBLE

        favoritesRailTitle.visibility =
            if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE
        favoritesRail.visibility =
            if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE

        moviesRailTitle.visibility = if (recentMovies.isEmpty()) View.GONE else View.VISIBLE
        moviesRail.visibility = if (recentMovies.isEmpty()) View.GONE else View.VISIBLE
        seriesRailTitle.visibility = if (recentSeries.isEmpty()) View.GONE else View.VISIBLE
        seriesRail.visibility = if (recentSeries.isEmpty()) View.GONE else View.VISIBLE

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
            focusHeroOnStart()
        }
    }

    private fun reloadPlaylist() {
        val profile = PlaylistRepository.profile ?: return
        android.widget.Toast.makeText(
            this,
            getString(R.string.loading_playlist),
            android.widget.Toast.LENGTH_SHORT,
        ).show()
        homeLoaded = false
        moviesCatalogReady = false
        seriesCatalogReady = false
        if (currentTab == Tab.HOME) {
            homeLoading.text = getString(R.string.loading_playlist)
            homeLoading.visibility = View.VISIBLE
        }
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching { BootstrapLoader.load(this@MainActivity, api, profile) }
            }
            result.onSuccess {
                setupLiveTab()
                loadHome()
                when (currentTab) {
                    Tab.MOVIES, Tab.SERIES -> {
                        moviesCatalogReady = true
                        seriesCatalogReady = true
                        setupCatalogTab(currentTab)
                    }
                    Tab.LIVE -> currentPreviewChannel?.let { schedulePreview(it) }
                    Tab.HOME -> Unit
                }
                android.widget.Toast.makeText(
                    this@MainActivity,
                    getString(R.string.playlist_reloaded),
                    android.widget.Toast.LENGTH_SHORT,
                ).show()
                updateHeaderAccountInfo()
            }.onFailure { e ->
                homeLoading.visibility = View.GONE
                android.widget.Toast.makeText(
                    this@MainActivity,
                    e.message ?: getString(R.string.connection_failed),
                    android.widget.Toast.LENGTH_LONG,
                ).show()
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

    private fun bindHomeRail(
        list: RecyclerView,
        items: List<HomeRailAdapter.HomeRailItem>,
        onMoveUp: (() -> Unit)? = null,
        onMoveDown: (() -> Unit)? = null,
    ) {
        list.clipChildren = false
        list.clipToPadding = false
        list.isNestedScrollingEnabled = false
        list.adapter = HomeRailAdapter(
            items = items,
            onClick = { item -> onHomeRailClick(item) },
            onFocus = { item -> previewHomeRailItem(item) },
            onToggleFavorite = { item -> toggleHomeFavorite(item) },
            isFavorite = { item -> isHomeFavorite(item) },
            onMoveUp = onMoveUp,
            onMoveDown = onMoveDown,
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
            wireHomeRails()
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
                    openMovieEntry(
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
                    openSeriesDetail(
                        seriesId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
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

    private fun openMovieEntry(
        streamId: Int,
        title: String,
        cover: String,
        extension: String = "mp4",
    ) {
        val record = resumeStore.get(ResumeStore.KIND_MOVIE, streamId.toString())
        if (record != null) {
            val profile = PlaylistRepository.profile ?: return
            ResumePlaybackHelper.play(
                context = this,
                resumeStore = resumeStore,
                request = PlaybackRequest(
                    title = title,
                    url = api.movieStreamUrl(profile, streamId, extension),
                    kind = ResumeStore.KIND_MOVIE,
                    contentId = streamId.toString(),
                    imageUrl = cover,
                    extension = extension,
                ),
            )
            return
        }
        openMovieDetail(streamId, title, cover, extension)
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

    private fun openSeriesDetail(seriesId: Int, title: String, cover: String) {
        startActivity(
            SeriesDetailActivity.intent(
                context = this,
                series = SeriesItem(
                    seriesId = seriesId,
                    name = title,
                    cover = cover,
                    categoryId = "",
                ),
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
        ResumePlaybackHelper.play(
            context = this,
            resumeStore = resumeStore,
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
        ResumePlaybackHelper.play(
            context = this,
            resumeStore = resumeStore,
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

    private fun playSeriesFirstEpisode(seriesId: Int, title: String, imageUrl: String) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, seriesId) } ?: return@launch
            val firstSeason = detail.seasons.keys.minByOrNull { it.toIntOrNull() ?: Int.MAX_VALUE }
            val episode = firstSeason?.let { detail.seasons[it]?.minByOrNull { ep -> ep.episodeNum } }
                ?: return@launch
            val episodeTitle = "$title — ${episode.season}x${episode.episodeNum}"
            playSeriesEpisode(
                title = episodeTitle,
                episodeId = episode.id,
                extension = episode.extension,
                imageUrl = episode.image.ifBlank { imageUrl },
            )
        }
    }

    private fun bindHero(item: HeroItem) {
        heroPlotRequestId += 1
        val requestId = heroPlotRequestId

        heroTitle.text = item.title
        heroSubtitle.text = ""
        heroPlot.text = getString(R.string.hero_plot_empty)

        when (item) {
            is HeroItem.Movie -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_movie),
                    playLabel = getString(R.string.hero_view_detail),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                loadMoviePlot(item.movie.streamId, requestId)
            }
            is HeroItem.Series -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_series),
                    playLabel = getString(R.string.hero_view_detail),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                )
                loadSeriesPlot(item.series.seriesId, requestId)
            }
            is HeroItem.Rail -> {
                applyHeroMeta(
                    badge = item.item.badge,
                    playLabel = when {
                        item.item.resumePositionMs > 0L -> getString(R.string.hero_play)
                        item.item.kind == HomeRailAdapter.HomeRailItem.KIND_SERIES ->
                            getString(R.string.hero_view_detail)
                        item.item.kind == HomeRailAdapter.HomeRailItem.KIND_MOVIE ->
                            getString(R.string.hero_view_detail)
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
        }
    }

    private fun openHeroContent() {
        val item = railPreviewItem
            ?: (heroItems.getOrNull(heroIndex) as? HeroItem.Rail)?.item
        if (item != null) {
            openHomeItem(item)
            return
        }
        when (val hero = heroItems.getOrNull(heroIndex)) {
            is HeroItem.Movie -> openMovieEntry(
                streamId = hero.movie.streamId,
                title = hero.title,
                cover = hero.movie.icon,
                extension = hero.movie.extension,
            )
            is HeroItem.Series -> openSeriesDetail(
                seriesId = hero.series.seriesId,
                title = hero.series.name,
                cover = hero.series.cover,
            )
            is HeroItem.Rail -> openHomeItem(hero.item)
            null -> Unit
        }
    }

    private fun openHomeItem(item: HomeRailAdapter.HomeRailItem) {
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
                    openMovieEntry(
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
                    openSeriesDetail(
                        seriesId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
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
        val savedId = when (tab) {
            Tab.MOVIES -> movieCategoryId
            Tab.SERIES -> seriesCategoryId
            else -> null
        }
        selectedCatalogCategoryId = savedId?.takeIf { id -> cats.any { it.id == id } }
            ?: cats.firstOrNull()?.id
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
            columnCount = catalogGridSpanCount(),
            onMoveLeft = { focusCatalogCategoryList() },
            onMoveUp = { focusCatalogCategoryList() },
        )

        if (catalogCategories.isEmpty()) {
            catalogLoading.visibility = View.GONE
            catalogEmpty.visibility = View.VISIBLE
            catalogEmpty.text = getString(R.string.catalog_empty)
            catalogCategoryList.adapter = CategoryAdapter(emptyList(), selectedId = { null }, onClick = {})
            return
        }

        bindCatalogCategoryAdapter(tab)
        when (tab) {
            Tab.MOVIES -> movieCategoryId = selectedCatalogCategoryId
            Tab.SERIES -> seriesCategoryId = selectedCatalogCategoryId
            else -> Unit
        }
        selectedCatalogCategoryId?.let { loadCatalogItems(tab, it) }
    }

    private fun restoreCatalogTab(tab: Tab) {
        val cats = when (tab) {
            Tab.MOVIES -> PlaylistRepository.vodCategories
            Tab.SERIES -> PlaylistRepository.seriesCategories
            else -> emptyList()
        }
        catalogCategories.clear()
        catalogCategories.addAll(cats)
        selectedCatalogCategoryId = when (tab) {
            Tab.MOVIES -> movieCategoryId
            Tab.SERIES -> seriesCategoryId
            else -> null
        }?.takeIf { id -> cats.any { it.id == id } }
            ?: cats.firstOrNull()?.id
        bindCatalogCategoryAdapter(tab)
        (catalogCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        selectedCatalogCategoryId?.let { loadCatalogItems(tab, it) }
    }

    private fun bindCatalogCategoryAdapter(tab: Tab) {
        val applyCategory: (Category) -> Unit = { cat ->
            if (cat.id != selectedCatalogCategoryId) {
                val oldIndex = catalogCategoryIndex()
                selectedCatalogCategoryId = cat.id
                when (tab) {
                    Tab.MOVIES -> movieCategoryId = cat.id
                    Tab.SERIES -> seriesCategoryId = cat.id
                    else -> Unit
                }
                (catalogCategoryList.adapter as? CategoryAdapter)?.refreshSelectionAt(
                    oldIndex,
                    catalogCategoryIndex(),
                )
                loadCatalogItems(tab, cat.id)
            }
        }

        catalogCategoryList.adapter = CategoryAdapter(
            items = catalogCategories,
            selectedId = { selectedCatalogCategoryId },
            onClick = applyCategory,
            onFocus = if (DeviceUi.isCompact(this)) null else applyCategory,
            onMoveRight = { focusFirstCatalogItem() },
            onMoveUp = { focusBottomTab(tab) },
        )
    }

    private fun configureCatalogGrid() {
        val span = if (DeviceUi.isCompact(this)) 3 else 5
        catalogGrid.layoutManager = GridLayoutManager(this, span)
    }

    private fun catalogGridSpanCount(): Int =
        (catalogGrid.layoutManager as? GridLayoutManager)?.spanCount ?: 5

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
        val token = ++catalogLoadToken
        catalogLoading.visibility = View.VISIBLE
        catalogEmpty.visibility = View.GONE
        catalogGrid.visibility = View.INVISIBLE

        lifecycleScope.launch {
            try {
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

                if (token != catalogLoadToken) return@launch
                catalogLoading.visibility = View.GONE
                catalogGrid.visibility = View.VISIBLE
                when (tab) {
                    Tab.MOVIES -> bindMovies(items as List<VodMovie>)
                    Tab.SERIES -> bindSeries(items as List<SeriesItem>)
                    Tab.LIVE, Tab.HOME -> Unit
                }
            } catch (_: Exception) {
                if (token != catalogLoadToken) return@launch
                catalogLoading.visibility = View.GONE
                catalogGrid.visibility = View.VISIBLE
                posterItems.clear()
                catalogGrid.adapter?.notifyDataSetChanged()
                catalogEmpty.visibility = View.VISIBLE
                catalogEmpty.text = getString(R.string.catalog_load_failed)
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
            Tab.MOVIES -> openMovieEntry(
                streamId = item.id,
                title = item.title,
                cover = item.imageUrl,
                extension = item.extension,
            )
            Tab.SERIES -> openSeriesDetail(
                seriesId = item.id,
                title = item.title,
                cover = item.imageUrl,
            )
            Tab.LIVE, Tab.HOME -> Unit
        }
    }

    private fun reloadChannels(keepCategoryFocus: Boolean = false) {
        if (reloadingChannels) return
        reloadingChannels = true
        try {
            channels.clear()
            channels.addAll(
                when (selectedLiveCategoryId) {
                    FavoritesStore.FAVORITES_CATEGORY_ID ->
                        PlaylistRepository.channelsFor(null, appSettings.liveSortMode).filter {
                            favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId)
                        }
                    else -> PlaylistRepository.channelsFor(selectedLiveCategoryId, appSettings.liveSortMode)
                },
            )
            channelList.post {
                try {
                    channelAdapter?.notifyDataSetChanged()
                    if (!keepCategoryFocus && channels.isNotEmpty() && !DeviceUi.isCompact(this)) {
                        focusFirstChannel()
                    }
                } finally {
                    reloadingChannels = false
                }
            }
        } catch (_: Exception) {
            channels.clear()
            channelList.post {
                channelAdapter?.notifyDataSetChanged()
                reloadingChannels = false
            }
        }
    }

    private fun stopLivePreview() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        previewToken++
        cancelMiniPreviewPlayback()
        currentPreviewChannel = null
        previewingStreamId = null
        previewUrls = emptyList()
        previewUrlIndex = 0
        previewWorkingUrl = null
        setPreviewVideoVisible(false)
        miniVlcView?.alpha = 0f
        previewLogo.visibility = View.GONE
        panelLive.findViewById<View>(R.id.miniNoSignal).visibility = View.GONE
        previewTitle.text = getString(R.string.select_channel)
        epgNow.text = getString(R.string.epg_unavailable)
        epgNext.visibility = View.GONE
    }

    private fun schedulePreview(channel: LiveChannel) {
        if (DeviceUi.isCompact(this)) {
            updatePreviewInfo(channel)
            return
        }
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        val channelChanged = previewingStreamId != channel.streamId
        if (!channelChanged && previewIsSettled()) {
            updatePreviewInfo(channel)
            return
        }
        if (!channelChanged && previewUrlIndex > 0 && previewUrls.isNotEmpty()) {
            updatePreviewInfo(channel)
            return
        }
        if (channelChanged) {
            previewToken++
            cancelMiniPreviewPlayback()
            recreateMiniVlcPlayer()
            setPreviewVideoVisible(false)
            panelLive.findViewById<View>(R.id.miniNoSignal).visibility = View.GONE
        }
        updatePreviewInfo(channel)
        val token = previewToken
        val task = Runnable {
            if (token == previewToken) previewChannel(channel, token)
        }
        pendingPreview = task
        previewHandler.postDelayed(task, 400L)
    }

    private fun updatePreviewInfo(channel: LiveChannel) {
        currentPreviewChannel = channel
        liveChannelStore.lastStreamId = channel.streamId
        liveChannelStore.lastCategoryId = selectedLiveCategoryId ?: ""
        previewTitle.text = channel.name
        previewLogo.visibility = View.VISIBLE
        ChannelIconHelper.load(previewLogo, channel)
        epgCache[channel.streamId]?.takeIf { it.isNotEmpty() }?.let { applyEpg(channel, it) } ?: run {
            epgNow.text = getString(R.string.epg_loading)
            epgNext.visibility = View.GONE
        }
        val profile = PlaylistRepository.profile ?: return
        if (epgCache[channel.streamId]?.isNotEmpty() == true) return
        lifecycleScope.launch {
            val epg = withContext(Dispatchers.IO) {
                api.shortEpg(
                    profile,
                    streamId = channel.streamId,
                    epgChannelId = channel.epgChannelId,
                    limit = 4,
                )
            }
            if (currentPreviewChannel?.streamId != channel.streamId) return@launch
            if (epg.isNotEmpty()) {
                epgCache[channel.streamId] = epg
            }
            applyEpg(channel, epg)
        }
    }

    private fun cancelMiniPreviewPlayback() {
        miniVlcPlayer?.stop()
        previewingStreamId = null
        previewWorkingUrl = null
    }

    private fun previewChannel(channel: LiveChannel, token: Int) {
        if (DeviceUi.isCompact(this)) return
        if (token != previewToken) return
        val profile = PlaylistRepository.profile ?: return
        updatePreviewInfo(channel)
        if (!appSettings.autoplayPreview) {
            cancelMiniPreviewPlayback()
            setPreviewVideoVisible(false)
            return
        }
        val channelChanged = previewingStreamId != channel.streamId
        if (channelChanged || previewUrls.isEmpty()) {
            previewUrls = LiveStreamUrls.candidates(api, profile, channel)
            previewUrlIndex = 0
            previewWorkingUrl = null
            previewingStreamId = channel.streamId
        }
        val url = previewUrls.getOrNull(previewUrlIndex).orEmpty()
        if (url.isBlank()) {
            panelLive.findViewById<View>(R.id.miniNoSignal).visibility = View.VISIBLE
            return
        }
        playMiniPreviewUrl(url, token)
    }

    private var previewPlaybackToken = 0

    private fun playMiniPreviewUrl(url: String, token: Int) {
        if (token != previewToken || url.isBlank()) return
        previewPlaybackToken = token
        setPreviewVideoVisible(false)
        val volume = if (appSettings.previewSound) {
            LiveVlcPlayer.VOLUME_PREVIEW
        } else {
            0
        }
        miniVlcPlayer?.play(url, volume)
    }

    private fun previewIsSettled(): Boolean {
        if (previewWorkingUrl.isNullOrBlank()) return false
        return miniVlcPlayer?.isPlaying() == true
    }

    private fun setPreviewVideoVisible(visible: Boolean) {
        miniVlcView?.alpha = if (visible) 1f else 0f
        if (!visible && currentPreviewChannel?.icon?.isNotEmpty() == true) {
            previewLogo.visibility = View.VISIBLE
        } else if (visible) {
            previewLogo.visibility = View.GONE
        }
    }

    private fun showMiniPreviewControls() {
        miniPreviewControls.visibility = View.VISIBLE
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        miniControlsHandler.postDelayed(hideMiniControlsRunnable, 5_000L)
    }

    private fun hideMiniPreviewControls() {
        miniPreviewControls.visibility = View.GONE
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
    }

    private fun scheduleHideMiniControls() {
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        miniControlsHandler.postDelayed(hideMiniControlsRunnable, 5_000L)
    }

    private fun tryNextPreviewUrl(token: Int = previewToken): Boolean {
        if (token != previewToken) return false
        if (previewUrlIndex >= previewUrls.lastIndex) {
            panelLive.findViewById<View>(R.id.miniNoSignal).visibility = View.VISIBLE
            return false
        }
        previewUrlIndex += 1
        panelLive.findViewById<View>(R.id.miniNoSignal).visibility = View.GONE
        recreateMiniVlcPlayer()
        playMiniPreviewUrl(previewUrls[previewUrlIndex], token)
        return true
    }

    private fun applyEpg(channel: LiveChannel, epg: List<EpgEntry>) {
        if (currentPreviewChannel?.streamId != channel.streamId) return
        if (epg.isEmpty()) {
            epgNow.text = getString(R.string.epg_unavailable)
            epgNext.visibility = View.GONE
            return
        }
        val now = System.currentTimeMillis() / 1000L
        val currentIndex = epg.indexOfFirst { entry ->
            entry.start > 0L && entry.end > 0L && now >= entry.start && now < entry.end
        }.takeIf { it >= 0 } ?: 0
        val current = epg[currentIndex]
        epgNow.text = current.title
        epgNow.visibility = View.VISIBLE
        val next = epg.getOrNull(currentIndex + 1)
        if (next != null) {
            epgNext.text = getString(R.string.epg_next) + ": " + next.title
            epgNext.visibility = View.VISIBLE
        } else {
            epgNext.visibility = View.GONE
        }
    }

    fun openFullscreen(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        LiveChannelNavigator.setPlaybackContext(this, channel, selectedLiveCategoryId)
        VolumeHelper.boostOnPlaybackStart(this)
        miniVlcPlayer?.stop()
        val candidates = LiveStreamUrls.candidates(api, profile, channel)
        val urls = buildList {
            if (previewingStreamId == channel.streamId) {
                previewWorkingUrl?.let { add(it) }
            }
            addAll(candidates)
        }.distinct()
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = channel.name,
                url = urls.first(),
                kind = ResumeStore.KIND_LIVE,
                contentId = channel.streamId.toString(),
                imageUrl = channel.icon,
                streamId = channel.streamId,
                epgChannelId = channel.epgChannelId,
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
                .putExtra(ProfilesActivity.EXTRA_FORCE_PICKER, true)
                .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK),
        )
        finish()
    }

    private fun exitApp() {
        finishAffinity()
    }

    private fun isFocusInLivePreviewControls(): Boolean {
        val focused = currentFocus ?: return false
        return focused.id == R.id.btnVolUp ||
            focused.id == R.id.btnVolDown ||
            focused.id == R.id.btnFullscreen
    }

    override fun onBackPressed() {
        when (currentTab) {
            Tab.HOME -> logoutUser()
            Tab.LIVE -> {
                when {
                    isFocusInHeader() -> focusBottomTab(Tab.LIVE)
                    isFocusInBottomNav() -> focusCategoryList()
                    isFocusInLivePreviewControls() -> focusChannelAt(currentPreviewChannel)
                    isFocusInPreviewPanel() -> focusChannelAt(currentPreviewChannel)
                    isFocusInList(channelList) -> focusCategoryList()
                    isFocusInList(liveCategoryList) -> focusBottomTab(Tab.LIVE)
                    else -> focusCategoryList()
                }
            }
            Tab.MOVIES, Tab.SERIES -> {
                when {
                    isFocusInHeader() -> focusBottomTab(currentTab)
                    isFocusInBottomNav() -> focusCatalogCategoryList()
                    isFocusInList(catalogGrid) -> focusCatalogCategoryList()
                    isFocusInList(catalogCategoryList) -> focusBottomTab(currentTab)
                    else -> focusCatalogCategoryList()
                }
            }
        }
    }

    private fun isFocusInBottomNav(): Boolean {
        val focused = currentFocus ?: return false
        return focused === tabHome ||
            focused === tabLive ||
            focused === tabMovies ||
            focused === tabSeries
    }

    private fun focusBottomTab(tab: Tab) {
        when (tab) {
            Tab.LIVE -> tabLive.requestFocus()
            Tab.MOVIES -> tabMovies.requestFocus()
            Tab.SERIES -> tabSeries.requestFocus()
            Tab.HOME -> tabHome.requestFocus()
        }
    }

    private fun isFocusInList(list: RecyclerView): Boolean {
        val focused = currentFocus ?: return false
        var parent = focused.parent
        while (parent != null) {
            if (parent === list) return true
            parent = parent.parent
        }
        return false
    }

    override fun onStop() {
        super.onStop()
        miniVlcPlayer?.pause()
        stopHeroRotation()
    }

    override fun onResume() {
        super.onResume()
        if (currentTab == Tab.HOME && shouldFocusHomeRailsOnResume) {
            focusHeroOnStart()
        } else if (currentTab == Tab.LIVE) {
            focusChannelAt(currentPreviewChannel)
            liveCategoryList.adapter?.let { (it as? CategoryAdapter)?.refreshSelection() }
            if (appSettings.autoplayPreview) {
                currentPreviewChannel?.let { schedulePreview(it) }
            }
        } else if (currentTab == Tab.MOVIES || currentTab == Tab.SERIES) {
            (catalogCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        }
    }

    override fun onDestroy() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        clockHandler.removeCallbacks(clockRunnable)
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        stopHeroRotation()
        miniVlcPlayer?.release()
        miniVlcPlayer = null
        super.onDestroy()
    }

    private fun setupMiniPlayer() {
        if (DeviceUi.isCompact(this)) return
        miniPreviewControls = panelLive.findViewById(R.id.miniPreviewControls)
        miniPreviewControls.visibility = View.GONE

        val noSignal = panelLive.findViewById<View>(R.id.miniNoSignal)
        noSignal.visibility = View.GONE
        panelLive.findViewById<View>(R.id.btnNoSignalSettings).setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        previewContainer.setOnClickListener {
            currentPreviewChannel?.let { openFullscreen(it) }
        }
        previewContainer.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    focusChannelAt(currentPreviewChannel)
                    true
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    currentPreviewChannel?.let { openFullscreen(it) }
                    true
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    zapChannel(-1, keepPreviewFocus = true)
                    true
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    zapChannel(1, keepPreviewFocus = true)
                    true
                }
                else -> false
            }
        }
        if (!DeviceUi.isCompact(this)) {
            miniVlcView = panelLive.findViewById(R.id.miniVlcPlayer)
            miniVlcView?.alpha = 0f
            recreateMiniVlcPlayer()
            panelLive.findViewById<ImageButton>(R.id.btnVolUp).setOnClickListener {
                VolumeHelper.adjust(this, raise = true)
                scheduleHideMiniControls()
            }
            panelLive.findViewById<ImageButton>(R.id.btnVolDown).setOnClickListener {
                VolumeHelper.adjust(this, raise = false)
                scheduleHideMiniControls()
            }
            panelLive.findViewById<ImageButton>(R.id.btnFullscreen).setOnClickListener {
                currentPreviewChannel?.let { openFullscreen(it) }
            }
        }
    }

    private fun recreateMiniVlcPlayer() {
        if (DeviceUi.isCompact(this)) return
        val videoLayout = miniVlcView ?: return
        miniVlcPlayer?.release()
        val noSignal = panelLive.findViewById<View>(R.id.miniNoSignal)
        miniVlcPlayer = LiveVlcPlayer(
            context = this,
            videoLayout = videoLayout,
            networkBufferMs = appSettings.networkBufferMs,
            onError = {
                setPreviewVideoVisible(false)
                if (!tryNextPreviewUrl()) {
                    noSignal.visibility = View.VISIBLE
                }
            },
            onPlaying = {
                if (previewPlaybackToken != previewToken) return@LiveVlcPlayer
                if (previewUrlIndex in previewUrls.indices) {
                    previewWorkingUrl = previewUrls[previewUrlIndex]
                }
                setPreviewVideoVisible(true)
                noSignal.visibility = View.GONE
            },
        )
    }
}

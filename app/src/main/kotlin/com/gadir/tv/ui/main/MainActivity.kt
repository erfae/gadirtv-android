package com.gadir.tv.ui.main

import android.content.Intent
import android.view.KeyEvent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.ViewStub
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.core.widget.NestedScrollView
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.activity.OnBackPressedCallback
import com.gadir.tv.BuildConfig
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.EpgCache
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.BootstrapLoader
import com.gadir.tv.data.ContentPreloader
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlotCache
import com.gadir.tv.data.MovieDetailCache
import com.gadir.tv.data.SeriesDetailCache
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.data.ParentalSession
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Category
import com.gadir.tv.model.EpgEntry
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.Profile
import com.gadir.tv.model.VodMovie
import com.gadir.tv.ui.movie.MovieDetailActivity
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveExoPreviewPlayer
import com.gadir.tv.player.LivePreviewStreamUrls
import com.gadir.tv.player.LiveStreamStallTracker
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.exoLiveProgressKey
import com.gadir.tv.player.VodStreamUrls
import com.gadir.tv.player.LiveVlcPlayer
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.VlcInstanceGuard
import com.gadir.tv.player.VodPlaybackHelper
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.ui.profiles.ProfilesActivity
import org.videolan.libvlc.util.VLCVideoLayout
import androidx.media3.ui.PlayerView
import com.gadir.tv.ui.search.SearchActivity
import com.gadir.tv.ui.series.SeriesDetailActivity
import com.gadir.tv.ui.settings.ParentalPinDialog
import com.gadir.tv.ui.settings.SettingsActivity
import com.gadir.tv.util.AccountFormat
import com.gadir.tv.util.ChannelIconFallback
import com.gadir.tv.util.ChannelIconHelper
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.EpgFormatter
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.ImageUrlResolver
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.ProfileAvatarHelper
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.TvNavHelper
import com.gadir.tv.util.VolumeHelper
import com.gadir.tv.util.HeaderClockHelper
import com.gadir.tv.util.HostUtils
import java.util.Date
import kotlin.random.Random
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout

class MainActivity : BaseLocaleActivity() {

    companion object {
        private const val HOME_RAIL_LIMIT_COMPACT = 12
        private const val HOME_RAIL_LIMIT_TV = 10
        private const val HERO_LIMIT_COMPACT = 1
        private const val HERO_LIMIT_TV = 8
        private const val HERO_ROTATE_MS = 10_000L
        private const val HERO_ROTATE_FIRST_MS = 10_000L
        private const val CHANNEL_PREVIEW_DELAY_MS = 0L
        private const val PREVIEW_TIMEOUT_MS = 4_500L
        private const val PREVIEW_RETRY_DELAY_MS = 400L
        private const val PREVIEW_RETRY_MAX_CYCLES = 4
        private const val PREVIEW_STALL_CHECK_MS = 5_000L
        private const val PREVIEW_STALL_TIMEOUT_MS = 14_000L
        private const val PREVIEW_SURFACE_MAX_ATTEMPTS = 4
        private const val CATALOG_PREFETCH_DELAY_MS = 400L
        private const val EPG_FOCUS_DELAY_MS = 0L
        private const val FULLSCREEN_LAUNCH_DELAY_MS = 700L
        private const val LIVE_VLC_COOLDOWN_MS = 600L
    }
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private lateinit var favoritesStore: FavoritesStore
    private lateinit var liveChannelStore: LiveChannelStore
    private lateinit var appSettings: AppSettings
    private lateinit var parentalStore: ParentalControlStore
    private var miniVlcPlayer: LiveVlcPlayer? = null
    private var miniVlcView: VLCVideoLayout? = null
    private var miniExoPlayer: LiveExoPreviewPlayer? = null
    private var miniExoView: PlayerView? = null
    private var previewUsesExo = false
    private var channelAdapter: ChannelAdapter? = null
    private var currentPreviewChannel: LiveChannel? = null
    private var previewingStreamId: Int? = null
    private var previewLogoStreamId = 0
    private var previewUrls = listOf<String>()
    private var previewUrlIndex = 0
    private var previewRetryCycleCount = 0
    private var previewWorkingUrl: String? = null
    private val previewHandler = Handler(Looper.getMainLooper())
    private var pendingPreview: Runnable? = null
    private var previewToken = 0
    private var selectedLiveCategoryId: String? = null
    private var liveChannelsLoaded = false
    private var liveBrowsingCategoryId: String? = null
    private var liveEnterContentOnLoad = false
    private var liveCategoryFocusIndex = 0
    private var liveBrowseLevel = TvBrowseNav.Level.TAB
    private var catalogBrowseLevel = TvBrowseNav.Level.TAB
    private var livePrefetchToken = 0
    private val liveCategoryPrefetch = mutableMapOf<String?, List<LiveChannel>>()
    private val liveCategoryCounts = mutableMapOf<String?, Int>()
    private val catalogCategoryCounts = mutableMapOf<String, Int>()
    private var catalogBrowsingCategoryId: String? = null
    private var catalogEnterContentOnLoad = false
    private var selectedCatalogCategoryId: String? = null
    private var movieCategoryId: String? = null
    private var seriesCategoryId: String? = null
    private var moviesCatalogReady = false
    private var catalogPosterTab: Tab? = null
    private var seriesCatalogReady = false
    private var moviesGroupLoaded = false
    private var seriesGroupLoaded = false
    private var catalogCategoryFocusIndex = 0
    private var currentTab = Tab.HOME
    private var previousTab = Tab.HOME

    private lateinit var tabHome: View
    private lateinit var tabLive: View
    private lateinit var tabMovies: View
    private lateinit var tabSeries: View
    private lateinit var panelHome: View
    private var panelLive: View? = null
    private lateinit var panelCatalog: View

    private lateinit var liveCategoryList: RecyclerView
    private lateinit var channelList: RecyclerView
    private lateinit var previewTitle: TextView
    private lateinit var previewLogo: ImageView
    private lateinit var epgNow: TextView
    private lateinit var epgNext: TextView
    private lateinit var epgPreviewList: RecyclerView
    private var epgPreviewAdapter: EpgPreviewAdapter? = null
    private var btnCatchUp: TextView? = null
    private var btnPreviewFavorite: TextView? = null
    private var currentPreviewEpg: List<EpgEntry> = emptyList()

    private lateinit var catalogCategoryList: RecyclerView
    private lateinit var catalogGrid: RecyclerView
    private lateinit var catalogLoading: View
    private lateinit var catalogEmpty: TextView
    private lateinit var catalogHeroImage: ImageView
    private lateinit var catalogHeroTitle: TextView
    private lateinit var catalogHeroSubtitle: TextView

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
    private val recentMovies = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val recentSeries = mutableListOf<HomeRailAdapter.HomeRailItem>()
    private val heroItems = mutableListOf<HeroItem>()
    private val heroPlotCache = mutableMapOf<String, CachedHeroPlot>()

    private data class CachedHeroPlot(
        val plot: String,
        val subtitle: String,
        val backdrop: String,
        val poster: String,
        val title: String = "",
    )
    private var heroBackdropRequestId = 0
    private var heroIndex = 0
    private var railPreviewItem: HomeRailAdapter.HomeRailItem? = null
    private var heroCarouselPaused = false
    private var heroRotateFirstTick = true
    private var catalogCategoryAdapter: CategoryAdapter? = null
    private var homeLoaded = false
    private var shouldFocusHomeRailsOnResume = true
    private var catalogLoadToken = 0
    private var inFlightCatalogCategory: String? = null
    private val catalogCategoryHandler = Handler(Looper.getMainLooper())
    private var catalogPrefetchToken = 0
    private var suppressTabFocusNavigation = false
    private val liveCategoryHandler = Handler(Looper.getMainLooper())
    private var pendingLiveCategoryPreview: Runnable? = null
    private var reloadingChannels = false
    private var channelsLoadToken = 0
    private var livePreviewPaused = false
    private var livePreviewResumeToken = 0
    private var epgLoadToken = 0
    private var pendingEpg: Runnable? = null
    private var epgFocusStreamId = 0
    private var liveTabReady = false
    private var miniPreviewControls: View? = null
    private var previewContainer: View? = null
    private val miniControlsHandler = Handler(Looper.getMainLooper())
    private val hideMiniControlsRunnable = Runnable { hideMiniPreviewControls() }
    private val heroHandler = Handler(Looper.getMainLooper())
    private val heroRotateRunnable = object : Runnable {
        override fun run() {
            if (currentTab == Tab.HOME && heroItems.size > 1 && railPreviewItem == null) {
                advanceHeroCarousel()
                heroRotateFirstTick = false
            }
            if (currentTab == Tab.HOME && heroItems.size > 1) {
                heroHandler.postDelayed(this, HERO_ROTATE_MS)
            }
        }
    }
    private val clockRunnable = object : Runnable {
        override fun run() {
            val now = Date()
            headerClock.text = HeaderClockHelper.formatTime(this@MainActivity, now)
            headerDate.text = HeaderClockHelper.formatDate(this@MainActivity, now)
            clockHandler.postDelayed(this, 1_000L)
        }
    }

    private fun usesExoPreview(): Boolean = previewUsesExo

    private fun isLivePreviewContext(): Boolean =
        !isDestroyed && currentTab == Tab.LIVE && liveTabReady

    /** Stop preview and cancel in-flight work when leaving the Live tab. */
    private fun leaveLiveTabSession() {
        livePreviewResumeToken++
        fullscreenWaitToken++
        previewToken++
        epgLoadToken++
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        pendingEpg?.let { previewHandler.removeCallbacks(it) }
        pendingEpg = null
        pendingLiveCategoryPreview?.let { liveCategoryHandler.removeCallbacks(it) }
        pendingLiveCategoryPreview = null
        cancelPreviewTimeout()
        disarmPreviewStallWatchdog()
        teardownLivePreviewPlayback()
        detachPreviewPlayersFromSurface()
        if (liveTabReady) {
            setPreviewVideoVisible(false)
            hideMiniPreviewControls()
        }
        livePreviewPaused = true
    }

    private fun detachPreviewPlayersFromSurface() {
        try {
            miniExoPlayer?.stop()
            miniExoView?.player = null
        } catch (_: Throwable) {
        }
        try {
            miniVlcPlayer?.stop()
        } catch (_: Throwable) {
        }
    }

    private fun attachPreviewPlayersToSurface() {
        if (!isLivePreviewContext()) return
        if (usesExoPreview()) {
            val player = miniExoPlayer?.player ?: return
            miniExoView?.player = player
        }
    }

    private fun livePanel(): View {
        ensureLiveTabReady()
        return inflateLivePanelIfNeeded()
    }

    private fun inflateLivePanelIfNeeded(): View {
        panelLive?.let { return it }
        val stub = findViewById<ViewStub>(R.id.panelLiveStub)
        val inflated = stub.inflate()
        panelLive = inflated
        bindLivePanelViews(inflated)
        return inflated
    }

    private fun bindLivePanelViews(panel: View) {
        liveCategoryList = panel.findViewById(R.id.categoryList)
        channelList = panel.findViewById(R.id.channelList)
        previewTitle = panel.findViewById(R.id.previewTitle)
        previewLogo = panel.findViewById(R.id.previewLogo)
        epgNow = panel.findViewById(R.id.epgNow)
        epgNext = panel.findViewById(R.id.epgNext)
        epgPreviewList = panel.findViewById(R.id.epgPreviewList)
        epgPreviewAdapter = EpgPreviewAdapter().also { adapter ->
            epgPreviewList.layoutManager = LinearLayoutManager(this)
            epgPreviewList.adapter = adapter
            epgPreviewList.isNestedScrollingEnabled = false
        }
        btnCatchUp = panel.findViewById(R.id.btnCatchUp)
        btnPreviewFavorite = panel.findViewById(R.id.btnPreviewFavorite)
        previewContainer = panel.findViewById(R.id.previewContainer)
        if (DeviceUi.useDpadFocus(this)) {
            previewContainer?.isFocusable = false
            previewContainer?.isFocusableInTouchMode = false
            channelList.nextFocusLeftId = R.id.categoryList
            channelList.nextFocusRightId = R.id.btnPreviewFavorite
            channelList.nextFocusDownId = View.NO_ID
            channelList.nextFocusUpId = View.NO_ID
            liveCategoryList.nextFocusRightId = R.id.channelList
            liveCategoryList.nextFocusUpId = View.NO_ID
            btnPreviewFavorite?.nextFocusLeftId = R.id.channelList
            btnCatchUp?.nextFocusLeftId = R.id.channelList
            btnPreviewFavorite?.nextFocusRightId = R.id.btnCatchUp
            btnCatchUp?.nextFocusRightId = View.NO_ID
        }
        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
        if (DeviceUi.useDpadFocus(this)) {
            liveCategoryList.setPreserveFocusAfterLayout(false)
            channelList.setPreserveFocusAfterLayout(true)
            liveCategoryList.setItemViewCacheSize(24)
            channelList.setItemViewCacheSize(32)
        }
    }

    private val liveCategories = mutableListOf<Category>()

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
        parentalStore = ParentalControlStore(this)
        parentalStore.ensureAdultDefaultsBlocked()

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
        findViewById<TextView>(R.id.appVersionLabel)?.text = "v${BuildConfig.VERSION_NAME}"
        findViewById<TextView>(R.id.btnSearch).also { btnSearch = it }
        TvFocusHelper.bindButton(btnSearch) { openSearch() }
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
        panelCatalog = findViewById(R.id.panelMovies)

        catalogCategoryList = panelCatalog.findViewById(R.id.catalogCategoryList)
        catalogGrid = panelCatalog.findViewById(R.id.catalogGrid)
        if (DeviceUi.useDpadFocus(this)) {
            catalogGrid.nextFocusUpId = View.NO_ID
        }
        catalogLoading = panelCatalog.findViewById(R.id.catalogLoading)
        catalogEmpty = panelCatalog.findViewById(R.id.catalogEmpty)
        catalogHeroImage = panelCatalog.findViewById(R.id.catalogHeroImage)
        catalogHeroTitle = panelCatalog.findViewById(R.id.catalogHeroTitle)
        catalogHeroSubtitle = panelCatalog.findViewById(R.id.catalogHeroSubtitle)

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

        catalogCategoryList.layoutManager = LinearLayoutManager(this)
        if (DeviceUi.useDpadFocus(this)) {
            catalogCategoryList.setPreserveFocusAfterLayout(false)
            catalogGrid.setPreserveFocusAfterLayout(false)
            catalogCategoryList.setItemViewCacheSize(24)
            catalogGrid.setItemViewCacheSize(48)
            panelCatalog.findViewById<View>(R.id.catalogHeroContainer)?.visibility = View.GONE
        }
        configureCatalogGrid()
        favoritesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        resumeRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        moviesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seriesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)

        heroPlay.setOnFocusChangeListener { view, hasFocus ->
            if (DeviceUi.useDpadFocus(this)) {
                if (hasFocus) {
                    railPreviewItem = null
                    heroCarouselPaused = false
                    bindHero(heroItems.getOrNull(heroIndex) ?: return@setOnFocusChangeListener)
                    startHeroRotation()
                }
            }
        }
        heroPlay.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    focusFirstHomeRail()
                    true
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    btnSearch.requestFocus()
                    true
                }
                else -> false
            }
        }

        setupTabNavigation()
        installTvBackHandler()
        heroPlay.setOnClickListener { openHeroContent() }
        tabHome.nextFocusUpId = R.id.btnSearch
        tabLive.nextFocusUpId = R.id.btnSearch
        tabMovies.nextFocusUpId = R.id.btnSearch
        tabSeries.nextFocusUpId = R.id.btnSearch
        tabHome.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN || currentTab != Tab.HOME) {
                return@setOnKeyListener false
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                focusHeroOnStart()
                return@setOnKeyListener true
            }
            false
        }

        setupHeaderFocusChain()
        configureHeroLayout()

        startContentPreload()
        showTab(Tab.HOME)
        lifecycleScope.launch {
            repeat(8) {
                if (isDestroyed) return@launch
                syncLivePlaylistUi()
                if (PlaylistRepository.bootstrapReady && PlaylistRepository.categories.isNotEmpty()) return@launch
                kotlinx.coroutines.delay(750L)
            }
            syncLivePlaylistUi()
        }
        if (DeviceUi.useDpadFocus(this)) {
            tabHome.post { tabHome.requestFocus() }
        }
    }

    private fun scheduleContentPreloadAfterHome() {
        if (!homeLoaded) return
        startContentPreload()
    }

    private fun startContentPreload() {
        val activeProfile = PlaylistRepository.profile ?: return
        ContentPreloader.startBackgroundPreload(this, api, activeProfile)
    }

    private fun dp(value: Int): Int =
        (value * resources.displayMetrics.density).toInt()

    private fun configureHeroLayout() {
        val metrics = resources.displayMetrics
        val tvUi = DeviceUi.isTvUi(this)
        val heroHeight = when {
            tvUi ->
                (metrics.heightPixels * 0.32f).toInt().coerceIn(dp(200), dp(260))
            DeviceUi.isCompact(this) ->
                (metrics.heightPixels * 0.40f).toInt().coerceIn(dp(220), dp(320))
            else -> dp(220)
        }
        val container = panelHome.findViewById<View>(R.id.heroContainer)
        container?.layoutParams = container?.layoutParams?.apply { height = heroHeight }
        container?.minimumHeight = heroHeight
        heroImage.layoutParams = heroImage.layoutParams.apply {
            height = ViewGroup.LayoutParams.MATCH_PARENT
        }
        if (!tvUi) {
            headerDate.visibility = View.GONE
        } else {
            configureHeroPosterLayout()
            configureHomeRailsForTv()
        }
        if (DeviceUi.useDpadFocus(this)) {
            styleHeroPlayButton()
        }
    }

    private fun styleHeroPlayButton() {
        if (!DeviceUi.useDpadFocus(this)) return
        heroPlay.setBackgroundResource(R.drawable.btn_hero_play_solid)
        heroPlay.setTextColor(androidx.core.content.ContextCompat.getColor(this, android.R.color.white))
        val height = dp(48)
        heroPlay.minHeight = height
        heroPlay.minimumHeight = height
        heroPlay.minWidth = dp(190)
        heroPlay.setPadding(dp(16), dp(10), dp(16), dp(10))
        heroPlay.textSize = 14f
        heroPlay.maxLines = 1
        heroPlay.scaleX = 1f
        heroPlay.scaleY = 1f
        heroPlay.visibility = View.VISIBLE
        heroPlay.alpha = 1f
    }

    private fun configureHomeRailsForTv() {
        if (!DeviceUi.useDpadFocus(this)) return
        val railHeight = dp(108)
        listOf(moviesRail, seriesRail, favoritesRail, resumeRail).forEach { rail ->
            rail.minimumHeight = railHeight
        }
        homeScrollView.isVerticalScrollBarEnabled = false
    }

    private fun configureHeroPosterLayout() {
        val posterWidth = if (DeviceUi.isTelevision(this)) dp(90) else dp(100)
        val posterHeight = if (DeviceUi.isTelevision(this)) dp(128) else dp(145)
        heroPoster.visibility = View.VISIBLE
        when (heroPoster.parent) {
            is FrameLayout -> {
                val params = (heroPoster.layoutParams as? FrameLayout.LayoutParams)
                    ?: FrameLayout.LayoutParams(posterWidth, posterHeight)
                params.width = posterWidth
                params.height = posterHeight
                params.gravity = Gravity.END or Gravity.CENTER_VERTICAL
                params.marginEnd = dp(24)
                heroPoster.layoutParams = params
            }
            is LinearLayout -> {
                val params = (heroPoster.layoutParams as? LinearLayout.LayoutParams)
                    ?: LinearLayout.LayoutParams(posterWidth, posterHeight)
                params.width = posterWidth
                params.height = posterHeight
                if (params.marginStart < dp(12)) params.marginStart = dp(16)
                heroPoster.layoutParams = params
            }
        }
    }

    private fun ensureLiveTabReady() {
        if (liveTabReady) return
        liveTabReady = true
        inflateLivePanelIfNeeded()
        setupMiniPlayer()
        setupLiveTab()
    }

    private fun setupLiveTab() {
        refreshLiveCategoryList()
        syncLiveCategoryChannels()
        channelList.setItemViewCacheSize(48)
        channelAdapter = ChannelAdapter(
            items = channels,
            onFocus = if (DeviceUi.useDpadFocus(this)) {
                { channel -> schedulePreview(channel) }
            } else {
                { }
            },
            onOpen = { channel ->
                if (DeviceUi.useDpadFocus(this)) {
                    if (currentPreviewChannel?.streamId == channel.streamId && previewIsSettled()) {
                        openFullscreen(channel)
                    } else {
                        schedulePreview(channel)
                        openFullscreenWhenPreviewReady(channel)
                    }
                } else if (currentPreviewChannel?.streamId == channel.streamId && previewIsSettled()) {
                    openFullscreen(channel)
                } else {
                    selectChannelPreview(channel)
                }
            },
            onMoveLeft = if (DeviceUi.useDpadFocus(this)) {
                { exitLiveContentToGroup() }
            } else {
                null
            },
            onMoveUp = null,
            onMoveRight = if (DeviceUi.useDpadFocus(this)) null else {
                { enterLivePreviewFromChannels() }
            },
            isFavorite = { favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId) },
            onToggleFavorite = { channel ->
                favoritesStore.toggle(FavoritesStore.KIND_LIVE, channel.streamId)
                if (selectedLiveCategoryId == FavoritesStore.FAVORITES_CATEGORY_ID) {
                    reloadChannels(keepCategoryFocus = true)
                } else {
                    channelAdapter?.notifyDataSetChanged()
                }
            },
            isLocked = { parentalStore.isChannelLocked(it.streamId) },
            canLock = { parentalStore.canLockChannel(it) },
            onToggleLock = { channel -> toggleChannelLock(channel) },
        )
        channelList.adapter = channelAdapter
        if (!DeviceUi.useDpadFocus(this)) {
            channelList.addOnScrollListener(object : RecyclerView.OnScrollListener() {
                override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                    if (newState == RecyclerView.SCROLL_STATE_IDLE) return
                    pendingPreview?.let { previewHandler.removeCallbacks(it) }
                    pendingPreview = null
                }
            })
        }
        if (DeviceUi.useDpadFocus(this)) {
            liveChannelsLoaded = false
            selectedLiveCategoryId = null
        } else {
            selectedLiveCategoryId = liveChannelStore.lastCategoryId?.takeIf { it.isNotEmpty() }
            liveChannelsLoaded = true
            reloadChannels(keepCategoryFocus = true)
        }
    }

    private fun liveCategoryId(cat: Category): String? = when (cat.id) {
        "" -> null
        FavoritesStore.FAVORITES_CATEGORY_ID -> FavoritesStore.FAVORITES_CATEGORY_ID
        ParentalControlStore.LOCK_CATEGORY_ID -> ParentalControlStore.LOCK_CATEGORY_ID
        else -> cat.id
    }

    private fun applyLiveCategoryClick(cat: Category, enterContent: Boolean = false) {
        pendingLiveCategoryPreview?.let { liveCategoryHandler.removeCallbacks(it) }
        pendingLiveCategoryPreview = null
        val categoryId = liveCategoryId(cat)
        if (!enterContent) {
            previewLiveCategoryGroup(cat)
            return
        }
        withLiveCategoryAccess(cat, categoryId) {
            enterLiveContent(cat)
        }
    }

    private fun enterLiveContent(cat: Category) {
        val newId = liveCategoryId(cat)
        val idx = liveCategories.indexOfFirst { liveCategoryId(it) == newId }
        if (idx >= 0) liveCategoryFocusIndex = idx

        loadLiveCategoryChannels(cat, refreshCategories = false)
        if (channels.isEmpty()) return

        val previousBrowsingId = liveBrowsingCategoryId
        liveChannelsLoaded = true
        liveBrowseLevel = TvBrowseNav.Level.CONTENT
        selectedLiveCategoryId = newId
        liveBrowsingCategoryId = null
        refreshLiveCategoryHighlight(previousBrowsingId, newId)
        highlightLiveCategory(newId)
        applyLivePanelFocusMode(inContent = true)
        TvBrowseNav.clearListFocus(liveCategoryList)
        focusLiveChannelAt(0) {
            highlightLiveCategory(newId)
            schedulePreviewAfterChannelFocus(0)
        }
    }

    private fun focusLiveChannelAt(index: Int, onFocused: (() -> Unit)? = null) {
        TvBrowseNav.focusContent(channelList, index) {
            if (channelList.focusedChild != null) {
                onFocused?.invoke()
            } else {
                channelList.post {
                    if (channelList.focusedChild != null) {
                        onFocused?.invoke()
                    } else {
                        exitLiveContentToGroup()
                    }
                }
            }
        }
    }

    /** Carga canales y preview con foco en el grupo (columna izquierda). */
    private fun previewLiveCategoryGroup(
        cat: Category,
        refreshCategories: Boolean = false,
    ) {
        loadLiveCategoryChannels(cat, refreshCategories)
        liveBrowseLevel = TvBrowseNav.Level.GROUP
        liveBrowsingCategoryId = liveCategoryId(cat)
        selectedLiveCategoryId = null
        liveChannelsLoaded = false
        TvBrowseNav.blockContentFocus(channelList)
        applyLivePanelFocusMode(inContent = false)
    }

    private fun enterLiveTabFromTabBar() {
        liveCategoryHandler.removeCallbacksAndMessages(null)
        if (liveCategories.isEmpty()) return
        syncLiveCategoryCounts()
        warmLiveCategoryPrefetch()
        val savedId = liveChannelStore.lastCategoryId?.takeIf { it.isNotEmpty() }
            ?: liveBrowsingCategoryId
        val savedIndex = savedId?.let { id ->
            liveCategories.indexOfFirst { liveCategoryId(it) == id }
        }?.takeIf { it >= 0 }
            ?: liveCategoryFocusIndex.coerceIn(0, (liveCategories.size - 1).coerceAtLeast(0))
        liveCategoryFocusIndex = savedIndex
        val cat = liveCategories.getOrNull(savedIndex) ?: return
        withLiveCategoryAccess(cat, liveCategoryId(cat)) {
            previewLiveCategoryGroup(cat)
            liveCategoryList.post {
                if (currentTab != Tab.LIVE || liveBrowseLevel != TvBrowseNav.Level.GROUP) return@post
                TvBrowseNav.focusGroup(liveCategoryList, savedIndex)
            }
        }
    }

    private fun loadLiveCategoryChannels(
        cat: Category,
        refreshCategories: Boolean = true,
    ) {
        val newId = liveCategoryId(cat)
        if (parentalStore.requiresPinForLiveCategory(newId)) {
            showLiveBlockedCategory(cat)
            return
        }
        val newIndex = liveCategories.indexOfFirst { liveCategoryId(it) == newId }
        if (newIndex >= 0) liveCategoryFocusIndex = newIndex

        val loaded = liveChannelsForCategory(newId)

        val previousId = liveBrowsingCategoryId
        val sameGroup = previousId == newId &&
            loaded.isNotEmpty() &&
            channels.size == loaded.size &&
            channels.map { it.streamId } == loaded.map { it.streamId }
        liveBrowsingCategoryId = newId
        if (sameGroup) {
            if (refreshCategories) {
                refreshLiveCategorySelection()
            } else {
                refreshLiveCategoryHighlight(null, newId)
            }
            return
        }
        ++channelsLoadToken
        reloadingChannels = false
        val listChanged = previousId != newId || channels.size != loaded.size
        channels.clear()
        channels.addAll(loaded)
        channelList.stopScroll()
        TvBrowseNav.allowContentFocus(channelList)
        if (listChanged) {
            channelAdapter?.notifyDataSetChanged()
        }
        if (refreshCategories) {
            refreshLiveCategorySelection()
        } else if (previousId != newId) {
            refreshLiveCategoryHighlight(previousId, newId)
        }

        if (loaded.isEmpty()) {
            channelList.visibility = View.INVISIBLE
            showLiveSelectPrompt()
            return
        }

        channelList.visibility = View.VISIBLE
        prefetchLiveChannelIcons(loaded)
        channelList.scrollToPosition(0)
        if (liveBrowseLevel == TvBrowseNav.Level.GROUP && !livePreviewPaused) {
            loaded.firstOrNull()?.let { schedulePreview(it) }
        }
    }

    private fun showLiveCategoryChannels(
        cat: Category,
        enterContent: Boolean,
        refocusGroup: Boolean = true,
        refreshCategories: Boolean = true,
    ) {
        if (!enterContent) {
            previewLiveCategoryGroup(cat, refreshCategories)
            if (refocusGroup) {
                liveBrowseLevel = TvBrowseNav.Level.GROUP
                TvBrowseNav.focusGroup(liveCategoryList, liveCategoryFocusIndex)
            }
            return
        }
        enterLiveContent(cat)
    }

    private fun focusFirstChannel(onFocused: (() -> Unit)? = null) {
        val cat = liveCategories.getOrNull(liveCategoryFocusIndex) ?: return
        enterLiveContent(cat)
        onFocused?.invoke()
    }

    private fun exitLiveContentToGroup() {
        if (!liveTabReady || liveBrowseLevel != TvBrowseNav.Level.CONTENT) return
        val index = liveCategoryFocusIndex.coerceIn(0, (liveCategories.size - 1).coerceAtLeast(0))
        val cat = liveCategories.getOrNull(index)
        val categoryId = selectedLiveCategoryId ?: cat?.let { liveCategoryId(it) }
        relockLiveCategory(categoryId)
        selectedLiveCategoryId = null
        liveChannelsLoaded = false
        TvNavHelper.bumpFocusGeneration()
        TvBrowseNav.clearListFocus(channelList)
        applyLivePanelFocusMode(inContent = false)
        if (cat != null && parentalStore.requiresPinForLiveCategory(categoryId)) {
            showLiveBlockedCategory(cat)
        } else if (cat != null) {
            previewLiveCategoryGroup(cat, refreshCategories = false)
        }
        liveCategoryList.post {
            if (currentTab != Tab.LIVE || liveBrowseLevel != TvBrowseNav.Level.GROUP) return@post
            TvBrowseNav.focusGroup(liveCategoryList, index)
        }
    }

    private fun exitCatalogContentToGroup() {
        if (catalogBrowseLevel != TvBrowseNav.Level.CONTENT) return
        val index = catalogCategoryFocusIndex.coerceIn(0, (catalogCategories.size - 1).coerceAtLeast(0))
        val cat = catalogCategories.getOrNull(index)
        val categoryId = selectedCatalogCategoryId ?: cat?.id
        if (cat != null && categoryId != null) {
            relockCatalogCategory(currentTab, categoryId)
        }
        selectedCatalogCategoryId = null
        applyCatalogPanelFocusMode(currentTab, inContent = false)
        if (cat != null && catalogCategoryRequiresPin(currentTab, cat.id)) {
            showCatalogBlockedCategory(currentTab, cat)
        } else if (cat != null) {
            previewCatalogGroup(currentTab, cat)
        }
        catalogCategoryList.post {
            if (currentTab != Tab.MOVIES && currentTab != Tab.SERIES) return@post
            if (catalogCategoryList.focusedChild == null) {
                TvBrowseNav.focusGroup(catalogCategoryList, index)
            }
        }
    }

    private fun applyLivePanelFocusMode(inContent: Boolean) {
        if (!liveTabReady) return
        liveBrowseLevel = when {
            inContent -> TvBrowseNav.Level.CONTENT
            liveBrowseLevel == TvBrowseNav.Level.TAB -> TvBrowseNav.Level.TAB
            else -> TvBrowseNav.Level.GROUP
        }
        applyLiveBrowseLevel()
    }

    private fun applyLiveBrowseLevel() {
        if (!liveTabReady) return
        when (liveBrowseLevel) {
            TvBrowseNav.Level.TAB -> {
                TvBrowseNav.blockContentFocus(liveCategoryList)
                TvBrowseNav.blockContentFocus(channelList)
                liveChannelsLoaded = false
                pauseLivePreviewPlayback()
                channelList.visibility = View.INVISIBLE
                if (channels.isEmpty()) {
                    showLiveSelectPrompt()
                }
            }
            TvBrowseNav.Level.GROUP -> {
                TvBrowseNav.allowContentFocus(liveCategoryList)
                TvBrowseNav.blockContentFocus(channelList)
                liveChannelsLoaded = false
            }
            TvBrowseNav.Level.CONTENT -> {
                TvBrowseNav.blockContentFocus(liveCategoryList)
                TvBrowseNav.allowContentFocus(channelList)
                liveChannelsLoaded = true
            }
        }
        if (DeviceUi.useDpadFocus(this)) {
            channelList.nextFocusLeftId = R.id.categoryList
            liveCategoryList.nextFocusRightId = when (liveBrowseLevel) {
                TvBrowseNav.Level.GROUP -> R.id.channelList
                else -> View.NO_ID
            }
            channelList.nextFocusRightId = when (liveBrowseLevel) {
                TvBrowseNav.Level.CONTENT -> R.id.btnPreviewFavorite
                else -> View.NO_ID
            }
            channelList.nextFocusDownId = View.NO_ID
            updateTabDownFocus()
            updateHeaderDownFocus()
        }
    }

    private fun applyCatalogBrowseLevel(tab: Tab) {
        when (catalogBrowseLevel) {
            TvBrowseNav.Level.TAB -> {
                TvBrowseNav.blockContentFocus(catalogCategoryList)
                TvBrowseNav.blockContentFocus(catalogGrid)
            }
            TvBrowseNav.Level.GROUP -> {
                TvBrowseNav.allowContentFocus(catalogCategoryList)
                TvBrowseNav.blockContentFocus(catalogGrid)
            }
            TvBrowseNav.Level.CONTENT -> {
                TvBrowseNav.blockContentFocus(catalogCategoryList)
                TvBrowseNav.allowContentFocus(catalogGrid)
            }
        }
        if (DeviceUi.useDpadFocus(this)) {
            catalogGrid.nextFocusLeftId = R.id.catalogCategoryList
            catalogCategoryList.nextFocusRightId = View.NO_ID
            updateTabDownFocus()
            updateHeaderDownFocus()
        }
    }

    private fun liveCategoryCount(cat: Category): Int? {
        val id = liveCategoryId(cat)
        liveCategoryCounts[id]?.let { return it }
        liveCategoryPrefetch[id]?.size?.let { size ->
            liveCategoryCounts[id] = size
            return size
        }
        return null
    }

    private fun catalogCategoryCount(tab: Tab, cat: Category): Int? {
        if (cat.id == ResumeStore.RESUME_CATEGORY_ID) {
            val kind = when (tab) {
                Tab.MOVIES -> ResumeStore.KIND_MOVIE
                Tab.SERIES -> ResumeStore.KIND_SERIES
                else -> return null
            }
            return resumeStore.loadAll().count { it.kind == kind }
        }
        catalogCategoryCounts[cat.id]?.let { return it }
        return when (tab) {
            Tab.MOVIES -> PlaylistRepository.cachedVod(cat.id)?.size
            Tab.SERIES -> PlaylistRepository.cachedSeries(cat.id)?.size
            else -> null
        }
    }

    private fun syncLiveCategoryCounts() {
        liveCategoryCounts[null] = PlaylistRepository.channelsFor(null, appSettings.liveSortMode).size
        liveCategories.forEach { cat ->
            val id = liveCategoryId(cat) ?: return@forEach
            liveCategoryCounts[id] = channelsForLiveCategory(id).size
        }
    }

    private fun warmLiveCategoryPrefetch() {
        if (PlaylistRepository.allChannels.isEmpty()) return
        syncLiveCategoryCounts()
        refreshLiveCategorySelection()
        val token = ++livePrefetchToken
        lifecycleScope.launch {
            val prefetched = withContext(Dispatchers.Default) {
                buildLiveCategoryPrefetchMap()
            }
            if (token != livePrefetchToken) return@launch
            liveCategoryPrefetch.putAll(prefetched.filterValues { it.isNotEmpty() })
            prefetched.filterValues { it.isNotEmpty() }.forEach { (id, list) ->
                liveCategoryCounts[id] = list.size
            }
            if (currentTab == Tab.LIVE) {
                refreshLiveCategorySelection()
                syncLiveCategoryChannels()
            }
        }
    }

    private fun refreshLiveCategorySelection() {
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
    }

    private fun buildLiveCategoryPrefetchMap(): Map<String?, List<LiveChannel>> {
        val sortMode = appSettings.liveSortMode
        val all = PlaylistRepository.channelsFor(null, sortMode)
        if (all.isEmpty()) return emptyMap()
        val favoriteIds = favoritesStore.load(FavoritesStore.KIND_LIVE)
        val lockedIds = parentalStore.lockedChannelIds()
        val grouped = all.groupBy { it.categoryId }
        val alpha = sortMode == AppSettings.LIVE_SORT_ALPHA
        fun sortChannels(list: List<LiveChannel>): List<LiveChannel> =
            if (alpha) {
                list.sortedBy { it.name.lowercase() }
            } else {
                list.sortedWith(compareBy({ it.num }, { it.streamId }))
            }

        return liveCategories.associate { cat ->
            val id = liveCategoryId(cat)
            id to when (id) {
                null -> all
                FavoritesStore.FAVORITES_CATEGORY_ID ->
                    sortChannels(all.filter { favoriteIds.contains(it.streamId) })
                ParentalControlStore.LOCK_CATEGORY_ID ->
                    sortChannels(all.filter { it.streamId in lockedIds })
                else -> sortChannels(grouped[id].orEmpty())
            }
        }
    }

    private fun liveChannelsForCategory(categoryId: String?): List<LiveChannel> {
        if (PlaylistRepository.allChannels.isEmpty()) return emptyList()
        val cached = liveCategoryPrefetch[categoryId]
        if (cached != null) {
            if (cached.isNotEmpty()) return cached
            liveCategoryPrefetch.remove(categoryId)
        }
        val loaded = channelsForLiveCategory(categoryId)
        if (loaded.isNotEmpty()) {
            liveCategoryPrefetch[categoryId] = loaded
            if (categoryId != null) liveCategoryCounts[categoryId] = loaded.size
        }
        return loaded
    }

    private fun channelsForLiveCategory(categoryId: String?): List<LiveChannel> =
        when (categoryId) {
            FavoritesStore.FAVORITES_CATEGORY_ID ->
                PlaylistRepository.channelsFor(null, appSettings.liveSortMode).filter {
                    favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId)
                }
            ParentalControlStore.LOCK_CATEGORY_ID -> {
                val lockedIds = parentalStore.lockedChannelIds()
                if (lockedIds.isEmpty()) {
                    emptyList()
                } else {
                    PlaylistRepository.channelsFor(null, appSettings.liveSortMode).filter {
                        it.streamId in lockedIds
                    }
                }
            }
            else -> PlaylistRepository.channelsFor(categoryId, appSettings.liveSortMode)
        }

    private fun prefetchLiveCategory(categoryId: String?) {
        val cached = liveCategoryPrefetch[categoryId]
        if (cached != null && cached.isNotEmpty()) return
        if (cached != null && cached.isEmpty()) {
            liveCategoryPrefetch.remove(categoryId)
        }
        val loaded = channelsForLiveCategory(categoryId)
        if (loaded.isEmpty()) return
        liveCategoryPrefetch[categoryId] = loaded
        liveCategoryCounts[categoryId] = loaded.size
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
    }

    private fun prefetchLiveChannelIcons(channelBatch: List<LiveChannel>) {
        if (channelBatch.isEmpty()) return
        lifecycleScope.launch {
            val batchSize = 24
            channelBatch.chunked(batchSize).forEach { chunk ->
                withContext(Dispatchers.IO) {
                    coroutineScope {
                        val semaphore = Semaphore(8)
                        chunk.map { channel ->
                            async {
                                semaphore.withPermit {
                                    runCatching {
                                        ChannelIconHelper.preloadListIcon(this@MainActivity, channel)
                                    }
                                }
                            }
                        }.awaitAll()
                    }
                }
            }
        }
    }

    private fun indexForLiveCategoryId(id: String?): Int =
        liveCategories.indexOfFirst { liveCategoryId(it) == id }

    private fun refreshLiveCategoryHighlight(previousId: String?, newId: String?) {
        (liveCategoryList.adapter as? CategoryAdapter)?.let { adapter ->
            indexForLiveCategoryId(previousId).takeIf { it >= 0 }?.let { adapter.refreshItem(it) }
            indexForLiveCategoryId(newId).takeIf { it >= 0 }?.let { adapter.refreshItem(it) }
        }
    }

    private fun refreshCatalogCategoryHighlight(previousId: String?, newId: String?) {
        catalogCategoryAdapter?.let { adapter ->
            catalogCategories.indexOfFirst { it.id == previousId }.takeIf { it >= 0 }
                ?.let { adapter.refreshItem(it) }
            catalogCategories.indexOfFirst { it.id == newId }.takeIf { it >= 0 }
                ?.let { adapter.refreshItem(it) }
        }
    }

    private fun highlightLiveCategory(newId: String?) {
        val oldId = selectedLiveCategoryId
        selectedLiveCategoryId = newId
        val oldIndex = liveCategories.indexOfFirst { liveCategoryId(it) == oldId }
        val newIndex = liveCategories.indexOfFirst { liveCategoryId(it) == newId }
        (liveCategoryList.adapter as? CategoryAdapter)?.let { adapter ->
            if (oldIndex >= 0) adapter.refreshItem(oldIndex)
            if (newIndex >= 0) adapter.refreshItem(newIndex)
        }
    }

    private fun liveCategoryAdapterSelectedId(): String? {
        return when (liveBrowseLevel) {
            TvBrowseNav.Level.CONTENT -> selectedLiveCategoryId?.let { liveCategoryIdKey(it) }
            TvBrowseNav.Level.GROUP -> {
                val id = liveBrowsingCategoryId ?: return null
                if (parentalStore.requiresPinForLiveCategory(id)) return null
                liveCategoryIdKey(id)
            }
            else -> null
        }
    }

    private fun liveCategoryIdKey(id: String?): String = id ?: ""

    private fun showLiveSelectPrompt() {
        if (!liveTabReady) return
        pauseLivePreviewPlayback()
        previewTitle.text = getString(R.string.catalog_select_group)
        epgNow.text = ""
        epgNext.visibility = View.GONE
        previewLogo.visibility = View.GONE
        setPreviewVideoVisible(false)
    }

    private fun openLiveTabAtFirstGroup() {
        liveCategoryHandler.removeCallbacksAndMessages(null)
        if (liveCategories.isEmpty()) return
        liveCategoryFocusIndex = 0
        liveChannelsLoaded = false
        liveEnterContentOnLoad = false
        liveBrowsingCategoryId = null
        selectedLiveCategoryId = null
        channels.clear()
        channelAdapter?.notifyDataSetChanged()
        channelList.visibility = View.INVISIBLE
        pauseLivePreviewPlayback()
        showLiveSelectPrompt()
        syncLiveCategoryCounts()
        warmLiveCategoryPrefetch()
        liveBrowseLevel = TvBrowseNav.Level.GROUP
        applyLivePanelFocusMode(inContent = false)
        liveCategories.firstOrNull()?.let { cat ->
            showLiveCategoryChannels(
                cat,
                enterContent = false,
                refocusGroup = false,
                refreshCategories = false,
            )
        }
        liveCategoryList.post {
            if (currentTab != Tab.LIVE || liveBrowseLevel != TvBrowseNav.Level.GROUP) return@post
            if (liveCategoryList.focusedChild == null) {
                TvBrowseNav.focusGroup(liveCategoryList, liveCategoryFocusIndex)
            }
        }
    }

    private fun resetLivePreviewUi() {
        if (!liveTabReady) return
        previewToken++
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        teardownLivePreviewPlayback()
        currentPreviewChannel = null
        previewingStreamId = null
        previewUrls = emptyList()
        previewUrlIndex = 0
        setPreviewVideoVisible(false)
        previewTitle.text = getString(R.string.select_channel)
        epgNow.text = getString(R.string.epg_unavailable)
        epgNext.visibility = View.GONE
        previewLogo.visibility = View.GONE
        livePanel().findViewById<View>(R.id.miniNoSignal)?.visibility = View.GONE
        liveChannelStore.lastStreamId = 0
    }

    /** Refresca grupos/canales cuando el bootstrap termina en segundo plano. */
    private fun syncLivePlaylistUi() {
        val hasLiveData = PlaylistRepository.bootstrapReady ||
            PlaylistRepository.allChannels.isNotEmpty() ||
            PlaylistRepository.categories.isNotEmpty()
        if (!hasLiveData) return
        if (currentTab == Tab.LIVE && !liveTabReady) {
            ensureLiveTabReady()
        }
        if (!liveTabReady) return

        if (PlaylistRepository.allChannels.isNotEmpty() && liveCategoryPrefetch.values.any { it.isEmpty() }) {
            liveCategoryPrefetch.clear()
            liveCategoryCounts.clear()
        }

        val repoCategoryCount = PlaylistRepository.categories.size + 3
        if (liveCategories.size != repoCategoryCount) {
            refreshLiveCategoryList()
        }
        syncLiveCategoryChannels()

        if (currentTab == Tab.LIVE &&
            DeviceUi.useDpadFocus(this) &&
            liveBrowseLevel == TvBrowseNav.Level.TAB &&
            liveCategories.isNotEmpty()
        ) {
            livePanel().post {
                if (currentTab == Tab.LIVE && liveBrowseLevel == TvBrowseNav.Level.TAB) {
                    enterLiveTabFromTabBar()
                }
            }
        }
    }

    private fun syncLiveCategoryChannels() {
        if (!liveTabReady || PlaylistRepository.allChannels.isEmpty()) return
        val cat = liveCategories.getOrNull(liveCategoryFocusIndex) ?: return
        val categoryId = liveCategoryId(cat)
        val expected = liveChannelsForCategory(categoryId)
        val currentIds = channels.map { it.streamId }
        val expectedIds = expected.map { it.streamId }
        if (currentIds == expectedIds && expected.isNotEmpty()) return
        if (expected.isEmpty() && channels.isEmpty()) {
            previewLiveCategoryGroup(cat, refreshCategories = true)
            return
        }
        if (expected.isNotEmpty()) {
            previewLiveCategoryGroup(cat, refreshCategories = true)
        }
    }

    private fun refreshLiveCategoryList() {
        if (!liveTabReady) return
        val currentId = selectedLiveCategoryId
        liveCategories.clear()
        liveCategories.add(Category(id = "", name = getString(R.string.category_all)))
        liveCategories.add(
            Category(
                id = FavoritesStore.FAVORITES_CATEGORY_ID,
                name = getString(R.string.category_favorites),
            ),
        )
        liveCategories.add(
            Category(
                id = ParentalControlStore.LOCK_CATEGORY_ID,
                name = getString(R.string.category_locked),
            ),
        )
        liveCategories.addAll(PlaylistRepository.categories)
        selectedLiveCategoryId = currentId
        syncLiveCategoryCounts()
        warmLiveCategoryPrefetch()
        bindLiveCategoryAdapter()
    }

    private fun bindLiveCategoryAdapter() {
        liveCategoryList.adapter = CategoryAdapter(
            items = liveCategories,
            selectedId = { liveCategoryAdapterSelectedId() },
            itemCount = { cat -> liveCategoryCount(cat) },
            onClick = { cat -> applyLiveCategoryClick(cat, enterContent = true) },
            onFocus = { cat ->
                if (liveBrowseLevel == TvBrowseNav.Level.CONTENT) return@CategoryAdapter
                val newId = liveCategoryId(cat)
                val idx = liveCategories.indexOfFirst { liveCategoryId(it) == newId }
                if (idx >= 0) liveCategoryFocusIndex = idx
                if (parentalStore.requiresPinForLiveCategory(newId)) {
                    showLiveBlockedCategory(cat)
                    return@CategoryAdapter
                }
                if (liveBrowsingCategoryId == newId) {
                    refreshLiveCategoryHighlight(null, newId)
                    if (channels.isEmpty() && PlaylistRepository.allChannels.isNotEmpty()) {
                        liveCategoryPrefetch.remove(newId)
                        previewLiveCategoryGroup(cat)
                    }
                    return@CategoryAdapter
                }
                previewLiveCategoryGroup(cat)
            },
            onMoveRight = {
                val cat = liveCategories.getOrNull(liveCategoryFocusIndex) ?: return@CategoryAdapter
                withLiveCategoryAccess(cat, liveCategoryId(cat)) {
                    enterLiveContent(cat)
                }
            },
            onMoveLeft = null,
            onMoveUp = null,
            upFocusViewId = View.NO_ID,
            leftFocusViewId = View.NO_ID,
            navigationLocked = { liveBrowseLevel != TvBrowseNav.Level.GROUP },
        )
        liveCategoryList.nextFocusUpId = View.NO_ID
        if (DeviceUi.useDpadFocus(this)) {
            applyLivePanelFocusMode(inContent = liveBrowseLevel == TvBrowseNav.Level.CONTENT)
        }
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
        liveChannelsLoaded = true
        liveBrowseLevel = TvBrowseNav.Level.CONTENT
        TvBrowseNav.allowContentFocus(channelList)
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        TvNavHelper.focusItem(channelList, index)
        if (DeviceUi.useDpadFocus(this)) {
            schedulePreviewAfterChannelFocus(index)
        }
    }

    private fun schedulePreviewAfterChannelFocus(index: Int) {
        channelList.post {
            if (currentTab != Tab.LIVE) return@post
            val focusedIndex = channelList.focusedChild?.let { child ->
                channelList.getChildAdapterPosition(child).takeIf { it >= 0 }
            } ?: index
            channels.getOrNull(focusedIndex)?.let { schedulePreview(it) }
        }
    }

    private fun pauseLivePreviewPlayback() {
        if (!liveTabReady) return
        previewToken++
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        cancelPreviewTimeout()
        disarmPreviewStallWatchdog()
        teardownLivePreviewPlayback()
        detachPreviewPlayersFromSurface()
        setPreviewVideoVisible(false)
        hideMiniPreviewControls()
    }

    /** @deprecated Use leaveLiveTabSession — kept for call-site clarity. */
    private fun suspendLivePreview() {
        if (currentTab == Tab.LIVE) {
            leaveLiveTabSession()
        } else {
            detachPreviewPlayersFromSurface()
            livePreviewPaused = true
        }
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
            previewContainer?.post { previewContainer?.requestFocus() }
        } else {
            TvNavHelper.focusItem(channelList, next)
        }
    }

    private fun focusPreviewPanel() {
        val channel = currentPreviewChannel ?: return
        clearLiveCategoryFocusRing()
        livePreviewPaused = false
        schedulePreviewPlayback(channel)
        previewContainer?.requestFocus()
    }

    private fun enterLivePreviewFromChannels() {
        if (currentPreviewChannel == null) return
        focusPreviewPanel()
    }

    private fun clearLiveCategoryFocusRing() {
        liveCategoryList.focusedChild?.clearFocus()
    }

    private fun focusedLiveCategoryIndex(): Int {
        val child = liveCategoryList.focusedChild
        if (child != null) {
            val pos = liveCategoryList.getChildAdapterPosition(child)
            if (pos >= 0) return pos
        }
        return liveCategoryFocusIndex.coerceIn(0, (liveCategories.size - 1).coerceAtLeast(0))
    }

    private fun isLivePreviewBesideChannels(): Boolean {
        val preview = previewContainer ?: return false
        val params = preview.layoutParams as? LinearLayout.LayoutParams ?: return false
        return params.width == 0 && params.weight > 0f
    }

    private fun isFocusInPreviewPanel(): Boolean {
        val focused = currentFocus ?: return false
        return focused === previewContainer
    }

    private fun focusChannelAt(channel: LiveChannel?) {
        val target = channel ?: currentPreviewChannel ?: return
        val index = channels.indexOfFirst { it.streamId == target.streamId }
        if (index < 0) return
        clearLiveCategoryFocusRing()
        TvNavHelper.focusItem(channelList, index)
    }

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

    private fun updateHeaderFocusForTab(tab: Tab) {
        val headerFocusable = !DeviceUi.useDpadFocus(this) || tab == Tab.HOME
        val searchFocusable = !DeviceUi.useDpadFocus(this) || true
        btnSearch.isFocusable = searchFocusable
        btnSearch.isFocusableInTouchMode = searchFocusable
        listOf(btnReload, btnSettings, btnLogout, btnExit).forEach { button ->
            button.isFocusable = headerFocusable
            button.isFocusableInTouchMode = headerFocusable
            if (!headerFocusable && button.hasFocus()) button.clearFocus()
        }
        if (DeviceUi.useDpadFocus(this)) {
            catalogCategoryList.nextFocusUpId = View.NO_ID
        }
    }

    private fun openSearch() {
        startActivity(Intent(this, SearchActivity::class.java))
    }

    private fun updateHeaderDownFocus() {
        val target = when (currentTab) {
            Tab.HOME -> heroPlay.id
            Tab.LIVE -> when {
                !liveTabReady -> heroPlay.id
                liveBrowseLevel == TvBrowseNav.Level.CONTENT && channels.isNotEmpty() -> channelList.id
                liveBrowseLevel == TvBrowseNav.Level.GROUP -> liveCategoryList.id
                else -> tabLive.id
            }
            Tab.MOVIES, Tab.SERIES -> when {
                catalogBrowseLevel == TvBrowseNav.Level.CONTENT && posterItems.isNotEmpty() -> catalogGrid.id
                catalogBrowseLevel == TvBrowseNav.Level.GROUP -> catalogCategoryList.id
                currentTab == Tab.MOVIES -> tabMovies.id
                else -> tabSeries.id
            }
        }
        listOf(btnSearch, btnReload, btnSettings, btnLogout, btnExit).forEach {
            it.nextFocusDownId = target
        }
    }

    private fun updateTabDownFocus() {
        if (!DeviceUi.useDpadFocus(this)) return
        tabLive.nextFocusDownId = if (currentTab == Tab.LIVE && liveBrowseLevel == TvBrowseNav.Level.GROUP) {
            R.id.categoryList
        } else {
            R.id.tabLive
        }
        tabMovies.nextFocusDownId = if (currentTab == Tab.MOVIES && catalogBrowseLevel == TvBrowseNav.Level.GROUP) {
            R.id.catalogCategoryList
        } else {
            R.id.tabMovies
        }
        tabSeries.nextFocusDownId = if (currentTab == Tab.SERIES && catalogBrowseLevel == TvBrowseNav.Level.GROUP) {
            R.id.catalogCategoryList
        } else {
            R.id.tabSeries
        }
    }

    private fun isBrowseTabLocked(tab: Tab): Boolean = when (tab) {
        Tab.LIVE -> liveBrowseLevel == TvBrowseNav.Level.TAB
        Tab.MOVIES, Tab.SERIES -> catalogBrowseLevel == TvBrowseNav.Level.TAB
        else -> false
    }

    private fun focusContentFromHeader() {
        when (currentTab) {
            Tab.HOME -> heroPlay.requestFocus()
            Tab.LIVE -> if (liveBrowseLevel == TvBrowseNav.Level.GROUP) focusFirstLiveCategory() else tabLive.requestFocus()
            Tab.MOVIES -> if (catalogBrowseLevel == TvBrowseNav.Level.GROUP) focusFirstCatalogCategory() else tabMovies.requestFocus()
            Tab.SERIES -> if (catalogBrowseLevel == TvBrowseNav.Level.GROUP) focusFirstCatalogCategory() else tabSeries.requestFocus()
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

    private fun focusFirstLiveCategory() {
        focusCategoryList()
    }

    private fun focusCategoryList() {
        val index = liveCategoryFocusIndex.coerceIn(0, (liveCategories.size - 1).coerceAtLeast(0))
        liveCategoryFocusIndex = index
        liveBrowsingCategoryId = liveCategories.getOrNull(index)?.let { liveCategoryId(it) }
        applyLivePanelFocusMode(inContent = false)
        liveCategories.getOrNull(index)?.let {
            showLiveCategoryChannels(it, enterContent = false, refocusGroup = false, refreshCategories = false)
        }
        liveCategoryList.post {
            if (currentTab != Tab.LIVE || liveBrowseLevel != TvBrowseNav.Level.GROUP) return@post
            if (liveCategoryList.focusedChild == null) {
                TvBrowseNav.focusGroup(liveCategoryList, index)
            }
        }
    }

    private fun liveCategoryIndex(): Int = when (selectedLiveCategoryId) {
        null -> 0
        FavoritesStore.FAVORITES_CATEGORY_ID -> 1
        ParentalControlStore.LOCK_CATEGORY_ID -> 2
        else -> liveCategories.indexOfFirst { it.id == selectedLiveCategoryId }
            .takeIf { it >= 0 } ?: 0
    }

    private fun focusHeaderReload() {
        btnReload.post {
            homeScrollView.smoothScrollTo(0, 0)
            btnReload.requestFocus()
        }
    }

    private fun focusCatalogAtIndex(index: Int) {
        if (catalogCategories.isEmpty() || index < 0) return
        catalogCategoryList.post { TvNavHelper.focusCategoryItem(catalogCategoryList, index) }
    }

    private fun focusFirstCatalogCategory() {
        focusCatalogAtIndex(0)
    }

    private fun showCatalogSelectPrompt() {
        catalogLoading.visibility = View.GONE
        catalogGrid.alpha = 1f
        catalogGrid.visibility = View.INVISIBLE
        catalogEmpty.visibility = View.VISIBLE
        catalogEmpty.text = getString(R.string.catalog_select_group)
    }

    private fun syncCatalogCategoryCounts(tab: Tab) {
        catalogCategories.forEach { cat ->
            val size = when {
                cat.id == ResumeStore.RESUME_CATEGORY_ID -> {
                    val kind = when (tab) {
                        Tab.MOVIES -> ResumeStore.KIND_MOVIE
                        Tab.SERIES -> ResumeStore.KIND_SERIES
                        else -> return@forEach
                    }
                    resumeStore.loadAll().count { it.kind == kind }
                }
                tab == Tab.MOVIES -> PlaylistRepository.cachedVod(cat.id)?.size
                tab == Tab.SERIES -> PlaylistRepository.cachedSeries(cat.id)?.size
                else -> null
            }
            if (size != null) catalogCategoryCounts[cat.id] = size
        }
    }

    private fun ensureCatalogTabReady(tab: Tab) {
        val cats = catalogCategoriesFor(tab)
        val ready = if (tab == Tab.MOVIES) moviesCatalogReady else seriesCatalogReady
        val needsSetup = !ready ||
            catalogGrid.adapter == null ||
            (cats.isNotEmpty() && catalogCategories.isEmpty())
        if (needsSetup) {
            setupCatalogTab(tab)
        }
        if (cats.isNotEmpty()) {
            when (tab) {
                Tab.MOVIES -> moviesCatalogReady = true
                Tab.SERIES -> seriesCatalogReady = true
                else -> Unit
            }
        }
    }

    private fun browseCatalogCategory(tab: Tab, cat: Category, enterContent: Boolean) {
        if (enterContent) {
            withCatalogCategoryAccess(tab, cat) {
                enterCatalogContent(tab, cat)
            }
            return
        }
        previewCatalogGroup(tab, cat)
    }

    /** Muestra el grid del grupo con foco en la columna de categorías. */
    private fun previewCatalogGroup(tab: Tab, cat: Category) {
        if (catalogCategoryRequiresPin(tab, cat.id)) {
            showCatalogBlockedCategory(tab, cat)
            return
        }
        val catId = cat.id
        val idx = catalogCategories.indexOfFirst { it.id == catId }
        if (idx >= 0) catalogCategoryFocusIndex = idx
        if (
            catalogBrowsingCategoryId == catId &&
            catalogBrowseLevel == TvBrowseNav.Level.GROUP
        ) {
            refreshCatalogCategoryHighlight(null, catId)
            val needsReload = when (tab) {
                Tab.MOVIES -> PlaylistRepository.cachedVod(catId).isNullOrEmpty() &&
                    inFlightCatalogCategory != catId
                Tab.SERIES -> PlaylistRepository.cachedSeries(catId).isNullOrEmpty() &&
                    inFlightCatalogCategory != catId
                else -> false
            }
            if (needsReload) warmCatalogCategoryContent(tab, catId)
            return
        }
        val previousId = catalogBrowsingCategoryId
        catalogBrowsingCategoryId = catId
        selectedCatalogCategoryId = null
        catalogEnterContentOnLoad = false
        catalogBrowseLevel = TvBrowseNav.Level.GROUP
        if (previousId != catId) {
            refreshCatalogCategoryHighlight(previousId, catId)
        }
        applyCatalogPanelFocusMode(tab, inContent = false)
        previewCatalogGroupHero(tab, catId)
        scheduleCatalogPrefetch(tab, catId)
        warmCatalogCategoryContent(tab, catId)
    }

    /** Prefetch poster grid while browsing groups so OK/→ opens content faster. */
    private fun warmCatalogCategoryContent(tab: Tab, catId: String) {
        if (catId == ResumeStore.RESUME_CATEGORY_ID) return
        val hasCache = when (tab) {
            Tab.MOVIES -> !PlaylistRepository.cachedVod(catId).isNullOrEmpty()
            Tab.SERIES -> !PlaylistRepository.cachedSeries(catId).isNullOrEmpty()
            else -> true
        }
        if (!hasCache && inFlightCatalogCategory != catId) {
            loadCatalogItems(tab, catId, showLoadingIndicator = false)
        }
    }

    /** Vista ligera al navegar grupos: solo cabecera, sin cargar el grid completo. */
    private fun previewCatalogGroupHero(tab: Tab, catId: String) {
        val catName = catalogCategories.find { it.id == catId }?.name.orEmpty()
        val cover = when (tab) {
            Tab.MOVIES -> PlaylistRepository.cachedVod(catId)
                ?.firstOrNull { it.icon.isNotBlank() }?.icon
            Tab.SERIES -> PlaylistRepository.cachedSeries(catId)
                ?.firstOrNull { it.cover.isNotBlank() }?.cover
            else -> null
        }.orEmpty()
        bindCatalogHero(tab, catName, cover)
        catalogGrid.visibility = View.INVISIBLE
        catalogEmpty.visibility = View.GONE
        catalogLoading.visibility = View.GONE
    }

    private fun enterCatalogTabFromTabBar(tab: Tab) {
        catalogCategoryHandler.removeCallbacksAndMessages(null)
        val cats = catalogCategoriesFor(tab)
        if (cats.isEmpty()) {
            openCatalogTabAtFirstGroup(tab)
            return
        }
        val lastId = when (tab) {
            Tab.MOVIES -> movieCategoryId
            Tab.SERIES -> seriesCategoryId
            else -> null
        }?.takeIf { id -> cats.any { it.id == id } }
        val target = lastId?.let { id -> cats.find { it.id == id } }
            ?: cats.firstOrNull { !catalogCategoryRequiresPin(tab, it.id) }
            ?: cats.first()
        val targetIndex = cats.indexOfFirst { it.id == target.id }.coerceAtLeast(0)
        val cachedReady = when (tab) {
            Tab.MOVIES -> target.id == ResumeStore.RESUME_CATEGORY_ID ||
                !PlaylistRepository.cachedVod(target.id).isNullOrEmpty()
            Tab.SERIES -> target.id == ResumeStore.RESUME_CATEGORY_ID ||
                !PlaylistRepository.cachedSeries(target.id).isNullOrEmpty()
            else -> false
        }
        if (!cachedReady) {
            prefetchCatalogGroup(tab, target.id)
        }
        if (catalogCategories.isEmpty() || catalogCategories.size != cats.size) {
            catalogCategories.clear()
            catalogCategories.addAll(cats)
            bindCatalogCategoryAdapter(tab)
            syncCatalogCategoryCounts(tab)
            warmCatalogCategoryCounts(tab)
        }
        catalogCategoryFocusIndex = targetIndex
        withCatalogCategoryAccess(tab, target) {
            previewCatalogGroup(tab, target)
            catalogCategoryList.post {
                if (currentTab != tab || catalogBrowseLevel != TvBrowseNav.Level.GROUP) return@post
                TvBrowseNav.focusGroup(catalogCategoryList, targetIndex)
            }
        }
    }

    private fun enterCatalogContent(tab: Tab, cat: Category) {
        if (catalogCategoryRequiresPin(tab, cat.id)) {
            showCatalogBlockedCategory(tab, cat)
            return
        }
        val catId = cat.id
        val idx = catalogCategories.indexOfFirst { it.id == catId }
        if (idx >= 0) catalogCategoryFocusIndex = idx
        val previousBrowsingId = catalogBrowsingCategoryId
        catalogBrowsingCategoryId = null
        selectedCatalogCategoryId = catId
        catalogEnterContentOnLoad = true
        refreshCatalogCategoryHighlight(previousBrowsingId, catId)
        highlightCatalogCategory(tab, catId)
        applyCatalogPanelFocusMode(tab, inContent = true)
        showCatalogGroupContent(tab, catId)
        catalogGrid.visibility = View.VISIBLE
        catalogEmpty.visibility = View.GONE
        catalogGrid.scrollToPosition(0)
        if (posterItems.isNotEmpty()) {
            focusCatalogPosterGridNow(tab)
        }
    }

    private fun focusCatalogPosterGridNow(tab: Tab) {
        if (posterItems.isEmpty()) return
        catalogEnterContentOnLoad = false
        catalogBrowsingCategoryId = null
        applyCatalogPanelFocusMode(tab, inContent = true)
        TvBrowseNav.focusContent(catalogGrid, 0) {
            (catalogCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        }
    }

    private fun openCatalogTabAtFirstGroup(tab: Tab) {
        catalogCategoryHandler.removeCallbacksAndMessages(null)
        val cats = catalogCategoriesFor(tab)
        catalogCategories.clear()
        catalogCategories.addAll(cats)
        catalogCategoryFocusIndex = 0
        selectedCatalogCategoryId = null
        catalogBrowsingCategoryId = null
        catalogEnterContentOnLoad = false
        when (tab) {
            Tab.MOVIES -> {
                moviesGroupLoaded = false
                movieCategoryId = null
            }
            Tab.SERIES -> {
                seriesGroupLoaded = false
                seriesCategoryId = null
            }
            else -> Unit
        }
        posterItems.clear()
        catalogGrid.adapter?.notifyDataSetChanged()
        bindCatalogCategoryAdapter(tab)
        syncCatalogCategoryCounts(tab)
        warmCatalogCategoryCounts(tab)
        if (cats.isEmpty()) {
            catalogLoading.visibility = View.GONE
            catalogGrid.visibility = View.INVISIBLE
            catalogEmpty.visibility = View.VISIBLE
            catalogEmpty.text = getString(R.string.catalog_empty)
            catalogBrowseLevel = TvBrowseNav.Level.GROUP
            TvBrowseNav.blockContentFocus(catalogGrid)
            return
        }
        catalogBrowseLevel = TvBrowseNav.Level.GROUP
        applyCatalogPanelFocusMode(tab, inContent = false)
        val first = cats.first()
        browseCatalogCategory(tab, first, enterContent = false)
        catalogCategoryList.post {
            if (currentTab != tab || catalogBrowseLevel != TvBrowseNav.Level.GROUP) return@post
            if (catalogCategoryList.focusedChild == null) {
                TvBrowseNav.focusGroup(catalogCategoryList, catalogCategoryFocusIndex)
            }
        }
    }

    private fun catalogAdapterSelectedId(tab: Tab): String? {
        return when (catalogBrowseLevel) {
            TvBrowseNav.Level.CONTENT -> selectedCatalogCategoryId
            TvBrowseNav.Level.GROUP -> {
                val id = catalogBrowsingCategoryId ?: return null
                if (catalogCategoryRequiresPin(tab, id)) return null
                id
            }
            else -> null
        }
    }

    private fun applyCatalogPanelFocusMode(tab: Tab, inContent: Boolean) {
        catalogBrowseLevel = when {
            inContent -> TvBrowseNav.Level.CONTENT
            catalogBrowseLevel == TvBrowseNav.Level.TAB -> TvBrowseNav.Level.TAB
            else -> TvBrowseNav.Level.GROUP
        }
        if (inContent) {
            when (tab) {
                Tab.MOVIES -> moviesGroupLoaded = true
                Tab.SERIES -> seriesGroupLoaded = true
                else -> Unit
            }
        } else if (catalogBrowseLevel == TvBrowseNav.Level.TAB) {
            when (tab) {
                Tab.MOVIES -> moviesGroupLoaded = false
                Tab.SERIES -> seriesGroupLoaded = false
                else -> Unit
            }
        }
        applyCatalogBrowseLevel(tab)
    }

    private fun enterCatalogPosterGrid(tab: Tab) {
        focusCatalogPosterGridNow(tab)
    }

    private fun selectCatalogGroup(tab: Tab, cat: Category, enterContent: Boolean) {
        if (!enterContent) return
        browseCatalogCategory(tab, cat, enterContent = true)
    }

    private fun showCatalogGroupContent(tab: Tab, catId: String) {
        when (tab) {
            Tab.MOVIES -> when (catId) {
                ResumeStore.RESUME_CATEGORY_ID -> bindResumeMovies()
                else -> {
                    val cached = PlaylistRepository.cachedVod(catId)
                    if (!cached.isNullOrEmpty()) {
                        bindMovies(cached)
                        return
                    }
                    loadCatalogItems(tab, catId)
                }
            }
            Tab.SERIES -> when (catId) {
                ResumeStore.RESUME_CATEGORY_ID -> bindResumeSeries()
                else -> {
                    val cached = PlaylistRepository.cachedSeries(catId)
                    if (!cached.isNullOrEmpty()) {
                        bindSeries(cached)
                        return
                    }
                    loadCatalogItems(tab, catId)
                }
            }
            else -> Unit
        }
    }

    private fun warmCatalogCategoryCounts(tab: Tab) {
        syncCatalogCategoryCounts(tab)
        catalogCategoryAdapter?.refreshSelection()
    }

    private fun scheduleCatalogPrefetch(tab: Tab, catId: String) {
        val token = ++catalogPrefetchToken
        val task = Runnable {
            if (token != catalogPrefetchToken) return@Runnable
            prefetchCatalogGroup(tab, catId)
        }
        catalogCategoryHandler.removeCallbacksAndMessages(null)
        catalogCategoryHandler.postDelayed(task, 180L)
    }

    private fun prefetchCatalogGroup(tab: Tab, catId: String) {
        when (tab) {
            Tab.MOVIES -> when (catId) {
                ResumeStore.RESUME_CATEGORY_ID -> return
                else -> if (PlaylistRepository.cachedVod(catId) != null) return
            }
            Tab.SERIES -> when (catId) {
                ResumeStore.RESUME_CATEGORY_ID -> return
                else -> if (PlaylistRepository.cachedSeries(catId) != null) return
            }
            else -> return
        }
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            try {
                val size = withContext(Dispatchers.IO) {
                    when (tab) {
                        Tab.MOVIES -> {
                            val movies = api.vodStreams(profile, catId)
                            PlaylistRepository.cacheVod(catId, movies)
                            movies
                        }
                        Tab.SERIES -> {
                            val series = api.seriesList(profile, catId)
                            PlaylistRepository.cacheSeries(catId, series)
                            series
                        }
                        else -> emptyList<Any>()
                    }
                }
                catalogCategoryCounts[catId] = size.size
                catalogCategoryAdapter?.refreshSelection()
                val shouldBind = posterItems.isEmpty() && (
                    (catalogEnterContentOnLoad && selectedCatalogCategoryId == catId) ||
                        (catalogBrowseLevel == TvBrowseNav.Level.GROUP && catalogBrowsingCategoryId == catId)
                    )
                if (shouldBind) {
                    when (tab) {
                        Tab.MOVIES -> bindMovies(size as List<VodMovie>)
                        Tab.SERIES -> bindSeries(size as List<SeriesItem>)
                        else -> Unit
                    }
                }
            } catch (_: Exception) {
            }
        }
    }

    private fun warmFirstCatalogGroup(tab: Tab) {
        val firstId = catalogCategoriesFor(tab)
            .firstOrNull { !catalogCategoryRequiresPin(tab, it.id) }
            ?.id
            ?: return
        prefetchCatalogGroup(tab, firstId)
    }

    private fun catalogActionTab(fallback: Tab): Tab = when (currentTab) {
        Tab.MOVIES, Tab.SERIES -> currentTab
        else -> fallback
    }

    private fun prefetchCatalogDetail(tab: Tab, item: PosterAdapter.PosterItem) {
        val activeTab = catalogActionTab(tab)
        val kind = when (activeTab) {
            Tab.MOVIES -> "movie"
            Tab.SERIES -> "series"
            else -> return
        }
        if (PlotCache.get(kind, item.id) != null) return
        val profile = PlaylistRepository.profile ?: return
        val emptyPlot = getString(R.string.hero_plot_empty)
        lifecycleScope.launch {
            try {
                withContext(Dispatchers.IO) {
                    when (activeTab) {
                        Tab.MOVIES -> {
                            val info = api.vodInfo(profile, item.id) ?: return@withContext
                            MovieDetailCache.put(item.id, info)
                            val backdrop = info.backdrop.ifBlank { info.cover }
                            PlotCache.put(
                                kind,
                                item.id,
                                PlotCache.Entry(
                                    plot = info.plot.ifBlank { emptyPlot },
                                    subtitle = listOf(info.genre, info.releaseDate, info.rating)
                                        .filter { it.isNotBlank() }
                                        .joinToString(" · "),
                                    backdrop = backdrop,
                                    poster = info.cover,
                                    title = info.name,
                                ),
                            )
                        }
                        Tab.SERIES -> {
                            val detail = api.seriesInfo(profile, item.id) ?: return@withContext
                            SeriesDetailCache.put(item.id, detail)
                            val backdrop = detail.backdrop.ifBlank { detail.cover }
                            val seasons = detail.seasons.keys
                                .sortedBy { it.toIntOrNull() ?: Int.MAX_VALUE }
                                .joinToString(" · ") { season -> "S$season" }
                            PlotCache.put(
                                kind,
                                item.id,
                                PlotCache.Entry(
                                    plot = detail.plot.ifBlank { emptyPlot },
                                    subtitle = listOf(detail.genre, detail.releaseDate, detail.rating)
                                        .filter { it.isNotBlank() }
                                        .joinToString(" · "),
                                    backdrop = backdrop,
                                    poster = detail.cover,
                                    title = detail.name,
                                    seasonsSummary = seasons,
                                ),
                            )
                        }
                        else -> Unit
                    }
                }
            } catch (_: Exception) {
            }
        }
    }

    private fun maybeEnterCatalogContent() {
        if (!catalogEnterContentOnLoad || posterItems.isEmpty()) return
        focusCatalogPosterGridNow(currentTab)
    }

    private fun highlightCatalogCategory(tab: Tab, catId: String) {
        if (catId == selectedCatalogCategoryId) return
        val oldId = selectedCatalogCategoryId
        selectedCatalogCategoryId = catId
        when (tab) {
            Tab.MOVIES -> movieCategoryId = catId
            Tab.SERIES -> seriesCategoryId = catId
            else -> Unit
        }
        val oldIndex = catalogCategories.indexOfFirst { it.id == oldId }
        val newIndex = catalogCategories.indexOfFirst { it.id == catId }
        if (oldIndex >= 0) catalogCategoryAdapter?.refreshItem(oldIndex)
        if (newIndex >= 0) catalogCategoryAdapter?.refreshItem(newIndex)
    }

    private fun enterCatalogTabFocus() {
        if (catalogCategories.isEmpty()) return
        catalogCategoryList.post { TvNavHelper.focusCategoryItem(catalogCategoryList, 0) }
    }

    private fun focusCatalogCategoryList() {
        val index = catalogCategoryFocusIndex.coerceIn(0, (catalogCategories.size - 1).coerceAtLeast(0))
        catalogCategoryFocusIndex = index
        catalogBrowsingCategoryId = catalogCategories.getOrNull(index)?.id
        catalogEnterContentOnLoad = false
        applyCatalogPanelFocusMode(currentTab, inContent = false)
        catalogCategories.getOrNull(index)?.let {
            browseCatalogCategory(currentTab, it, enterContent = false)
        }
        catalogCategoryList.post {
            if (currentTab != Tab.MOVIES && currentTab != Tab.SERIES) return@post
            if (catalogBrowseLevel != TvBrowseNav.Level.GROUP) return@post
            if (catalogCategoryList.focusedChild == null) {
                TvBrowseNav.focusGroup(catalogCategoryList, index)
            }
        }
    }

    private fun catalogCategoryIndex(): Int {
        return catalogCategories.indexOfFirst { it.id == selectedCatalogCategoryId }
            .takeIf { it >= 0 } ?: 0
    }

    private fun focusedCatalogCategoryIndex(): Int {
        val child = catalogCategoryList.focusedChild
        if (child != null) {
            val pos = catalogCategoryList.getChildAdapterPosition(child)
            if (pos >= 0) return pos
        }
        return catalogCategoryFocusIndex.coerceIn(0, (catalogCategories.size - 1).coerceAtLeast(0))
    }

    private fun focusFirstCatalogItem(onFocused: (() -> Unit)? = null) {
        enterCatalogPosterGrid(currentTab)
        onFocused?.invoke()
    }

    private fun setupTabNavigation() {
        bindNavTab(tabHome, Tab.HOME)
        bindNavTab(tabLive, Tab.LIVE)
        bindNavTab(tabMovies, Tab.MOVIES)
        bindNavTab(tabSeries, Tab.SERIES)
        if (DeviceUi.useDpadFocus(this)) {
            tabHome.nextFocusLeftId = R.id.tabSeries
            tabHome.nextFocusRightId = R.id.tabLive
            tabLive.nextFocusLeftId = R.id.tabHome
            tabLive.nextFocusRightId = R.id.tabMovies
            tabMovies.nextFocusLeftId = R.id.tabLive
            tabMovies.nextFocusRightId = R.id.tabSeries
            tabSeries.nextFocusLeftId = R.id.tabMovies
            tabSeries.nextFocusRightId = R.id.tabHome
            heroPlay.nextFocusRightId = R.id.tabLive
            updateTabDownFocus()
        }
    }

    private fun bindNavTab(view: View, tab: Tab) {
        view.setOnClickListener {
            openTab(tab)
        }
        if (DeviceUi.useDpadFocus(this)) {
            view.setOnFocusChangeListener { _, hasFocus ->
                if (!hasFocus) return@setOnFocusChangeListener
                if (!suppressTabFocusNavigation && currentTab != tab) {
                    openTab(tab)
                }
                if (tab == Tab.MOVIES || tab == Tab.SERIES) {
                    warmFirstCatalogGroup(tab)
                }
            }
            view.setOnKeyListener { _, keyCode, event ->
                if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
                when (keyCode) {
                    KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                        if (currentTab == tab) {
                            enterTabPanel(tab)
                            return@setOnKeyListener true
                        }
                    }
                    KeyEvent.KEYCODE_DPAD_LEFT -> {
                        if (currentTab == tab && isBrowseTabLocked(tab)) {
                            focusAdjacentTab(tab, -1)
                            return@setOnKeyListener true
                        }
                    }
                    KeyEvent.KEYCODE_DPAD_RIGHT -> {
                        if (currentTab == tab && isBrowseTabLocked(tab)) {
                            focusAdjacentTab(tab, +1)
                            return@setOnKeyListener true
                        }
                    }
                    KeyEvent.KEYCODE_DPAD_DOWN -> {
                        if (currentTab == tab && isBrowseTabLocked(tab)) {
                            return@setOnKeyListener true
                        }
                    }
                }
                false
            }
        }
    }

    /** OK on bottom tab: enter first group (categories). */
    private fun enterTabPanel(tab: Tab) {
        when (tab) {
            Tab.HOME -> {
                homeScrollView.post { homeScrollView.smoothScrollTo(0, 0) }
                focusHeroOnStart()
            }
            Tab.LIVE -> {
                ensureLiveTabReady()
                when (liveBrowseLevel) {
                    TvBrowseNav.Level.TAB -> livePanel().post { enterLiveTabFromTabBar() }
                    TvBrowseNav.Level.GROUP -> focusCategoryList()
                    TvBrowseNav.Level.CONTENT -> exitLiveContentToGroup()
                }
            }
            Tab.MOVIES, Tab.SERIES -> {
                ensureCatalogTabReady(tab)
                when (catalogBrowseLevel) {
                    TvBrowseNav.Level.TAB -> panelCatalog.post { enterCatalogTabFromTabBar(tab) }
                    TvBrowseNav.Level.GROUP -> focusCatalogCategoryList()
                    TvBrowseNav.Level.CONTENT -> exitCatalogContentToGroup()
                }
            }
        }
    }

    private fun openTab(tab: Tab) {
        showTab(tab)
    }

    private fun showTab(tab: Tab) {
        val leavingLive = currentTab == Tab.LIVE && tab != Tab.LIVE
        val enteringFromOtherTab = currentTab != tab
        previousTab = currentTab
        currentTab = tab
        if (leavingLive) {
            leaveLiveTabSession()
        }
        tabHome.isSelected = tab == Tab.HOME
        tabLive.isSelected = tab == Tab.LIVE
        tabMovies.isSelected = tab == Tab.MOVIES
        tabSeries.isSelected = tab == Tab.SERIES
        if (tab == Tab.LIVE) {
            ensureLiveTabReady()
        }
        updateHeaderFocusForTab(tab)
        updateHeaderDownFocus()

        when (tab) {
            Tab.HOME -> {
                panelHome.visibility = View.VISIBLE
                panelLive?.visibility = View.GONE
                panelCatalog.visibility = View.GONE
                if (!homeLoaded) {
                    panelHome.post {
                        if (!isDestroyed && currentTab == Tab.HOME) {
                            loadHome()
                        }
                    }
                } else {
                    railPreviewItem = null
                    heroCarouselPaused = false
                    startHeroRotation()
                    if (DeviceUi.useDpadFocus(this)) {
                        tabHome.post { tabHome.requestFocus() }
                    }
                }
            }
            Tab.LIVE -> {
                panelHome.visibility = View.GONE
                livePanel().visibility = View.VISIBLE
                panelCatalog.visibility = View.GONE
                stopHeroRotation()
                livePreviewPaused = false
                syncLivePlaylistUi()
                livePanel().post {
                    if (currentTab != Tab.LIVE) return@post
                    if (DeviceUi.useDpadFocus(this)) {
                        ensurePreviewPlayer()
                        attachPreviewPlayersToSurface()
                        warmupPreviewPlayer()
                        if (PlaylistRepository.bootstrapReady && liveBrowseLevel == TvBrowseNav.Level.TAB) {
                            enterLiveTabFromTabBar()
                        } else {
                            applyLiveBrowseLevel()
                        }
                    } else {
                        ensurePreviewPlayer()
                        attachPreviewPlayersToSurface()
                        restoreLiveTabSession()
                    }
                }
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelHome.visibility = View.GONE
                panelLive?.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                stopHeroRotation()
                if (DeviceUi.useDpadFocus(this)) {
                    catalogBrowseLevel = TvBrowseNav.Level.TAB
                    panelCatalog.post { applyCatalogBrowseLevel(tab) }
                    warmFirstCatalogGroup(tab)
                }
                val switchingBetweenCatalog =
                    (previousTab == Tab.MOVIES || previousTab == Tab.SERIES) && previousTab != tab
                val ready = if (tab == Tab.MOVIES) moviesCatalogReady else seriesCatalogReady
                ensureCatalogTabReady(tab)
                if (!ready || switchingBetweenCatalog || catalogPosterTab != tab) {
                    setupCatalogTab(tab)
                    if (catalogCategories.isNotEmpty()) {
                        if (tab == Tab.MOVIES) moviesCatalogReady = true else seriesCatalogReady = true
                    }
                } else if (!DeviceUi.useDpadFocus(this)) {
                    restoreCatalogTab(tab)
                }
            }
        }
    }

    private fun loadHome() {
        val profile = PlaylistRepository.profile
        if (profile == null) {
            homeLoading.visibility = View.GONE
            homeEmpty.visibility = View.VISIBLE
            return
        }

        val bootstrapMovies = PlaylistRepository.homeRecentMovies
        val bootstrapSeries = PlaylistRepository.homeRecentSeries
        if (bootstrapMovies.isNotEmpty() || bootstrapSeries.isNotEmpty()) {
            presentHomeData(bootstrapMovies, bootstrapSeries)
            return
        }

        if (PlaylistRepository.bootstrapReady) {
            presentHomeData(emptyList(), emptyList())
            return
        }

        homeLoading.visibility = View.VISIBLE
        homeEmpty.visibility = View.GONE
        lifecycleScope.launch {
            try {
                val movies = withContext(Dispatchers.IO) {
                    HomeLoader.loadRecentMovies(api, profile)
                }
                val series = withContext(Dispatchers.IO) {
                    HomeLoader.loadRecentSeries(api, profile)
                }
                PlaylistRepository.setHomeRecent(movies, series)
                if (isDestroyed || currentTab != Tab.HOME) return@launch
                presentHomeData(movies, series)
            } catch (_: Throwable) {
                if (isDestroyed) return@launch
                presentHomeData(
                    PlaylistRepository.homeRecentMovies,
                    PlaylistRepository.homeRecentSeries,
                )
            }
        }
    }

    private fun presentHomeData(movies: List<VodMovie>, series: List<SeriesItem>) {
        applyHomeData(movies, series)
        homeLoading.visibility = View.GONE
        homeLoaded = true
        scheduleContentPreloadAfterHome()
    }

    private fun updateHeaderAccountInfo() {
        val account = PlaylistRepository.accountInfo
        val exp = AccountFormat.formatExpiration(account?.expDate.orEmpty())
        headerExpiration.text = getString(R.string.header_expires, exp)
        headerExpiration.visibility = View.VISIBLE
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
        if (currentTab != Tab.HOME || !DeviceUi.useDpadFocus(this)) return
        homeScrollView.post { homeScrollView.smoothScrollTo(0, 0) }
        if (heroItems.isEmpty()) return
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
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
        }
    }

    private fun scrollHomeSectionIntoView(anchor: View) {
        homeScrollView.post {
            val rect = android.graphics.Rect(0, 0, anchor.width, anchor.height)
            homeScrollView.requestChildRectangleOnScreen(anchor, rect, true)
        }
    }

    private fun focusHomeRailItem(rail: RecyclerView, titleView: View? = null) {
        homeScrollView.post {
            titleView?.let { scrollHomeSectionIntoView(it) }
            TvNavHelper.focusItem(rail, 0)
        }
    }

    private fun focusLastHomeRail() {
        when {
            recentSeries.isNotEmpty() -> focusHomeRailItem(seriesRail, seriesRailTitle)
            recentMovies.isNotEmpty() -> focusHomeRailItem(moviesRail, moviesRailTitle)
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
            else -> heroPlay.requestFocus()
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
        heroPlay.requestFocus()
    }

    private fun focusHomeRailAboveMovies() {
        when {
            favoritesRail.visibility == View.VISIBLE && favoriteItems.isNotEmpty() ->
                focusHomeRailItem(favoritesRail, favoritesRailTitle)
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
            else -> heroPlay.requestFocus()
        }
    }

    private fun wireHomeRails() {
        bindHomeRail(
            favoritesRail,
            favoriteItems,
            onMoveUp = { heroPlay.requestFocus() },
            onMoveDown = { focusHomeRailBelowFavorites() },
        )
        bindHomeRail(
            moviesRail,
            recentMovies,
            titleView = moviesRailTitle,
            onMoveUp = { focusHomeRailAboveMovies() },
            onMoveDown = { focusHomeRailBelowMovies() },
        )
        bindHomeRail(
            seriesRail,
            recentSeries,
            titleView = seriesRailTitle,
            onMoveUp = { focusHomeRailAboveSeries() },
            onMoveDown = { tabHome.requestFocus() },
        )
    }

    private fun applyHomeData(movies: List<VodMovie>, series: List<SeriesItem>) {
        try {
            applyHomeDataInternal(movies, series)
        } catch (_: Throwable) {
            homeLoading.visibility = View.GONE
            homeEmpty.visibility = View.VISIBLE
        }
    }

    private fun homeRailItemLimit(): Int =
        if (DeviceUi.useDpadFocus(this)) HOME_RAIL_LIMIT_TV else HOME_RAIL_LIMIT_COMPACT

    private fun populateHeroItems() {
        val heroLimit = heroItemLimit()
        val seen = mutableSetOf<Pair<String, Int>>()
        val pool = mutableListOf<HomeRailAdapter.HomeRailItem>()

        fun addItem(item: HomeRailAdapter.HomeRailItem) {
            val key = item.kind to item.id
            if (seen.add(key)) pool.add(item)
        }

        recentMovies.forEach(::addItem)
        recentSeries.forEach(::addItem)
        favoriteItems.filter {
            it.kind == HomeRailAdapter.HomeRailItem.KIND_MOVIE ||
                it.kind == HomeRailAdapter.HomeRailItem.KIND_SERIES
        }.forEach(::addItem)

        if (pool.size < 2 || DeviceUi.useDpadFocus(this)) {
            PlaylistRepository.allCachedVod()
                .sortedByDescending { it.added }
                .take(16)
                .forEach { movie ->
                    addItem(
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
            PlaylistRepository.allCachedSeries()
                .sortedByDescending { it.added }
                .take(16)
                .forEach { series ->
                    addItem(
                        HomeRailAdapter.HomeRailItem(
                            id = series.seriesId,
                            title = series.name,
                            imageUrl = series.cover,
                            badge = getString(R.string.hero_type_series),
                            kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                        ),
                    )
                }
        }

        val movies = pool.filter { it.kind == HomeRailAdapter.HomeRailItem.KIND_MOVIE }.shuffled()
        val series = pool.filter { it.kind == HomeRailAdapter.HomeRailItem.KIND_SERIES }.shuffled()
        var movieIdx = 0
        var seriesIdx = 0
        val maxItems = (heroLimit * 2).coerceAtMost(pool.size)
        while (heroItems.size < maxItems && (movieIdx < movies.size || seriesIdx < series.size)) {
            if (movieIdx < movies.size) {
                heroItems.add(HeroItem.Rail(movies[movieIdx++]))
            }
            if (seriesIdx < series.size && heroItems.size < maxItems) {
                heroItems.add(HeroItem.Rail(series[seriesIdx++]))
            }
        }
        if (heroItems.size < 2 && pool.isNotEmpty()) {
            pool.shuffled().forEach { item ->
                if (heroItems.size >= 2) return@forEach
                if (heroItems.none { (it as? HeroItem.Rail)?.item?.id == item.id &&
                        (it as? HeroItem.Rail)?.item?.kind == item.kind }) {
                    heroItems.add(HeroItem.Rail(item))
                }
            }
        }
    }

    private fun advanceHeroCarousel() {
        if (heroItems.size <= 1) return
        var next = heroIndex
        repeat(8) {
            next = Random.nextInt(heroItems.size)
            if (next != heroIndex || heroItems.size == 1) return@repeat
        }
        heroIndex = next
        bindHero(heroItems[heroIndex])
    }

    private fun heroItemLimit(): Int =
        if (DeviceUi.useDpadFocus(this)) HERO_LIMIT_TV else HERO_LIMIT_COMPACT

    private fun applyHomeDataInternal(movies: List<VodMovie>, series: List<SeriesItem>) {
        val railLimit = homeRailItemLimit()
        recentMovies.clear()
        movies.take(railLimit).forEach { movie ->
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
        series.take(railLimit).forEach { item ->
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
        if (!DeviceUi.useDpadFocus(this)) {
            while (favoriteItems.size > railLimit) favoriteItems.removeAt(favoriteItems.lastIndex)
        }

        heroItems.clear()
        populateHeroItems()
        heroIndex = 0
        heroRotateFirstTick = true
        heroCarouselPaused = false
        railPreviewItem = null

        panelHome.post {
            if (isDestroyed || currentTab != Tab.HOME) return@post
            wireHomeRails()
            resumeRailTitle.visibility = View.GONE
            resumeRail.visibility = View.GONE

            favoritesRailTitle.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE
            favoritesRail.visibility =
                if (favoriteItems.isEmpty()) View.GONE else View.VISIBLE

            moviesRailTitle.visibility = if (recentMovies.isEmpty()) View.GONE else View.VISIBLE
            moviesRail.visibility = if (recentMovies.isEmpty()) View.GONE else View.VISIBLE
            seriesRailTitle.visibility = if (recentSeries.isEmpty()) View.GONE else View.VISIBLE
            seriesRail.visibility = if (recentSeries.isEmpty()) View.GONE else View.VISIBLE

            if (heroItems.isEmpty()) {
                homeEmpty.visibility = View.VISIBLE
            } else {
                homeEmpty.visibility = View.GONE
                bindHero(heroItems[heroIndex])
                startHeroRotation()
                prefetchHeroPlots()
                if (DeviceUi.useDpadFocus(this)) {
                    focusHeroOnStart()
                }
            }
        }
    }

    private fun reloadPlaylist() {
        val profile = PlaylistRepository.profile ?: return
        ParentalSession.clear()
        android.widget.Toast.makeText(
            this,
            getString(R.string.loading_playlist),
            android.widget.Toast.LENGTH_SHORT,
        ).show()
        homeLoaded = false
        moviesCatalogReady = false
        seriesCatalogReady = false
        moviesGroupLoaded = false
        seriesGroupLoaded = false
        if (currentTab == Tab.HOME) {
            homeLoading.text = getString(R.string.loading_playlist)
            homeLoading.visibility = View.VISIBLE
        }
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching { BootstrapLoader.load(this@MainActivity, api, profile) }
            }
            result.onSuccess {
                SearchRepository.invalidate()
                parentalStore.ensureAdultDefaultsBlocked()
                when (currentTab) {
                    Tab.LIVE -> {
                        ensureLiveTabReady()
                        refreshLiveCategoryList()
                        reloadChannels(keepCategoryFocus = true)
                    }
                    else -> if (liveTabReady) {
                        refreshLiveCategoryList()
                        reloadChannels(keepCategoryFocus = true)
                    }
                }
                loadHome()
                when (currentTab) {
                    Tab.MOVIES, Tab.SERIES -> {
                        setupCatalogTab(currentTab)
                        if (DeviceUi.useDpadFocus(this@MainActivity)) {
                            catalogBrowseLevel = TvBrowseNav.Level.TAB
                            panelCatalog.post { applyCatalogBrowseLevel(currentTab) }
                        } else {
                            openCatalogTabAtFirstGroup(currentTab)
                        }
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

    private fun refreshCatalogResumeCategory(tab: Tab) {
        if (tab != Tab.MOVIES && tab != Tab.SERIES) return
        val previous = selectedCatalogCategoryId
        val cats = catalogCategoriesFor(tab)
        val catsChanged = cats.size != catalogCategories.size ||
            cats.zip(catalogCategories).any { (a, b) -> a.id != b.id }
        if (catsChanged) {
            catalogCategories.clear()
            catalogCategories.addAll(cats)
            if (previous != null && cats.none { it.id == previous }) {
                selectedCatalogCategoryId = cats.firstOrNull()?.id
                when (tab) {
                    Tab.MOVIES -> movieCategoryId = selectedCatalogCategoryId
                    Tab.SERIES -> seriesCategoryId = selectedCatalogCategoryId
                    else -> Unit
                }
            }
            bindCatalogCategoryAdapter(tab)
        }
        if (selectedCatalogCategoryId == ResumeStore.RESUME_CATEGORY_ID) {
            when (tab) {
                Tab.MOVIES -> bindResumeMovies()
                Tab.SERIES -> bindResumeSeries()
                else -> Unit
            }
        }
    }

    private fun buildFavoriteItems() {
        favoriteItems.clear()
        val liveIds = favoritesStore.load(FavoritesStore.KIND_LIVE)
        if (liveIds.isNotEmpty()) {
            val channelById = PlaylistRepository.allChannels.associateBy { it.streamId }
            liveIds.forEach { id ->
                channelById[id]?.let { channel ->
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
            }
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
        titleView: View? = null,
        onMoveUp: (() -> Unit)? = null,
        onMoveDown: (() -> Unit)? = null,
    ) {
        list.clipChildren = false
        list.clipToPadding = false
        list.isNestedScrollingEnabled = false
        list.adapter = HomeRailAdapter(
            items = items,
            onClick = { item -> onHomeRailClick(item) },
            onFocus = if (DeviceUi.useDpadFocus(this)) {
                { item ->
                    titleView?.let { scrollHomeSectionIntoView(it) }
                    previewHomeRailItem(item)
                }
            } else {
                null
            },
            onBlur = if (DeviceUi.useDpadFocus(this)) {
                {
                    railPreviewItem = null
                    heroCarouselPaused = false
                    list.post {
                        if (!isAnyHomeRailFocused()) {
                            heroItems.getOrNull(heroIndex)?.let { bindHero(it) }
                            startHeroRotation()
                        }
                    }
                }
            } else {
                null
            },
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
        heroCarouselPaused = true
        bindHero(HeroItem.Rail(item))
    }

    private fun isRailBrowsingFocused(): Boolean {
        if (!::favoritesRail.isInitialized) return false
        if (heroPlay.hasFocus()) return false
        val focused = currentFocus ?: return false
        return listOf(favoritesRail, moviesRail, seriesRail).any { rail ->
            rail.visibility == View.VISIBLE && isDescendantOf(focused, rail)
        }
    }

    private fun isDescendantOf(view: View, ancestor: View): Boolean {
        var node: View? = view
        while (node != null) {
            if (node === ancestor) return true
            val parent = node.parent
            node = if (parent is View) parent else null
        }
        return false
    }

    private fun isAnyHomeRailFocused(): Boolean = isRailBrowsingFocused()

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
        categoryId: String = "",
    ) {
        val open = {
            openMovieEntryInternal(streamId, title, cover, extension)
        }
        withMovieAccess(title, categoryId, open)
    }

    private fun openMovieEntryInternal(
        streamId: Int,
        title: String,
        cover: String,
        extension: String = "mp4",
        directSource: String = "",
    ) {
        val record = resumeStore.get(ResumeStore.KIND_MOVIE, streamId.toString())
        if (record != null) {
            val profile = PlaylistRepository.profile ?: return
            lifecycleScope.launch {
                val resolved = withContext(Dispatchers.Default) {
                    VodPlaybackHelper.resolveMovie(
                        api, profile, streamId, extension, directSource,
                    )
                }
                val url = resolved.urls.firstOrNull().orEmpty()
                if (url.isBlank()) {
                    openMovieDetail(streamId, title, cover, extension)
                    return@launch
                }
                VodPlaybackHelper.prefetchMeta(lifecycleScope, api, profile, streamId)
                ResumePlaybackHelper.play(
                    context = this@MainActivity,
                    resumeStore = resumeStore,
                    request = PlaybackRequest(
                        title = title,
                        url = url,
                        kind = ResumeStore.KIND_MOVIE,
                        contentId = streamId.toString(),
                        imageUrl = cover,
                        extension = resolved.extension,
                        positionMs = record.positionMs,
                        alternateUrls = resolved.urls.drop(1),
                    ),
                )
            }
            return
        }
        openMovieDetail(streamId, title, cover, extension)
    }

    private fun openMovieDetail(
        streamId: Int,
        title: String,
        cover: String,
        extension: String = "mp4",
        added: Long = 0L,
    ) {
        prefetchMovieDetail(streamId, title, cover)
        startActivity(
            MovieDetailActivity.intent(
                context = this,
                streamId = streamId,
                name = title,
                cover = cover,
                extension = extension,
                added = added,
            ),
        )
    }

    private fun prefetchMovieDetail(streamId: Int, title: String, cover: String) {
        if (MovieDetailCache.get(streamId) != null) return
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                api.vodInfo(profile, streamId)?.let { info ->
                    MovieDetailCache.put(streamId, info)
                    PlotCache.put(
                        "movie",
                        streamId,
                        PlotCache.Entry(
                            plot = info.plot,
                            backdrop = info.backdrop.ifBlank { info.cover },
                            poster = info.cover.ifBlank { cover },
                            title = info.name.ifBlank { title },
                        ),
                    )
                }
            } catch (_: Exception) {
            }
        }
    }

    private fun openSeriesDetail(
        seriesId: Int,
        title: String,
        cover: String,
        categoryId: String = "",
        added: Long = 0L,
    ) {
        val open = {
            prefetchSeriesDetail(seriesId, title, cover)
            startActivity(
                SeriesDetailActivity.intent(
                    context = this,
                    series = SeriesItem(
                        seriesId = seriesId,
                        name = title,
                        cover = cover,
                        categoryId = categoryId,
                        added = added,
                    ),
                ),
            )
        }
        withSeriesAccess(title, categoryId, open)
    }

    private fun prefetchSeriesDetail(seriesId: Int, title: String, cover: String) {
        if (SeriesDetailCache.get(seriesId) != null) return
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                api.seriesInfo(profile, seriesId)?.let { detail ->
                    SeriesDetailCache.put(seriesId, detail)
                    PlotCache.put(
                        "series",
                        seriesId,
                        PlotCache.Entry(
                            plot = detail.plot,
                            backdrop = detail.backdrop.ifBlank { detail.cover },
                            poster = detail.cover.ifBlank { cover },
                            title = detail.name.ifBlank { title },
                        ),
                    )
                }
            } catch (_: Exception) {
            }
        }
    }

    private fun playMovie(
        title: String,
        streamId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
        categoryId: String = "",
        directSource: String = "",
    ) {
        withMovieAccess(title, categoryId) {
            playMovieInternal(title, streamId, extension, imageUrl, positionMs, directSource)
        }
    }

    private fun playMovieInternal(
        title: String,
        streamId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
        directSource: String = "",
    ) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val resolved = withContext(Dispatchers.Default) {
                VodPlaybackHelper.resolveMovie(
                    api, profile, streamId, extension, directSource,
                )
            }
            val url = resolved.urls.firstOrNull().orEmpty()
            if (url.isBlank()) {
                Toast.makeText(this@MainActivity, R.string.series_playback_failed, Toast.LENGTH_SHORT).show()
                openMovieDetail(streamId, title, imageUrl, resolved.extension)
                return@launch
            }
            VodPlaybackHelper.prefetchMeta(lifecycleScope, api, profile, streamId)
            ResumePlaybackHelper.play(
                context = this@MainActivity,
                resumeStore = resumeStore,
                request = PlaybackRequest(
                    title = title,
                    url = url,
                    kind = ResumeStore.KIND_MOVIE,
                    contentId = streamId.toString(),
                    imageUrl = imageUrl,
                    extension = resolved.extension,
                    positionMs = positionMs,
                    alternateUrls = resolved.urls.drop(1),
                ),
            )
        }
    }

    private fun playSeriesEpisode(
        title: String,
        episodeId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
    ) {
        withSeriesAccess(title) {
            playSeriesEpisodeInternal(title, episodeId, extension, imageUrl, positionMs)
        }
    }

    private fun playSeriesEpisodeInternal(
        title: String,
        episodeId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
        directSource: String = "",
    ) {
        val profile = PlaylistRepository.profile ?: return
        val resolved = VodPlaybackHelper.resolveSeriesEpisode(
            api, profile, episodeId, extension, directSource,
        )
        val url = resolved.urls.firstOrNull().orEmpty()
        if (url.isBlank()) {
            Toast.makeText(this, R.string.series_playback_failed, Toast.LENGTH_SHORT).show()
            return
        }
        ResumePlaybackHelper.play(
            context = this,
            resumeStore = resumeStore,
            request = PlaybackRequest(
                title = title,
                url = url,
                kind = ResumeStore.KIND_SERIES,
                contentId = episodeId.toString(),
                imageUrl = imageUrl,
                extension = resolved.extension,
                positionMs = positionMs,
                alternateUrls = resolved.urls.drop(1),
            ),
        )
    }

    private fun playSeriesFirstEpisode(
        seriesId: Int,
        title: String,
        imageUrl: String,
        categoryId: String = "",
    ) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            val cachedDetail = SeriesDetailCache.get(seriesId)
            val detail = cachedDetail ?: try {
                withContext(Dispatchers.IO) {
                    withTimeout(8_000L) { api.seriesInfo(profile, seriesId) }
                }
            } catch (_: Exception) {
                null
            }
            if (detail != null && cachedDetail == null) {
                SeriesDetailCache.put(seriesId, detail)
            }
            if (detail == null || detail.seasons.isEmpty()) {
                Toast.makeText(
                    this@MainActivity,
                    R.string.series_playback_failed,
                    Toast.LENGTH_SHORT,
                ).show()
                openSeriesDetail(seriesId, title, imageUrl, categoryId)
                return@launch
            }
            val firstEpisode = detail.seasons.entries
                .sortedBy { (season, _) -> season.toIntOrNull() ?: Int.MAX_VALUE }
                .firstNotNullOfOrNull { (_, episodes) ->
                    episodes.minByOrNull { ep ->
                        ep.episodeNum.takeIf { it > 0 } ?: Int.MAX_VALUE
                    }
                }
            if (firstEpisode == null) {
                Toast.makeText(
                    this@MainActivity,
                    R.string.series_playback_failed,
                    Toast.LENGTH_SHORT,
                ).show()
                openSeriesDetail(seriesId, title, imageUrl, categoryId)
                return@launch
            }
            val episodeTitle = "$title — ${firstEpisode.season}x${firstEpisode.episodeNum}"
            playSeriesEpisodeInternal(
                title = episodeTitle,
                episodeId = firstEpisode.id,
                extension = firstEpisode.extension,
                imageUrl = firstEpisode.image.ifBlank { imageUrl },
                directSource = firstEpisode.directSource,
            )
        }
    }

    private fun bindHero(item: HeroItem) {
        val backdropRequestId = ++heroBackdropRequestId

        heroTitle.text = item.title
        heroSubtitle.text = ""
        heroPlot.text = ""

        when (item) {
            is HeroItem.Movie -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_movie),
                    playLabel = getString(R.string.hero_view_detail),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                    contentId = item.movie.streamId,
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                    backdropRequestId = backdropRequestId,
                )
                if (!applyCachedHeroPlot(
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                    id = item.movie.streamId,
                    backdropRequestId = backdropRequestId,
                )) {
                    heroPlot.text = getString(R.string.hero_plot_loading)
                    loadMoviePlot(item.movie.streamId, backdropRequestId)
                }
            }
            is HeroItem.Series -> {
                applyHeroMeta(
                    badge = getString(R.string.hero_type_series),
                    playLabel = getString(R.string.hero_view_detail),
                    backdrop = item.imageUrl,
                    poster = item.posterUrl,
                    contentId = item.series.seriesId,
                    kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                    backdropRequestId = backdropRequestId,
                )
                if (!applyCachedHeroPlot(
                    kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                    id = item.series.seriesId,
                    backdropRequestId = backdropRequestId,
                )) {
                    heroPlot.text = getString(R.string.hero_plot_loading)
                    loadSeriesPlot(item.series.seriesId, backdropRequestId)
                }
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
                    contentId = item.item.id,
                    kind = item.item.kind,
                    backdropRequestId = backdropRequestId,
                )
                heroSubtitle.text = item.item.subtitle
                when (item.item.kind) {
                    HomeRailAdapter.HomeRailItem.KIND_MOVIE ->
                        if (!applyCachedHeroPlot(
                            kind = item.item.kind,
                            id = item.item.id,
                            backdropRequestId = backdropRequestId,
                        )) {
                            heroPlot.text = getString(R.string.hero_plot_loading)
                            loadMoviePlot(item.item.id, backdropRequestId)
                        }
                    HomeRailAdapter.HomeRailItem.KIND_SERIES ->
                        if (!applyCachedHeroPlot(
                            kind = item.item.kind,
                            id = item.item.id,
                            backdropRequestId = backdropRequestId,
                        )) {
                            heroPlot.text = getString(R.string.hero_plot_loading)
                            loadSeriesPlot(item.item.id, backdropRequestId)
                        }
                    HomeRailAdapter.HomeRailItem.KIND_LIVE ->
                        heroPlot.text = getString(R.string.hero_plot_empty)
                }
            }
        }
    }

    private fun heroPlotCacheKey(kind: String, id: Int): String = "$kind:$id"

    private fun heroItemContentKey(item: HeroItem): Pair<String, Int>? = when (item) {
        is HeroItem.Movie -> HomeRailAdapter.HomeRailItem.KIND_MOVIE to item.movie.streamId
        is HeroItem.Series -> HomeRailAdapter.HomeRailItem.KIND_SERIES to item.series.seriesId
        is HeroItem.Rail -> when (item.item.kind) {
            HomeRailAdapter.HomeRailItem.KIND_MOVIE,
            HomeRailAdapter.HomeRailItem.KIND_SERIES,
            -> item.item.kind to item.item.id
            else -> null
        }
    }

    private fun isHeroShowing(kind: String, id: Int): Boolean {
        if (currentTab != Tab.HOME) return false
        railPreviewItem?.let { preview ->
            return preview.kind == kind && preview.id == id
        }
        val key = heroItemContentKey(heroItems.getOrNull(heroIndex) ?: return false) ?: return false
        return key.first == kind && key.second == id
    }

    private fun cachedHeroPlot(kind: String, id: Int): CachedHeroPlot? {
        heroPlotCache[heroPlotCacheKey(kind, id)]?.let { return it }
        PlotCache.get(kind, id)?.let { entry ->
            val cached = CachedHeroPlot(
                plot = entry.plot,
                subtitle = entry.subtitle,
                backdrop = entry.backdrop,
                poster = entry.poster,
                title = entry.title,
            )
            heroPlotCache[heroPlotCacheKey(kind, id)] = cached
            return cached
        }
        return null
    }

    private fun prefetchHeroPlots() {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            heroItems.forEach { item ->
                val key = heroItemContentKey(item) ?: return@forEach
                val (kind, id) = key
                if (cachedHeroPlot(kind, id) != null) return@forEach
                try {
                    when (kind) {
                        HomeRailAdapter.HomeRailItem.KIND_MOVIE -> {
                            val info = withContext(Dispatchers.IO) { api.vodInfo(profile, id) } ?: return@forEach
                            val backdrop = info.backdrop.ifBlank { info.cover }
                            heroPlotCache[heroPlotCacheKey(kind, id)] = CachedHeroPlot(
                                plot = info.plot.ifBlank { getString(R.string.hero_plot_empty) },
                                subtitle = listOf(info.genre, info.releaseDate, info.rating)
                                    .filter { it.isNotBlank() }
                                    .joinToString(" · "),
                                backdrop = backdrop,
                                poster = info.cover,
                                title = info.name,
                            )
                        }
                        HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                            val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, id) } ?: return@forEach
                            val backdrop = detail.backdrop.ifBlank { detail.cover }
                            heroPlotCache[heroPlotCacheKey(kind, id)] = CachedHeroPlot(
                                plot = detail.plot.ifBlank { getString(R.string.hero_plot_empty) },
                                subtitle = listOf(detail.genre, detail.releaseDate, detail.rating)
                                    .filter { it.isNotBlank() }
                                    .joinToString(" · "),
                                backdrop = backdrop,
                                poster = detail.cover,
                                title = detail.name,
                            )
                        }
                    }
                } catch (_: Exception) {
                }
            }
            if (currentTab == Tab.HOME && railPreviewItem == null) {
                heroItems.getOrNull(heroIndex)?.let { bindHero(it) }
            }
        }
    }

    private fun applyCachedHeroPlot(kind: String, id: Int, backdropRequestId: Int): Boolean {
        val cached = cachedHeroPlot(kind, id) ?: return false
        if (!isHeroShowing(kind, id)) return true
        if (cached.title.isNotBlank()) heroTitle.text = cached.title
        heroPlot.text = cached.plot
        heroSubtitle.text = cached.subtitle
        applyHeroBackdrop(
            backdrop = cached.backdrop,
            poster = cached.poster,
            backdropRequestId = backdropRequestId,
            contentId = id,
            kind = kind,
        )
        return true
    }

    private fun applyHeroMeta(
        badge: String,
        playLabel: String,
        backdrop: String,
        poster: String,
        contentId: Int = 0,
        kind: String = "",
        backdropRequestId: Int = heroBackdropRequestId,
    ) {
        heroType.text = badge.uppercase()
        heroPlay.text = playLabel
        if (DeviceUi.isTvUi(this)) styleHeroPlayButton()
        val heroBackdrop = backdrop.ifBlank { poster }
        loadHeroImage(heroImage, heroBackdrop, contentId, kind)
        if (poster.isNotBlank()) {
            heroPoster.visibility = View.VISIBLE
            loadHeroImage(heroPoster, poster, contentId, kind)
        } else {
            heroPoster.visibility = View.GONE
        }
    }

    private fun loadHeroImage(
        target: ImageView,
        url: String,
        contentId: Int = 0,
        kind: String = "",
    ) {
        val fallbacks = heroImageFallbacks(url, contentId, kind)
        if (fallbacks.isEmpty()) return
        if (!DeviceUi.useDpadFocus(this)) {
            val dm = resources.displayMetrics
            val width = dm.widthPixels.coerceAtMost(720)
            val height = heroImage.layoutParams.height.takeIf { it > 0 }
                ?: (220f * dm.density).toInt()
            ImageLoader.loadHeroBackdrop(target, fallbacks.first(), fallbacks.drop(1), width, height)
        } else {
            ImageLoader.loadHeroBackdrop(target, fallbacks.first(), fallbacks.drop(1))
        }
    }

    private fun heroImageFallbacks(primary: String, contentId: Int, kind: String): List<String> {
        val profile = PlaylistRepository.profile ?: return listOf(ImageUrlResolver.resolve(primary)).filter { it.isNotBlank() }
        val base = HostUtils.baseUrl(
            com.gadir.tv.net.PanelHttp.migrateProfileHost(profile.host),
        ).trimEnd('/')
        return buildList {
            val resolved = ImageUrlResolver.resolve(primary)
            if (resolved.isNotBlank()) add(resolved)
            if (contentId <= 0) return@buildList
            when (kind) {
                HomeRailAdapter.HomeRailItem.KIND_MOVIE, HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                    add(com.gadir.tv.util.NetworkUrlResolver.resolveUrl("$base/images/$contentId.jpg"))
                    add(com.gadir.tv.util.NetworkUrlResolver.resolveUrl("$base/images/$contentId.png"))
                }
            }
        }.distinct().filter { it.isNotBlank() }
    }

    private fun applyHeroBackdrop(backdrop: String, poster: String, backdropRequestId: Int, contentId: Int, kind: String) {
        if (backdropRequestId != heroBackdropRequestId) return
        val image = backdrop.ifBlank { poster }
        if (image.isNotBlank()) {
            loadHeroImage(heroImage, image, contentId, kind)
        }
        if (poster.isNotBlank()) {
            loadHeroImage(heroPoster, poster, contentId, kind)
        }
    }

    private fun loadMoviePlot(streamId: Int, backdropRequestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        val kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE
        // A background prefetch (ContentPreloader) may already be fetching/have fetched
        // this exact item concurrently. Skip the redundant network call if cached.
        if (applyCachedHeroPlot(kind, streamId, backdropRequestId)) return
        lifecycleScope.launch {
            try {
                val info = withContext(Dispatchers.IO) { api.vodInfo(profile, streamId) }
                if (isDestroyed) return@launch
                if (info == null) {
                    // The concurrent background prefetch may have succeeded while our own
                    // call failed/timed out due to connection contention — check before
                    // overwriting with an empty state.
                    if (applyCachedHeroPlot(kind, streamId, backdropRequestId)) return@launch
                    if (isHeroShowing(kind, streamId)) {
                        heroPlot.text = getString(R.string.hero_plot_empty)
                    }
                    return@launch
                }
                val backdrop = info.backdrop.ifBlank { info.cover }
                heroPlotCache[heroPlotCacheKey(kind, streamId)] = CachedHeroPlot(
                    plot = info.plot.ifBlank { getString(R.string.hero_plot_empty) },
                    subtitle = listOf(info.genre, info.releaseDate, info.rating)
                        .filter { it.isNotBlank() }
                        .joinToString(" · "),
                    backdrop = backdrop,
                    poster = info.cover,
                    title = info.name,
                )
                if (!isHeroShowing(kind, streamId)) return@launch
                if (info.name.isNotBlank()) heroTitle.text = info.name
                heroPlot.text = info.plot.ifBlank { getString(R.string.hero_plot_empty) }
                heroSubtitle.text = listOf(info.genre, info.releaseDate, info.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · ")
                applyHeroBackdrop(
                    backdrop = backdrop,
                    poster = info.cover,
                    backdropRequestId = backdropRequestId,
                    contentId = streamId,
                    kind = kind,
                )
            } catch (_: Exception) {
                if (isHeroShowing(kind, streamId)) {
                    heroPlot.text = getString(R.string.hero_plot_empty)
                }
            }
        }
    }

    private fun loadSeriesPlot(seriesId: Int, backdropRequestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        val kind = HomeRailAdapter.HomeRailItem.KIND_SERIES
        if (applyCachedHeroPlot(kind, seriesId, backdropRequestId)) return
        lifecycleScope.launch {
            try {
                val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, seriesId) }
                if (isDestroyed) return@launch
                if (detail == null) {
                    if (applyCachedHeroPlot(kind, seriesId, backdropRequestId)) return@launch
                    if (isHeroShowing(kind, seriesId)) {
                        heroPlot.text = getString(R.string.hero_plot_empty)
                    }
                    return@launch
                }
                val backdrop = detail.backdrop.ifBlank { detail.cover }
                heroPlotCache[heroPlotCacheKey(kind, seriesId)] = CachedHeroPlot(
                    plot = detail.plot.ifBlank { getString(R.string.hero_plot_empty) },
                    subtitle = listOf(detail.genre, detail.releaseDate, detail.rating)
                        .filter { it.isNotBlank() }
                        .joinToString(" · "),
                    backdrop = backdrop,
                    poster = detail.cover,
                    title = detail.name,
                )
                if (!isHeroShowing(kind, seriesId)) return@launch
                if (detail.name.isNotBlank()) heroTitle.text = detail.name
                heroPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }
                heroSubtitle.text = listOf(detail.genre, detail.releaseDate, detail.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · ")
                applyHeroBackdrop(
                    backdrop = backdrop,
                    poster = detail.cover,
                    backdropRequestId = backdropRequestId,
                    contentId = seriesId,
                    kind = kind,
                )
            } catch (_: Exception) {
                if (isHeroShowing(kind, seriesId)) {
                    heroPlot.text = getString(R.string.hero_plot_empty)
                }
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
                categoryId = hero.movie.categoryId,
            )
            is HeroItem.Series -> openSeriesDetail(
                seriesId = hero.series.seriesId,
                title = hero.series.name,
                cover = hero.series.cover,
                categoryId = hero.series.categoryId,
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
        if (!DeviceUi.useDpadFocus(this)) return
        if (heroItems.size > 1 && currentTab == Tab.HOME) {
            val delay = if (heroRotateFirstTick) HERO_ROTATE_FIRST_MS else HERO_ROTATE_MS
            heroHandler.postDelayed(heroRotateRunnable, delay)
        }
    }

    private fun stopHeroRotation() {
        heroHandler.removeCallbacks(heroRotateRunnable)
    }

    private fun setupCatalogTab(tab: Tab) {
        val cats = catalogCategoriesFor(tab)

        catalogCategories.clear()
        catalogCategories.addAll(cats)
        val savedId = when (tab) {
            Tab.MOVIES -> movieCategoryId
            Tab.SERIES -> seriesCategoryId
            else -> null
        }
        selectedCatalogCategoryId = if (DeviceUi.useDpadFocus(this)) {
            null
        } else {
            savedId?.takeIf { id -> cats.any { it.id == id } } ?: cats.firstOrNull()?.id
        }
        posterItems.clear()
        catalogPosterTab = tab
        catalogGrid.adapter = PosterAdapter(
            items = posterItems,
            onClick = { item -> onPosterClick(tab, item) },
            onFocus = null,
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
            onMoveLeft = if (DeviceUi.useDpadFocus(this)) {
                { exitCatalogContentToGroup() }
            } else {
                null
            },
            onMoveUp = if (DeviceUi.useDpadFocus(this)) {
                { exitCatalogContentToGroup() }
            } else {
                null
            },
        )

        if (catalogCategories.isEmpty()) {
            catalogLoading.visibility = View.GONE
            catalogEmpty.visibility = View.VISIBLE
            catalogEmpty.text = getString(R.string.catalog_empty)
            catalogCategoryList.adapter = CategoryAdapter(emptyList(), selectedId = { null }, onClick = {})
            return
        }

        bindCatalogCategoryAdapter(tab)
        syncCatalogCategoryCounts(tab)
        warmCatalogCategoryCounts(tab)
        when (tab) {
            Tab.MOVIES -> movieCategoryId = selectedCatalogCategoryId
            Tab.SERIES -> seriesCategoryId = selectedCatalogCategoryId
            else -> Unit
        }
        if (DeviceUi.useDpadFocus(this)) {
            // Content loads when entering the tab via openCatalogTabAtFirstGroup.
        } else {
            selectedCatalogCategoryId?.let { loadCatalogItems(tab, it) }
        }
    }

    private fun restoreCatalogTab(tab: Tab) {
        val cats = catalogCategoriesFor(tab)
        catalogCategories.clear()
        catalogCategories.addAll(cats)
        selectedCatalogCategoryId = when (tab) {
            Tab.MOVIES -> movieCategoryId
            Tab.SERIES -> seriesCategoryId
            else -> null
        }?.takeIf { id -> cats.any { it.id == id } }
        bindCatalogCategoryAdapter(tab)
        if (DeviceUi.useDpadFocus(this)) {
            val selectedId = selectedCatalogCategoryId
            if (selectedId != null) {
                val idx = catalogCategories.indexOfFirst { it.id == selectedId }
                if (idx >= 0) catalogCategoryFocusIndex = idx
                catalogBrowseLevel = TvBrowseNav.Level.GROUP
                when (tab) {
                    Tab.MOVIES -> moviesGroupLoaded = false
                    Tab.SERIES -> seriesGroupLoaded = false
                    else -> Unit
                }
                catalogEnterContentOnLoad = false
                selectedCatalogCategoryId = null
                posterItems.clear()
                catalogGrid.adapter?.notifyDataSetChanged()
                applyCatalogPanelFocusMode(tab, inContent = false)
                catalogCategories.getOrNull(catalogCategoryFocusIndex)?.let { cat ->
                    previewCatalogGroup(tab, cat)
                }
                catalogCategoryList.post {
                    if (currentTab != tab || catalogBrowseLevel != TvBrowseNav.Level.GROUP) return@post
                    TvBrowseNav.focusGroup(catalogCategoryList, catalogCategoryFocusIndex)
                }
            } else {
                openCatalogTabAtFirstGroup(tab)
            }
        } else {
            selectedCatalogCategoryId = selectedCatalogCategoryId ?: cats.firstOrNull()?.id
            selectedCatalogCategoryId?.let { loadCatalogItems(tab, it) }
        }
    }

    private fun showCachedCatalogItems(tab: Tab, categoryId: String) {
        when (tab) {
            Tab.MOVIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> bindResumeMovies()
                else -> {
                    val cached = PlaylistRepository.cachedVod(categoryId)
                    if (cached != null) bindMovies(cached) else loadCatalogItems(tab, categoryId)
                }
            }
            Tab.SERIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> bindResumeSeries()
                else -> {
                    val cached = PlaylistRepository.cachedSeries(categoryId)
                    if (cached != null) bindSeries(cached) else loadCatalogItems(tab, categoryId)
                }
            }
            else -> Unit
        }
    }

    private fun bindCatalogCategoryAdapter(tab: Tab) {
        catalogCategoryAdapter = CategoryAdapter(
            items = catalogCategories,
            selectedId = { catalogAdapterSelectedId(tab) },
            itemCount = { cat -> catalogCategoryCount(tab, cat) },
            onClick = { cat ->
                selectCatalogGroup(tab, cat, enterContent = true)
            },
            onFocus = { cat ->
                if (catalogBrowseLevel == TvBrowseNav.Level.CONTENT) return@CategoryAdapter
                val idx = catalogCategories.indexOfFirst { it.id == cat.id }
                if (idx >= 0) catalogCategoryFocusIndex = idx
                if (catalogBrowsingCategoryId == cat.id) {
                    refreshCatalogCategoryHighlight(null, cat.id)
                    val needsReload = when (tab) {
                        Tab.MOVIES -> PlaylistRepository.cachedVod(cat.id).isNullOrEmpty() &&
                            inFlightCatalogCategory != cat.id
                        Tab.SERIES -> PlaylistRepository.cachedSeries(cat.id).isNullOrEmpty() &&
                            inFlightCatalogCategory != cat.id
                        else -> false
                    }
                    if (needsReload) warmCatalogCategoryContent(tab, cat.id)
                    return@CategoryAdapter
                }
                previewCatalogGroup(tab, cat)
            },
            onMoveRight = {
                val cat = catalogCategories.getOrNull(catalogCategoryFocusIndex) ?: return@CategoryAdapter
                withCatalogCategoryAccess(tab, cat) {
                    enterCatalogContent(tab, cat)
                }
            },
            onMoveLeft = null,
            onMoveUp = null,
            upFocusViewId = View.NO_ID,
            leftFocusViewId = View.NO_ID,
            navigationLocked = { catalogBrowseLevel != TvBrowseNav.Level.GROUP },
        )
        catalogCategoryList.adapter = catalogCategoryAdapter
        catalogCategoryList.nextFocusUpId = View.NO_ID
    }

    private fun configureCatalogGrid() {
        val span = if (DeviceUi.useDpadFocus(this)) 5 else 3
        catalogGrid.layoutManager = GridLayoutManager(this, span)
    }

    private fun catalogGridSpanCount(): Int =
        (catalogGrid.layoutManager as? GridLayoutManager)?.spanCount ?: 5

    private fun loadCatalogItems(tab: Tab, categoryId: String, showLoadingIndicator: Boolean = true) {
        when (tab) {
            Tab.MOVIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> {
                    bindResumeMovies()
                    return
                }
                else -> PlaylistRepository.cachedVod(categoryId)?.takeIf { it.isNotEmpty() }?.let {
                    bindMovies(it)
                    if (!showLoadingIndicator) return
                }
            }
            Tab.SERIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> {
                    bindResumeSeries()
                    return
                }
                else -> PlaylistRepository.cachedSeries(categoryId)?.takeIf { it.isNotEmpty() }?.let {
                    bindSeries(it)
                    if (!showLoadingIndicator) return
                }
            }
            Tab.LIVE, Tab.HOME -> Unit
        }

        val profile = PlaylistRepository.profile ?: return
        if (inFlightCatalogCategory == categoryId) return
        inFlightCatalogCategory = categoryId
        val token = ++catalogLoadToken
        when (tab) {
            Tab.MOVIES -> PlaylistRepository.clearVodLoadFailed(categoryId)
            Tab.SERIES -> PlaylistRepository.clearSeriesLoadFailed(categoryId)
            else -> Unit
        }
        catalogLoading.visibility = if (showLoadingIndicator) View.VISIBLE else View.GONE
        catalogEmpty.visibility = View.GONE
        catalogGrid.visibility = View.VISIBLE
        catalogGrid.alpha = 1f

        lifecycleScope.launch {
            try {
                val items = withContext(Dispatchers.IO) {
                    kotlinx.coroutines.withTimeout(30_000L) {
                        when (tab) {
                            Tab.MOVIES -> {
                                val movies = api.vodStreams(profile, categoryId)
                                if (movies.isEmpty()) throw IllegalStateException("empty vod")
                                PlaylistRepository.cacheVod(categoryId, movies)
                                movies
                            }
                            Tab.SERIES -> {
                                val series = api.seriesList(profile, categoryId)
                                if (series.isEmpty()) throw IllegalStateException("empty series")
                                PlaylistRepository.cacheSeries(categoryId, series)
                                series
                            }
                            Tab.LIVE, Tab.HOME -> emptyList<Any>()
                        }
                    }
                }

                if (token != catalogLoadToken) return@launch
                catalogCategoryCounts[categoryId] = items.size
                catalogCategoryAdapter?.refreshSelection()
                when (tab) {
                    Tab.MOVIES -> bindMovies(items as List<VodMovie>)
                    Tab.SERIES -> bindSeries(items as List<SeriesItem>)
                    Tab.LIVE, Tab.HOME -> Unit
                }
            } catch (_: Exception) {
                if (token != catalogLoadToken) return@launch
                when (tab) {
                    Tab.MOVIES -> PlaylistRepository.markVodLoadFailed(categoryId)
                    Tab.SERIES -> PlaylistRepository.markSeriesLoadFailed(categoryId)
                    else -> Unit
                }
                catalogEnterContentOnLoad = false
                when (tab) {
                    Tab.MOVIES -> moviesGroupLoaded = false
                    Tab.SERIES -> seriesGroupLoaded = false
                    else -> Unit
                }
                posterItems.clear()
                catalogGrid.adapter?.notifyDataSetChanged()
                catalogEmpty.visibility = View.VISIBLE
                catalogEmpty.text = getString(R.string.catalog_load_failed)
            } finally {
                if (inFlightCatalogCategory == categoryId) {
                    inFlightCatalogCategory = null
                }
                if (token == catalogLoadToken) {
                    catalogLoading.visibility = View.GONE
                    catalogGrid.alpha = 1f
                    catalogGrid.visibility = View.VISIBLE
                }
            }
        }
    }

    private fun bindResumeMovies() {
        posterItems.clear()
        val records = resumeStore.loadAll().filter { it.kind == ResumeStore.KIND_MOVIE }
        records.forEach { record ->
                val id = record.id.toIntOrNull() ?: return@forEach
                posterItems.add(
                    PosterAdapter.PosterItem(
                        id = id,
                        title = record.title,
                        imageUrl = record.imageUrl,
                        extension = record.extension,
                        resumePositionMs = record.positionMs,
                    ),
            )
        }
        bindCatalogHero(Tab.MOVIES, getString(R.string.rail_continue), records.firstOrNull()?.imageUrl.orEmpty())
        updateCatalogGrid()
        if (DeviceUi.useDpadFocus(this)) maybeEnterCatalogContent()
    }

    private fun bindResumeSeries() {
        posterItems.clear()
        val records = resumeStore.loadAll().filter { it.kind == ResumeStore.KIND_SERIES }
        records.forEach { record ->
                val id = record.id.toIntOrNull() ?: return@forEach
                posterItems.add(
                    PosterAdapter.PosterItem(
                        id = id,
                        title = record.title,
                        imageUrl = record.imageUrl,
                        extension = record.extension,
                        resumePositionMs = record.positionMs,
                    ),
            )
        }
        bindCatalogHero(Tab.SERIES, getString(R.string.rail_continue), records.firstOrNull()?.imageUrl.orEmpty())
        updateCatalogGrid()
        if (DeviceUi.useDpadFocus(this)) maybeEnterCatalogContent()
    }

    private fun catalogCategoriesFor(tab: Tab): List<Category> {
        val base = when (tab) {
            Tab.MOVIES -> PlaylistRepository.vodCategories
            Tab.SERIES -> PlaylistRepository.seriesCategories
            Tab.LIVE, Tab.HOME -> emptyList()
        }
        val resumeKind = when (tab) {
            Tab.MOVIES -> ResumeStore.KIND_MOVIE
            Tab.SERIES -> ResumeStore.KIND_SERIES
            else -> return base
        }
        val hasResume = resumeStore.loadAll().any { it.kind == resumeKind }
        return if (hasResume) {
            listOf(
                Category(
                    id = ResumeStore.RESUME_CATEGORY_ID,
                    name = getString(R.string.rail_continue),
                ),
            ) + base
        } else {
            base
        }
    }

    private fun bindCatalogHero(tab: Tab, categoryName: String, imageUrl: String) {
        catalogHeroTitle.text = categoryName.ifBlank { getString(R.string.catalog_empty) }
        catalogHeroSubtitle.text = when (tab) {
            Tab.MOVIES -> getString(R.string.tab_movies)
            Tab.SERIES -> getString(R.string.tab_series)
            else -> ""
        }
        if (imageUrl.isNotBlank()) {
            val dm = resources.displayMetrics
            val width = dm.widthPixels.coerceAtMost(960)
            val height = catalogHeroImage.layoutParams.height.takeIf { it > 0 }
                ?: dp(200)
            ImageLoader.loadHeroBackdrop(catalogHeroImage, imageUrl, emptyList(), width, height)
        } else {
            catalogHeroImage.setImageResource(R.drawable.hero_placeholder_bg)
        }
    }

    private fun activeCatalogCategoryId(): String? =
        selectedCatalogCategoryId
            ?: catalogBrowsingCategoryId
            ?: when (currentTab) {
                Tab.MOVIES -> movieCategoryId
                Tab.SERIES -> seriesCategoryId
                else -> null
            }

    private fun selectedCatalogCategoryName(): String =
        catalogCategories.firstOrNull { it.id == activeCatalogCategoryId() }?.name.orEmpty()

    private fun bindMovies(movies: List<VodMovie>) {
        catalogLoading.visibility = View.GONE
        catalogGrid.alpha = 1f
        catalogGrid.visibility = View.VISIBLE
        val cover = movies.firstOrNull { it.icon.isNotBlank() }?.icon.orEmpty()
        bindCatalogHero(Tab.MOVIES, selectedCatalogCategoryName(), cover)
        posterItems.clear()
        movies.forEach { movie ->
            posterItems.add(
                PosterAdapter.PosterItem(
                    id = movie.streamId,
                    title = movie.name,
                    imageUrl = movie.icon,
                    extension = movie.extension,
                    added = movie.added,
                    directSource = movie.directSource,
                ),
            )
        }
        updateCatalogGrid()
        if (DeviceUi.useDpadFocus(this)) maybeEnterCatalogContent()
    }

    private fun bindSeries(series: List<SeriesItem>) {
        catalogLoading.visibility = View.GONE
        catalogGrid.alpha = 1f
        catalogGrid.visibility = View.VISIBLE
        val cover = series.firstOrNull { it.cover.isNotBlank() }?.cover.orEmpty()
        bindCatalogHero(Tab.SERIES, selectedCatalogCategoryName(), cover)
        posterItems.clear()
        series.forEach { item ->
            posterItems.add(
                PosterAdapter.PosterItem(
                    id = item.seriesId,
                    title = item.name,
                    imageUrl = item.cover,
                    added = item.added,
                ),
            )
        }
        updateCatalogGrid()
        if (DeviceUi.useDpadFocus(this)) maybeEnterCatalogContent()
    }

    private fun updateCatalogGrid() {
        val focusInGrid = isFocusInList(catalogGrid)
        val focusedIndex = if (focusInGrid) {
            catalogGrid.focusedChild?.let { catalogGrid.getChildAdapterPosition(it) }?.takeIf { it >= 0 }
        } else {
            null
        }
        catalogGrid.adapter?.notifyDataSetChanged()
        catalogEmpty.visibility = if (posterItems.isEmpty()) View.VISIBLE else View.GONE
        if (focusedIndex != null) {
            catalogGrid.post { TvNavHelper.focusItem(catalogGrid, focusedIndex) }
        }
    }

    private fun onPosterClick(tab: Tab, item: PosterAdapter.PosterItem) {
        val activeTab = catalogActionTab(tab)
        val categoryId = activeCatalogCategoryId().orEmpty()
        when (activeTab) {
            Tab.MOVIES -> {
                if (item.resumePositionMs > 0L) {
                    playMovie(
                        title = item.title,
                        streamId = item.id,
                        extension = item.extension,
                        imageUrl = item.imageUrl,
                        positionMs = item.resumePositionMs,
                        categoryId = categoryId,
                        directSource = item.directSource,
                    )
                } else if (DeviceUi.useDpadFocus(this)) {
                    openMovieDetail(
                        streamId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
                        extension = item.extension,
                        added = item.added,
                    )
                } else {
                    openMovieEntry(
                        streamId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
                        extension = item.extension,
                        categoryId = categoryId,
                    )
                }
            }
            Tab.SERIES -> {
                if (item.resumePositionMs > 0L) {
                    playSeriesEpisode(
                        title = item.title,
                        episodeId = item.id,
                        extension = item.extension,
                        imageUrl = item.imageUrl,
                        positionMs = item.resumePositionMs,
                    )
                } else if (DeviceUi.useDpadFocus(this)) {
                    openSeriesDetail(
                        seriesId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
                        categoryId = categoryId,
                        added = item.added,
                    )
                } else {
                    openSeriesDetail(
                        seriesId = item.id,
                        title = item.title,
                        cover = item.imageUrl,
                        categoryId = categoryId,
                    )
                }
            }
            Tab.LIVE, Tab.HOME -> Unit
        }
    }

    private fun catalogCategoryRequiresPin(tab: Tab, categoryId: String): Boolean = when (tab) {
        Tab.MOVIES -> parentalStore.requiresPinForVodCategory(categoryId)
        Tab.SERIES -> parentalStore.requiresPinForSeriesCategory(categoryId)
        else -> false
    }

    private fun relockLiveCategory(categoryId: String?) {
        if (categoryId.isNullOrEmpty()) return
        ParentalSession.lock(ParentalSession.liveCategoryKey(categoryId))
    }

    private fun relockCatalogCategory(tab: Tab, categoryId: String) {
        if (categoryId.isBlank()) return
        val key = when (tab) {
            Tab.MOVIES -> ParentalSession.vodCategoryKey(categoryId)
            Tab.SERIES -> ParentalSession.seriesCategoryKey(categoryId)
            else -> return
        }
        ParentalSession.lock(key)
    }

    private fun showLiveBlockedCategory(cat: Category) {
        val newId = liveCategoryId(cat)
        val previousId = liveBrowsingCategoryId
        liveBrowsingCategoryId = newId
        val idx = liveCategories.indexOfFirst { liveCategoryId(it) == newId }
        if (idx >= 0) liveCategoryFocusIndex = idx
        refreshLiveCategoryHighlight(previousId, newId)
        clearLiveGroupPreview()
        previewTitle.text = getString(R.string.parental_pin_message, cat.name)
    }

    private fun clearLiveGroupPreview() {
        channels.clear()
        channelAdapter?.notifyDataSetChanged()
        channelList.visibility = View.INVISIBLE
        pauseLivePreviewPlayback()
        epgNow.text = ""
        epgNext.visibility = View.GONE
        previewLogo.visibility = View.GONE
        setPreviewVideoVisible(false)
    }

    private fun showCatalogBlockedCategory(tab: Tab, cat: Category) {
        val previousId = catalogBrowsingCategoryId
        catalogBrowsingCategoryId = cat.id
        selectedCatalogCategoryId = null
        catalogEnterContentOnLoad = false
        refreshCatalogCategoryHighlight(previousId, cat.id)
        applyCatalogPanelFocusMode(tab, inContent = false)
        posterItems.clear()
        catalogGrid.adapter?.notifyDataSetChanged()
        catalogGrid.visibility = View.INVISIBLE
        catalogLoading.visibility = View.GONE
        catalogEmpty.visibility = View.VISIBLE
        catalogEmpty.text = getString(R.string.parental_pin_message, cat.name)
    }

    private fun withLiveCategoryAccess(category: Category, categoryId: String?, action: () -> Unit) {
        if (!parentalStore.requiresPinForLiveCategory(categoryId)) {
            action()
            return
        }
        val catKey = categoryId?.let { ParentalSession.liveCategoryKey(it) }.orEmpty()
        ParentalPinDialog.show(
            this,
            getString(R.string.parental_pin_message, category.name),
            onVerified = {
                if (catKey.isNotEmpty()) ParentalSession.unlock(catKey)
                action()
            },
            onCancelled = {
                showLiveBlockedCategory(category)
            },
        )
    }

    private fun withChannelAccess(channel: LiveChannel, action: () -> Unit) {
        if (!parentalStore.requiresPinForChannel(channel, selectedLiveCategoryId)) {
            action()
            return
        }
        ParentalPinDialog.show(
            this,
            getString(R.string.parental_pin_channel, channel.name),
            onVerified = {
                ParentalSession.unlock(ParentalSession.liveChannelKey(channel.streamId))
                if (channel.categoryId.isNotBlank()) {
                    ParentalSession.unlock(ParentalSession.liveCategoryKey(channel.categoryId))
                }
                action()
            },
        )
    }

    private fun toggleChannelLock(channel: LiveChannel) {
        val unlock = {
            parentalStore.toggleChannelLock(channel.streamId)
            refreshAfterChannelLockToggle(channel)
            Toast.makeText(this, R.string.parental_channel_unlocked, Toast.LENGTH_SHORT).show()
        }
        if (parentalStore.isChannelLocked(channel.streamId)) {
            ParentalPinDialog.show(
                this,
                getString(R.string.parental_pin_channel, channel.name),
                onVerified = unlock,
            )
            return
        }
        parentalStore.toggleChannelLock(channel.streamId)
        refreshAfterChannelLockToggle(channel)
        Toast.makeText(this, R.string.parental_channel_locked, Toast.LENGTH_SHORT).show()
    }

    private fun refreshAfterChannelLockToggle(channel: LiveChannel) {
        updatePreviewLockButton(channel)
        updatePreviewActions(channel)
        if (selectedLiveCategoryId == ParentalControlStore.LOCK_CATEGORY_ID) {
            reloadChannels(keepCategoryFocus = true)
        } else {
            channelAdapter?.notifyDataSetChanged()
        }
    }

    private fun updatePreviewActions(channel: LiveChannel?) {
        val target = channel ?: currentPreviewChannel
        val favoriteBtn = btnPreviewFavorite
        val catchUpBtn = btnCatchUp
        if (favoriteBtn == null) return
        if (target == null) {
            favoriteBtn.visibility = View.GONE
            catchUpBtn?.visibility = View.GONE
            return
        }
        favoriteBtn.visibility = View.VISIBLE
        val isFavorite = favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, target.streamId)
        favoriteBtn.text = getString(
            if (isFavorite) R.string.live_remove_favorite else R.string.live_add_favorite,
        )
        val canCatchUp = target.tvArchive == 1 &&
            currentPreviewEpg.isNotEmpty() &&
            EpgFormatter.currentIndex(currentPreviewEpg) >= 0
        catchUpBtn?.visibility = if (canCatchUp) View.VISIBLE else View.GONE
    }

    private fun togglePreviewFavorite() {
        val channel = currentPreviewChannel ?: return
        favoritesStore.toggle(FavoritesStore.KIND_LIVE, channel.streamId)
        updatePreviewActions(channel)
        if (selectedLiveCategoryId == FavoritesStore.FAVORITES_CATEGORY_ID) {
            reloadChannels(keepCategoryFocus = true)
        } else {
            channelAdapter?.notifyDataSetChanged()
        }
    }

    private fun playCatchUp() {
        val channel = currentPreviewChannel ?: return
        val profile = PlaylistRepository.profile ?: return
        if (channel.tvArchive != 1 || currentPreviewEpg.isEmpty()) return
        val index = EpgFormatter.currentIndex(currentPreviewEpg)
        val entry = currentPreviewEpg.getOrNull(index) ?: return
        if (entry.start <= 0L) return
        val nowSec = System.currentTimeMillis() / 1000L
        val durationSec = ((entry.end.takeIf { it > entry.start } ?: nowSec) - entry.start)
            .toInt()
            .coerceAtLeast(60)
        val url = api.timeshiftStreamUrl(
            profile = profile,
            streamId = channel.streamId,
            startSec = entry.start,
            durationSec = durationSec,
            ext = channel.extension,
        )
        if (url.isBlank()) {
            Toast.makeText(this, R.string.series_playback_failed, Toast.LENGTH_SHORT).show()
            return
        }
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = "${channel.name} — ${entry.title}",
                url = url,
                kind = ResumeStore.KIND_LIVE,
                contentId = channel.streamId.toString(),
                imageUrl = channel.icon,
                streamId = channel.streamId,
                epgChannelId = channel.epgChannelId,
                extension = channel.extension,
            ),
        )
    }

    private fun updatePreviewLockButton(channel: LiveChannel?) {
        val btn = panelLive?.findViewById<ImageButton?>(R.id.btnChannelLock) ?: return
        val target = channel ?: currentPreviewChannel ?: run {
            btn.visibility = View.GONE
            return
        }
        btn.visibility = View.VISIBLE
        val locked = parentalStore.isChannelLocked(target.streamId)
        val canLock = parentalStore.canLockChannel(target)
        btn.setImageResource(if (locked) R.drawable.ic_lock_on else R.drawable.ic_lock_off)
        btn.alpha = if (canLock || locked) 1f else 0.35f
        btn.isEnabled = canLock || locked
    }

    private fun withCatalogCategoryAccess(tab: Tab, category: Category, action: () -> Unit) {
        val needsPin = when (tab) {
            Tab.MOVIES -> parentalStore.requiresPinForVodCategory(category.id)
            Tab.SERIES -> parentalStore.requiresPinForSeriesCategory(category.id)
            else -> false
        }
        if (!needsPin) {
            action()
            return
        }
        val key = when (tab) {
            Tab.MOVIES -> ParentalSession.vodCategoryKey(category.id)
            Tab.SERIES -> ParentalSession.seriesCategoryKey(category.id)
            else -> return
        }
        ParentalPinDialog.show(
            this,
            getString(R.string.parental_pin_message, category.name),
            onVerified = {
                ParentalSession.unlock(key)
                action()
            },
            onCancelled = {
                showCatalogBlockedCategory(tab, category)
            },
        )
    }

    private fun withMovieAccess(title: String, categoryId: String = "", action: () -> Unit) {
        if (categoryId.isNotBlank() && parentalStore.requiresPinForVodCategory(categoryId)) {
            ParentalPinDialog.show(
                this,
                getString(R.string.parental_pin_content, title),
                onVerified = {
                    ParentalSession.unlock(ParentalSession.vodCategoryKey(categoryId))
                    action()
                },
            )
            return
        }
        action()
    }

    private fun withSeriesAccess(title: String, categoryId: String = "", action: () -> Unit) {
        if (categoryId.isNotBlank() && parentalStore.requiresPinForSeriesCategory(categoryId)) {
            ParentalPinDialog.show(
                this,
                getString(R.string.parental_pin_content, title),
                onVerified = {
                    ParentalSession.unlock(ParentalSession.seriesCategoryKey(categoryId))
                    action()
                },
            )
            return
        }
        action()
    }

    private fun reloadChannels(keepCategoryFocus: Boolean = false, autoPreviewFirst: Boolean = false) {
        previewToken++
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        teardownLivePreviewPlayback()
        val loadToken = ++channelsLoadToken
        val categoryId = selectedLiveCategoryId
        reloadingChannels = true
        lifecycleScope.launch {
            val loaded = try {
                withContext(Dispatchers.Default) {
                    when (categoryId) {
                        FavoritesStore.FAVORITES_CATEGORY_ID ->
                            PlaylistRepository.channelsFor(null, appSettings.liveSortMode).filter {
                                favoritesStore.isFavorite(FavoritesStore.KIND_LIVE, it.streamId)
                            }
                        ParentalControlStore.LOCK_CATEGORY_ID -> {
                            val lockedIds = parentalStore.lockedChannelIds()
                            if (lockedIds.isEmpty()) {
                                emptyList()
                            } else {
                                PlaylistRepository.channelsFor(null, appSettings.liveSortMode).filter {
                                    it.streamId in lockedIds
                                }
                            }
                        }
                        else -> PlaylistRepository.channelsFor(categoryId, appSettings.liveSortMode)
                    }
                }
            } catch (_: Exception) {
                emptyList()
            }
            withContext(Dispatchers.Main) {
                if (loadToken != channelsLoadToken) return@withContext
                channels.clear()
                channels.addAll(loaded)
                channelList.stopScroll()
                reloadingChannels = false
                channelList.post {
                    if (loadToken != channelsLoadToken) return@post
                    channelAdapter?.notifyDataSetChanged()
                    if (channels.isEmpty()) {
                        channelList.visibility = View.INVISIBLE
                        showLiveSelectPrompt()
                        return@post
                    }
                    channelList.visibility = View.VISIBLE
                    prefetchLiveChannelIcons(loaded)
                    ensurePreviewPlayer()
                    prefetchEpgForChannels(loaded)
                    val previewIndex = 0
                    channelList.scrollToPosition(previewIndex)
                    when {
                        liveEnterContentOnLoad -> {
                            liveEnterContentOnLoad = false
                            TvNavHelper.focusItem(channelList, previewIndex)
                            schedulePreviewAfterChannelFocus(previewIndex)
                        }
                        autoPreviewFirst && DeviceUi.useDpadFocus(this@MainActivity) -> {
                            TvNavHelper.focusItem(channelList, previewIndex)
                            schedulePreviewAfterChannelFocus(previewIndex)
                        }
                        else -> {
                            channels.getOrNull(previewIndex)?.let { schedulePreview(it) }
                        }
                    }
                }
            }
        }
    }

    private fun selectChannelPreview(channel: LiveChannel) {
        if (reloadingChannels || livePreviewPaused) return
        livePreviewPaused = false
        teardownLivePreviewPlayback()
        schedulePreview(channel)
    }

    private fun teardownLivePreviewPlayback() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        disarmPreviewStallWatchdog()
        previewToken++
        miniVlcPlayer?.stop()
        miniExoPlayer?.stop()
        previewingStreamId = null
        previewWorkingUrl = null
        currentPreviewEpg = emptyList()
        epgPreviewAdapter?.submit(emptyList())
    }

    /** Libera el mini-player antes de pantalla completa (evita dos ExoPlayer/LibVLC en TV). */
    private fun releaseMiniPreviewForFullscreen() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        previewToken++
        cancelPreviewTimeout()
        disarmPreviewStallWatchdog()
        try {
            miniVlcPlayer?.stop()
            miniVlcPlayer?.release()
        } catch (_: Throwable) {
        }
        miniVlcPlayer = null
        releaseExoPreview()
        previewingStreamId = null
        previewWorkingUrl = null
        setPreviewVideoVisible(false)
    }

    private fun releaseExoPreview() {
        val view = miniExoView
        val player = miniExoPlayer ?: return
        miniExoPlayer = null
        try {
            if (view != null) {
                player.detach(view)
            } else {
                player.teardown()
            }
            player.release()
        } catch (_: Throwable) {
            try {
                player.release()
            } catch (_: Throwable) {
            }
        }
    }

    /** NetTV-style: destruye el preview por completo (categoría, pestaña, salir). */
    private fun teardownLivePreview() {
        if (!liveTabReady) return
        teardownLivePreviewPlayback()
        releaseExoPreview()
        miniVlcPlayer?.release()
        miniVlcPlayer = null
        currentPreviewChannel = null
        previewUrls = emptyList()
        previewUrlIndex = 0
        setPreviewVideoVisible(false)
        miniVlcView?.alpha = 0f
        miniExoView?.alpha = 0f
        previewLogo.visibility = View.GONE
        panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.GONE
        previewTitle.text = getString(R.string.select_channel)
        epgNow.text = getString(R.string.epg_unavailable)
        epgNext.visibility = View.GONE
    }

    private fun stopLivePreview() {
        suspendLivePreview()
    }

    private fun schedulePreview(channel: LiveChannel) {
        if (currentTab != Tab.LIVE) return
        if (liveBrowseLevel == TvBrowseNav.Level.TAB) return
        val browseId = when (liveBrowseLevel) {
            TvBrowseNav.Level.CONTENT -> selectedLiveCategoryId
            TvBrowseNav.Level.GROUP -> liveBrowsingCategoryId
            else -> null
        }
        if (parentalStore.requiresPinForLiveCategory(browseId)) return
        livePreviewPaused = false
        updatePreviewInfo(channel)
        if (reloadingChannels) return
        schedulePreviewPlayback(channel)
    }

    /** Stops preview A/V without tearing down the player instance. */
    private fun stopPreviewForZap() {
        cancelPreviewTimeout()
        disarmPreviewStallWatchdog()
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        miniVlcPlayer?.stop()
        miniExoPlayer?.stop()
        previewWorkingUrl = null
        setPreviewVideoVisible(false)
    }

    /** Stops preview A/V immediately and invalidates in-flight callbacks. */
    private fun abortPreviewPlayback() {
        previewToken++
        cancelPreviewTimeout()
        disarmPreviewStallWatchdog()
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        miniVlcPlayer?.stop()
        miniExoPlayer?.stop()
        previewWorkingUrl = null
        previewingStreamId = null
        setPreviewVideoVisible(false)
        miniExoView?.alpha = 0f
        miniVlcView?.alpha = 0f
        hideNoSignal()
    }

    private fun schedulePreviewPlayback(channel: LiveChannel) {
        if (currentTab != Tab.LIVE || reloadingChannels) return
        if (liveBrowseLevel == TvBrowseNav.Level.TAB) return
        val browseId = when (liveBrowseLevel) {
            TvBrowseNav.Level.CONTENT -> selectedLiveCategoryId
            TvBrowseNav.Level.GROUP -> liveBrowsingCategoryId
            else -> null
        }
        if (parentalStore.requiresPinForLiveCategory(browseId)) return
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        val previousStreamId = previewingStreamId
        val channelChanged = previousStreamId != channel.streamId
        if (!channelChanged && previewIsSettled()) return
        if (channelChanged || !previewIsSettled() || previewHasNoSignal()) {
            if (channelChanged) {
                previewToken++
                stopPreviewForZap()
            } else {
                stopPreviewForZap()
            }
            previewUrlIndex = 0
            previewUrls = emptyList()
            ensurePreviewPlayer()
        }
        val token = previewToken
        val delayMs = if (DeviceUi.useDpadFocus(this)) {
            CHANNEL_PREVIEW_DELAY_MS
        } else if (usesExoPreview()) {
            120L
        } else {
            150L
        }
        val task = Runnable {
            if (token != previewToken || reloadingChannels || livePreviewPaused) return@Runnable
            if (parentalStore.requiresPinForChannel(channel, selectedLiveCategoryId)) {
                withChannelAccess(channel) {
                    if (token == previewToken) previewChannel(channel, token)
                }
            } else {
                previewChannel(channel, token)
            }
        }
        pendingPreview = task
        previewHandler.postDelayed(task, delayMs)
    }

    private fun hideNoSignal() {
        panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.GONE
    }

    private fun showNoSignal() {
        cancelPreviewTimeout()
        previewWorkingUrl = null
        setPreviewVideoVisible(false)
        panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.VISIBLE
    }

    private fun armPreviewTimeout(token: Int) {
        cancelPreviewTimeout()
        val task = Runnable {
            if (token != previewToken || previewIsSettled()) return@Runnable
            if (!tryNextPreviewUrl(token)) {
                showNoSignal()
                schedulePreviewRetry(token)
            }
        }
        previewTimeoutRunnable = task
        previewHandler.postDelayed(task, PREVIEW_TIMEOUT_MS)
    }

    private fun schedulePreviewRetry(token: Int) {
        if (token != previewToken) return
        previewRetryCycleCount += 1
        if (previewRetryCycleCount > PREVIEW_RETRY_MAX_CYCLES) {
            // Give up after a few full cycles instead of retrying silently forever —
            // keep the "no signal" state visible until the user picks another channel.
            showNoSignal()
            return
        }
        val delay = (PREVIEW_RETRY_DELAY_MS * previewRetryCycleCount).coerceAtMost(2_500L)
        previewHandler.postDelayed({
            if (token != previewToken || previewIsSettled() || livePreviewPaused) return@postDelayed
            val channel = currentPreviewChannel ?: return@postDelayed
            previewUrlIndex = 0
            previewChannel(channel, token)
        }, delay)
    }

    private fun cancelPreviewTimeout() {
        previewTimeoutRunnable?.let { previewHandler.removeCallbacks(it) }
        previewTimeoutRunnable = null
    }

    private fun disarmPreviewStallWatchdog() {
        previewStallRunnable?.let { previewHandler.removeCallbacks(it) }
        previewStallRunnable = null
        previewStallTracker.reset()
        previewStallRecoverAttempts = 0
    }

    private fun armPreviewStallWatchdog() {
        disarmPreviewStallWatchdog()
        val runnable = object : Runnable {
            override fun run() {
                if (!previewIsSettled() || livePreviewPaused || currentTab != Tab.LIVE) {
                    disarmPreviewStallWatchdog()
                    return
                }
                notePreviewPlaybackProgress()
                if (previewStallTracker.isStalled()) {
                    recoverPreviewFromStall()
                    return
                }
                previewHandler.postDelayed(this, PREVIEW_STALL_CHECK_MS)
            }
        }
        previewStallRunnable = runnable
        previewHandler.postDelayed(runnable, PREVIEW_STALL_CHECK_MS)
    }

    private fun notePreviewPlaybackProgress() {
        if (usesExoPreview()) {
            val player = miniExoPlayer?.player ?: return
            previewStallTracker.noteProgress(
                exoLiveProgressKey(player.currentPosition, player.bufferedPosition),
            )
            return
        }
        if (miniVlcPlayer?.isPlaying() != true) return
        // isPlaying() stays true on a frozen frame; use the real rendered-frame count
        // when libVLC exposes it, so a stuck preview is actually detected as stalled.
        val displayed = miniVlcPlayer?.displayedPictures()
        if (displayed != null && displayed > 0) {
            previewStallTracker.noteProgress(displayed.toLong())
        } else {
            previewStallTracker.ping()
        }
    }

    private fun recoverPreviewFromStall() {
        val token = previewToken
        previewStallRecoverAttempts += 1
        previewStallTracker.reset()
        val volume = if (appSettings.previewSound) {
            LiveVlcPlayer.VOLUME_PREVIEW
        } else {
            0
        }
        if (previewStallRecoverAttempts <= 2) {
            setPreviewVideoVisible(false)
            hideNoSignal()
            val replayed = if (usesExoPreview()) {
                miniExoPlayer?.replay(volume) == true
            } else {
                miniVlcPlayer?.replay(volume) == true
            }
            if (replayed) {
                armPreviewTimeout(token)
                armPreviewStallWatchdog()
                return
            }
        }
        previewStallRecoverAttempts = 0
        previewWorkingUrl = null
        if (!tryNextPreviewUrl(token)) {
            showNoSignal()
            schedulePreviewRetry(token)
        } else {
            armPreviewStallWatchdog()
        }
    }

    private fun schedulePreviewInternal(channel: LiveChannel) {
        schedulePreview(channel)
    }

    private fun updatePreviewInfo(channel: LiveChannel) {
        currentPreviewChannel = channel
        liveChannelStore.lastStreamId = channel.streamId
        liveChannelStore.lastCategoryId = selectedLiveCategoryId ?: liveBrowsingCategoryId ?: ""
        previewTitle.text = channel.name
        previewLogo.visibility = View.VISIBLE
        if (previewLogoStreamId != channel.streamId) {
            previewLogoStreamId = channel.streamId
            val logoSize = (64 * resources.displayMetrics.density).toInt().coerceAtLeast(128)
            ChannelIconFallback.load(previewLogo, channel.name, logoSize)
            ChannelIconHelper.loadPanelIcon(previewLogo, channel)
        }
        updatePreviewLockButton(channel)
        updatePreviewActions(channel)
        EpgCache.get(channel.streamId)?.takeIf { it.isNotEmpty() }?.let { applyEpg(channel, it) } ?: run {
            epgPreviewAdapter?.submit(emptyList())
        }
        scheduleEpgLoad(channel)
        prefetchEpgNeighbors(channel)
    }

    private fun prefetchEpgNeighbors(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        val index = channels.indexOfFirst { it.streamId == channel.streamId }
        if (index < 0) return
        val neighbors = buildList {
            channels.getOrNull(index + 1)?.let { add(it) }
        }
        if (neighbors.isEmpty()) return
        lifecycleScope.launch(Dispatchers.IO) {
            neighbors.forEach { neighbor ->
                if (EpgCache.get(neighbor.streamId)?.isNotEmpty() == true) return@forEach
                runCatching {
                    val epg = api.shortEpgFast(
                        profile,
                        streamId = neighbor.streamId,
                        epgChannelId = neighbor.epgChannelId,
                        limit = 4,
                    )
                    if (epg.isNotEmpty()) EpgCache.put(neighbor.streamId, epg)
                }
            }
        }
    }

    private fun prefetchEpgForChannels(channelBatch: List<LiveChannel>, limit: Int = 10) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                coroutineScope {
                    val semaphore = Semaphore(2)
                    channelBatch.take(limit).map { channel ->
                        async {
                            semaphore.withPermit {
                                if (EpgCache.get(channel.streamId)?.isNotEmpty() == true) return@withPermit
                                runCatching {
                                    val epg = api.shortEpgFast(
                                        profile,
                                        streamId = channel.streamId,
                                        epgChannelId = channel.epgChannelId,
                                        limit = 4,
                                    )
                                    if (epg.isNotEmpty()) EpgCache.put(channel.streamId, epg)
                                }
                            }
                        }
                    }.awaitAll()
                }
            }
        }
    }

    private fun scheduleEpgLoad(channel: LiveChannel) {
        if (epgFocusStreamId == channel.streamId && EpgCache.get(channel.streamId) != null) return
        epgFocusStreamId = channel.streamId
        pendingEpg?.let { previewHandler.removeCallbacks(it) }
        val streamId = channel.streamId
        val task = Runnable {
            if (currentPreviewChannel?.streamId != streamId) return@Runnable
            val profile = PlaylistRepository.profile ?: return@Runnable
            val token = ++epgLoadToken
            lifecycleScope.launch {
                val epg = withContext(Dispatchers.IO) {
                    api.shortEpgFast(
                        profile,
                        streamId = streamId,
                        epgChannelId = channel.epgChannelId,
                        limit = 6,
                    )
                }
                if (token != epgLoadToken) return@launch
                if (currentPreviewChannel?.streamId != streamId) return@launch
                if (epg.isNotEmpty()) {
                    EpgCache.put(streamId, epg)
                }
                applyEpg(channel, epg)
            }
        }
        pendingEpg = task
        if (EPG_FOCUS_DELAY_MS > 0L) {
            previewHandler.postDelayed(task, EPG_FOCUS_DELAY_MS)
        } else {
            previewHandler.post(task)
        }
    }

    private fun cancelMiniPreviewPlayback() {
        teardownLivePreviewPlayback()
    }

    private fun previewChannel(channel: LiveChannel, token: Int) {
        if (token != previewToken || livePreviewPaused) return
        val profile = PlaylistRepository.profile ?: return
        runWhenPreviewSurfaceReady {
            if (token != previewToken || livePreviewPaused || currentTab != Tab.LIVE) return@runWhenPreviewSurfaceReady
            if (!ensurePreviewPlayer()) {
                if (token == previewToken) showNoSignal()
                return@runWhenPreviewSurfaceReady
            }
            startPreviewPlayback(channel, token, profile)
        }
    }

    private fun startPreviewPlayback(channel: LiveChannel, token: Int, profile: Profile) {
        if (token != previewToken || livePreviewPaused) return
        if (!appSettings.autoplayPreview) {
            cancelMiniPreviewPlayback()
            setPreviewVideoVisible(false)
            return
        }
        val channelChanged = previewingStreamId != channel.streamId
        if (channelChanged || previewUrls.isEmpty()) {
            previewUrls = orderPreviewUrls(LivePreviewStreamUrls.candidates(api, profile, channel))
            previewUrlIndex = 0
            previewRetryCycleCount = 0
            previewWorkingUrl = null
            previewingStreamId = channel.streamId
        }
        val url = previewUrls.getOrNull(previewUrlIndex).orEmpty()
        if (url.isBlank()) {
            showNoSignal()
            return
        }
        playMiniPreviewUrl(url, token, hideVideo = channelChanged)
    }

    private fun orderPreviewUrls(urls: List<String>): List<String> {
        val working = previewWorkingUrl?.takeIf { it.isNotBlank() && it in urls } ?: return urls
        return listOf(working) + urls.filter { it != working }
    }

    private var previewPlaybackToken = 0
    private var previewTimeoutRunnable: Runnable? = null
    private var previewStallRunnable: Runnable? = null
    private val previewStallTracker = LiveStreamStallTracker(PREVIEW_STALL_TIMEOUT_MS)
    private var previewStallRecoverAttempts = 0

    private fun playMiniPreviewUrl(url: String, token: Int, hideVideo: Boolean = false) {
        if (token != previewToken || url.isBlank()) return
        previewPlaybackToken = token
        if (hideVideo) {
            setPreviewVideoVisible(false)
        }
        hideNoSignal()
        val volume = if (appSettings.previewSound) {
            LiveVlcPlayer.VOLUME_PREVIEW
        } else {
            0
        }
        armPreviewTimeout(token)
        try {
            if (usesExoPreview()) {
                miniExoPlayer?.play(url, volume)
            } else {
                miniVlcPlayer?.play(url, volume)
            }
        } catch (_: Throwable) {
            if (token == previewToken && !tryNextPreviewUrl(token)) {
                showNoSignal()
            }
        }
    }

    private fun previewIsSettled(): Boolean {
        if (previewWorkingUrl.isNullOrBlank()) return false
        return if (usesExoPreview()) {
            miniExoPlayer?.isPlaying() == true
        } else {
            miniVlcPlayer?.isPlaying() == true
        }
    }

    private fun previewHasNoSignal(): Boolean =
        panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility == View.VISIBLE

    private fun setPreviewVideoVisible(visible: Boolean) {
        if (!liveTabReady) return
        if (usesExoPreview()) {
            miniExoView?.alpha = if (visible) 1f else 0f
            miniVlcView?.alpha = 0f
        } else {
            miniVlcView?.alpha = if (visible) 1f else 0f
            miniExoView?.alpha = 0f
        }
        if (!visible) {
            previewLogo.visibility = View.VISIBLE
        } else {
            previewLogo.visibility = View.GONE
        }
    }

    private fun showMiniPreviewControls() {
        miniPreviewControls?.visibility = View.VISIBLE
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        miniControlsHandler.postDelayed(hideMiniControlsRunnable, 5_000L)
    }

    private fun hideMiniPreviewControls() {
        miniPreviewControls?.visibility = View.GONE
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
    }

    private fun scheduleHideMiniControls() {
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        miniControlsHandler.postDelayed(hideMiniControlsRunnable, 5_000L)
    }

    private fun tryNextPreviewUrl(token: Int = previewToken): Boolean {
        if (token != previewToken) return false
        while (previewUrlIndex < previewUrls.lastIndex) {
            previewUrlIndex += 1
            val url = previewUrls[previewUrlIndex]
            hideNoSignal()
            if (!ensurePreviewPlayer()) return false
            playMiniPreviewUrl(url, token)
            return true
        }
        showNoSignal()
        return false
    }

    private fun applyEpg(channel: LiveChannel, epg: List<EpgEntry>) {
        if (currentPreviewChannel?.streamId != channel.streamId) return
        currentPreviewEpg = epg
        updatePreviewActions(channel)
        epgNow.visibility = View.GONE
        epgNext.visibility = View.GONE
        if (epg.isEmpty()) {
            epgPreviewAdapter?.submit(emptyList())
            epgNow.text = getString(R.string.epg_unavailable)
            return
        }
        epgPreviewAdapter?.submit(dedupeEpgPreview(epg).take(4))
    }

    private fun dedupeEpgPreview(epg: List<EpgEntry>): List<EpgEntry> {
        val seen = LinkedHashSet<String>()
        return epg.filter { entry ->
            val key = "${entry.start}:${entry.end}:${entry.title.trim()}"
            seen.add(key)
        }
    }

    fun openFullscreen(channel: LiveChannel) {
        withChannelAccess(channel) {
            openFullscreenInternal(channel)
        }
    }

    private fun openFullscreenInternal(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        val previewStreamId = previewingStreamId
        val handedOffUrl = previewWorkingUrl
            ?.takeIf { previewStreamId == channel.streamId && it.isNotBlank() }
        val previewUrlSnapshot = if (previewStreamId == channel.streamId) {
            previewUrls.toList()
        } else {
            emptyList()
        }
        LiveChannelNavigator.setPlaybackContext(
            this,
            channel,
            selectedLiveCategoryId ?: liveBrowsingCategoryId ?: channel.categoryId,
        )
        VolumeHelper.boostOnPlaybackStart(this)
        livePreviewPaused = true
        releaseMiniPreviewForFullscreen()
        val previewCandidates = LivePreviewStreamUrls.candidates(api, profile, channel)
        val fallbackCandidates = if (DeviceUi.isTvUi(this)) {
            LiveStreamUrls.tvCandidates(api, profile, channel)
        } else {
            LiveStreamUrls.candidates(api, profile, channel)
        }
        val urls = if (handedOffUrl != null) {
            buildList {
                add(handedOffUrl)
                addAll(previewUrlSnapshot)
                addAll(previewCandidates)
            }.filter { it.isNotBlank() }.distinct()
        } else {
            buildList {
                addAll(previewUrlSnapshot)
                addAll(previewCandidates)
                addAll(fallbackCandidates)
            }.filter { it.isNotBlank() }.distinct()
        }
        if (urls.isEmpty()) {
            Toast.makeText(this, R.string.connection_failed, Toast.LENGTH_SHORT).show()
            livePreviewPaused = false
            return
        }
        val request = PlaybackRequest(
            title = channel.name,
            url = urls.first(),
            kind = ResumeStore.KIND_LIVE,
            contentId = channel.streamId.toString(),
            imageUrl = channel.icon,
            streamId = channel.streamId,
            epgChannelId = channel.epgChannelId,
            extension = channel.extension,
            alternateUrls = urls.drop(1),
        )
        val launchDelayMs = if (DeviceUi.isTvUi(this)) {
            FULLSCREEN_LAUNCH_DELAY_MS + VlcInstanceGuard.cooldownRemainingMs(LIVE_VLC_COOLDOWN_MS)
        } else {
            300L
        }
        livePreviewResumeToken++
        livePanel().postDelayed({
            if (isDestroyed || currentTab != Tab.LIVE) return@postDelayed
            try {
                PlaybackLauncher.play(context = this, request = request)
            } catch (_: Exception) {
                livePreviewPaused = false
                Toast.makeText(this, R.string.connection_failed, Toast.LENGTH_SHORT).show()
            }
        }, launchDelayMs)
    }

    private var fullscreenWaitToken = 0

    private fun openFullscreenWhenPreviewReady(channel: LiveChannel) {
        val waitToken = ++fullscreenWaitToken
        fun attempt(remaining: Int) {
            previewHandler.postDelayed({
                if (waitToken != fullscreenWaitToken || currentTab != Tab.LIVE) return@postDelayed
                if (currentPreviewChannel?.streamId != channel.streamId) return@postDelayed
                when {
                    previewIsSettled() -> openFullscreen(channel)
                    previewHasNoSignal() -> {
                        Toast.makeText(
                            this@MainActivity,
                            R.string.connection_failed,
                            Toast.LENGTH_SHORT,
                        ).show()
                    }
                    remaining > 0 -> attempt(remaining - 1)
                    else -> Toast.makeText(
                        this@MainActivity,
                        R.string.connection_failed,
                        Toast.LENGTH_SHORT,
                    ).show()
                }
            }, 200L)
        }
        attempt(15)
    }

    private fun logoutUser() {
        ParentalSession.clear()
        ContentPreloader.cancelBackgroundPreload()
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
        ParentalSession.clear()
        finishAffinity()
    }

    private fun isFocusInLivePreviewControls(): Boolean {
        val focused = currentFocus ?: return false
        return focused.id == R.id.btnVolUp ||
            focused.id == R.id.btnVolDown ||
            focused.id == R.id.btnChannelLock ||
            focused.id == R.id.btnFullscreen ||
            focused.id == R.id.btnCatchUp ||
            focused.id == R.id.btnPreviewFavorite
    }

    private fun installTvBackHandler() {
        onBackPressedDispatcher.addCallback(
            this,
            object : OnBackPressedCallback(true) {
                override fun handleOnBackPressed() {
                    handleTvBack()
                }
            },
        )
    }

    private fun handleTvBack(): Boolean {
        return when (currentTab) {
            Tab.HOME -> {
                if (DeviceUi.useDpadFocus(this) && isFocusInBottomNav()) {
                    true
                } else {
                    logoutUser()
                    true
                }
            }
            Tab.LIVE -> handleLiveBack()
            Tab.MOVIES, Tab.SERIES -> handleCatalogBack()
        }
    }

    private fun handleLiveBack(): Boolean {
        when {
            isFocusInPreviewPanel() -> focusChannelAt(currentPreviewChannel)
            liveBrowseLevel == TvBrowseNav.Level.CONTENT -> exitLiveContentToGroup()
            liveBrowseLevel == TvBrowseNav.Level.GROUP -> returnToLiveTab()
            isFocusInList(channelList) -> exitLiveContentToGroup()
            isFocusInList(liveCategoryList) -> returnToLiveTab()
            liveBrowseLevel == TvBrowseNav.Level.TAB && isFocusInBottomNav() -> Unit
            else -> focusCategoryList()
        }
        return true
    }

    private fun handleCatalogBack(): Boolean {
        when {
            catalogBrowseLevel == TvBrowseNav.Level.CONTENT -> exitCatalogContentToGroup()
            catalogBrowseLevel == TvBrowseNav.Level.GROUP -> returnToCatalogTab(currentTab)
            isFocusInList(catalogGrid) -> exitCatalogContentToGroup()
            isFocusInList(catalogCategoryList) -> returnToCatalogTab(currentTab)
            catalogBrowseLevel == TvBrowseNav.Level.TAB && isFocusInBottomNav() -> Unit
            else -> returnToCatalogTab(currentTab)
        }
        return true
    }

    private fun focusAdjacentTab(tab: Tab, direction: Int) {
        val tabs = listOf(Tab.HOME, Tab.LIVE, Tab.MOVIES, Tab.SERIES)
        val index = tabs.indexOf(tab)
        if (index < 0) return
        val next = tabs[(index + direction + tabs.size) % tabs.size]
        val tabView = when (next) {
            Tab.HOME -> tabHome
            Tab.LIVE -> tabLive
            Tab.MOVIES -> tabMovies
            Tab.SERIES -> tabSeries
        }
        tabView.requestFocus()
    }

    /** Tab focus first so Back/Left from group never escapes the activity. */
    private fun returnToLiveTab() {
        val index = focusedLiveCategoryIndex()
        if (index >= 0) liveCategoryFocusIndex = index
        liveCategories.getOrNull(liveCategoryFocusIndex)?.let { cat ->
            liveBrowsingCategoryId = liveCategoryId(cat)
            liveChannelStore.lastCategoryId = liveBrowsingCategoryId
        }
        liveBrowseLevel = TvBrowseNav.Level.TAB
        applyLiveBrowseLevel()
        suppressTabFocusNavigation = true
        TvBrowseNav.clearListFocus(liveCategoryList)
        TvBrowseNav.clearListFocus(channelList)
        TvBrowseNav.focusTab(tabLive)
        tabLive.post { suppressTabFocusNavigation = false }
    }

    /** Tab focus first so Back/Left from group never escapes the activity. */
    private fun returnToCatalogTab(tab: Tab) {
        val tabView = when (tab) {
            Tab.MOVIES -> tabMovies
            Tab.SERIES -> tabSeries
            else -> return
        }
        val index = focusedCatalogCategoryIndex()
        catalogCategoryFocusIndex = index
        catalogCategories.getOrNull(index)?.id?.let { id ->
            catalogBrowsingCategoryId = id
            when (tab) {
                Tab.MOVIES -> movieCategoryId = id
                Tab.SERIES -> seriesCategoryId = id
                else -> Unit
            }
        }
        catalogBrowseLevel = TvBrowseNav.Level.TAB
        applyCatalogBrowseLevel(tab)
        suppressTabFocusNavigation = true
        TvBrowseNav.clearListFocus(catalogCategoryList)
        TvBrowseNav.clearListFocus(catalogGrid)
        TvBrowseNav.focusTab(tabView)
        tabView.post { suppressTabFocusNavigation = false }
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
            Tab.LIVE -> returnToLiveTab()
            Tab.MOVIES, Tab.SERIES -> returnToCatalogTab(tab)
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

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (DeviceUi.useDpadFocus(this) && event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_BACK, KeyEvent.KEYCODE_ESCAPE -> {
                    handleTvBack()
                    return true
                }
                KeyEvent.KEYCODE_SEARCH -> {
                    openSearch()
                    return true
                }
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    if (handleTvDpadLeft()) return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    private fun handleTvDpadLeft(): Boolean {
        return when (currentTab) {
            Tab.LIVE -> liveBrowseLevel == TvBrowseNav.Level.CONTENT && isFocusInList(channelList) && run {
                exitLiveContentToGroup()
                true
            }
            Tab.MOVIES, Tab.SERIES -> catalogBrowseLevel == TvBrowseNav.Level.CONTENT &&
                isFocusInList(catalogGrid) && run {
                    exitCatalogContentToGroup()
                    true
                }
            else -> false
        }
    }

    override fun onStop() {
        super.onStop()
        suspendLivePreview()
        stopHeroRotation()
    }

    override fun onStart() {
        super.onStart()
        if (currentTab == Tab.HOME && homeLoaded) {
            startHeroRotation()
        }
    }

    override fun onResume() {
        super.onResume()
        if (currentTab == Tab.HOME) {
            if (shouldFocusHomeRailsOnResume && DeviceUi.useDpadFocus(this)) {
                focusHeroOnStart()
            }
            if (homeLoaded) {
                railPreviewItem = null
                heroCarouselPaused = false
                heroRotateFirstTick = true
                startHeroRotation()
            }
        } else if (currentTab == Tab.LIVE) {
            ensureLiveTabReady()
            syncLivePlaylistUi()
            val resumeToken = ++livePreviewResumeToken
            val resumeDelay = VlcInstanceGuard.cooldownRemainingMs(LIVE_VLC_COOLDOWN_MS)
            livePanel().postDelayed({
                if (isDestroyed || currentTab != Tab.LIVE || resumeToken != livePreviewResumeToken) return@postDelayed
                livePreviewPaused = false
                ensurePreviewPlayer()
                attachPreviewPlayersToSurface()
                if (DeviceUi.useDpadFocus(this)) {
                    currentPreviewChannel?.let { schedulePreview(it) }
                } else {
                    focusChannelAt(currentPreviewChannel)
                    if (appSettings.autoplayPreview && currentPreviewChannel != null) {
                        currentPreviewChannel?.let { schedulePreview(it) }
                    }
                }
            }, resumeDelay)
        } else if (currentTab == Tab.MOVIES || currentTab == Tab.SERIES) {
            if (!DeviceUi.useDpadFocus(this)) {
                refreshCatalogResumeCategory(currentTab)
            }
        }
    }

    override fun onDestroy() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        clockHandler.removeCallbacks(clockRunnable)
        miniControlsHandler.removeCallbacks(hideMiniControlsRunnable)
        stopHeroRotation()
        releaseExoPreview()
        miniVlcPlayer?.release()
        miniVlcPlayer = null
        super.onDestroy()
    }

    private fun setupMiniPlayer() {
        val panel = livePanel()
        miniPreviewControls = panel.findViewById(R.id.miniPreviewControls)
        miniPreviewControls?.visibility = View.GONE

        val noSignal = panel.findViewById<View>(R.id.miniNoSignal)
        noSignal?.visibility = View.GONE
        panel.findViewById<View>(R.id.btnNoSignalSettings)?.setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        val preview = previewContainer ?: return
        preview.setOnClickListener {
            currentPreviewChannel?.let { openFullscreen(it) }
        }
        preview.setOnKeyListener { _, keyCode, event ->
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
                KeyEvent.KEYCODE_MENU, KeyEvent.KEYCODE_INFO -> {
                    currentPreviewChannel?.let { toggleChannelLock(it) }
                    true
                }
                else -> false
            }
        }
        panel.findViewById<ImageButton>(R.id.btnVolUp)?.setOnClickListener {
            VolumeHelper.adjust(this, raise = true)
            scheduleHideMiniControls()
        }
        panel.findViewById<ImageButton>(R.id.btnVolDown)?.setOnClickListener {
            VolumeHelper.adjust(this, raise = false)
            scheduleHideMiniControls()
        }
        panel.findViewById<ImageButton>(R.id.btnFullscreen)?.setOnClickListener {
            currentPreviewChannel?.let { openFullscreen(it) }
        }
        panel.findViewById<ImageButton>(R.id.btnChannelLock)?.setOnClickListener {
            currentPreviewChannel?.let { toggleChannelLock(it) }
        }
        btnPreviewFavorite?.let { btn ->
            TvFocusHelper.bindButton(btn) { togglePreviewFavorite() }
        }
        btnCatchUp?.let { btn ->
            TvFocusHelper.bindButton(btn) { playCatchUp() }
        }
        miniExoView = panel.findViewById(R.id.miniExoPlayer)
        miniVlcView = panel.findViewById(R.id.miniVlcPlayer)
        previewUsesExo = when {
            miniExoView != null -> true
            miniVlcView != null -> false
            else -> false
        }
        if (previewUsesExo) {
            miniVlcView?.visibility = View.GONE
            miniExoView?.visibility = View.VISIBLE
            createMiniExoPlayer()
        } else {
            miniExoView?.visibility = View.GONE
            miniVlcView?.visibility = View.VISIBLE
            initMiniVlcPreview()
        }
        miniExoView?.alpha = 0f
        miniVlcView?.alpha = 0f
        warmupPreviewPlayer()
    }

    /** NetTV-style: crea VLC al enlazar el panel (evita race con surface no medido). */
    private fun initMiniVlcPreview() {
        if (usesExoPreview() || miniVlcPlayer != null || miniVlcView == null) return
        try {
            recreateMiniVlcPlayer()
        } catch (_: Exception) {
            miniVlcPlayer = null
        }
        if (miniVlcPlayer == null && DeviceUi.isTvUi(this)) {
            ensureExoPreviewFallback()
        }
    }

    /** Crea el reproductor de preview bajo demanda cuando el panel Live está visible. */
    private fun ensurePreviewPlayer(): Boolean {
        if (currentTab != Tab.LIVE || livePanel().visibility != View.VISIBLE) return false
        if (usesExoPreview()) {
            if (miniExoPlayer == null) {
                createMiniExoPlayer()
            }
            attachPreviewPlayersToSurface()
            return miniExoPlayer != null
        }
        if (miniVlcPlayer == null) {
            initMiniVlcPreview()
        }
        if (miniVlcPlayer != null) return true
        return ensureExoPreviewFallback()
    }

    private fun ensureExoPreviewFallback(): Boolean {
        if (miniExoView == null) return false
        previewUsesExo = true
        miniVlcPlayer?.release()
        miniVlcPlayer = null
        miniVlcView?.visibility = View.GONE
        miniExoView?.visibility = View.VISIBLE
        if (miniExoPlayer == null) createMiniExoPlayer()
        return miniExoPlayer != null
    }

    private fun runWhenPreviewSurfaceReady(block: () -> Unit) {
        val surface = if (usesExoPreview()) miniExoView else miniVlcView
        if (surface == null) {
            block()
            return
        }
        var attempts = 0
        fun tryRun() {
            if (surface.width > 0 && surface.height > 0 && surface.isAttachedToWindow) {
                block()
                return
            }
            attempts += 1
            if (attempts >= PREVIEW_SURFACE_MAX_ATTEMPTS) {
                block()
                return
            }
            surface.post { tryRun() }
        }
        if (surface.isAttachedToWindow) {
            tryRun()
        } else {
            surface.post { tryRun() }
        }
    }

    private fun warmupPreviewPlayer() {
        if (currentTab != Tab.LIVE) return
        livePanel().post {
            if (currentTab != Tab.LIVE) return@post
            ensurePreviewPlayer()
            val surface = if (usesExoPreview()) miniExoView else miniVlcView
            surface?.requestLayout()
        }
    }

    private fun createMiniExoPlayer() {
        if (miniExoPlayer != null) return
        val playerView = miniExoView ?: return
        playerView.setKeepContentOnPlayerReset(false)
        val noSignal = livePanel().findViewById<View>(R.id.miniNoSignal)
        miniExoPlayer = LiveExoPreviewPlayer(
            context = this,
            playerView = playerView,
            onError = {
                if (!isLivePreviewContext()) return@LiveExoPreviewPlayer
                setPreviewVideoVisible(false)
                if (!tryNextPreviewUrl()) {
                    noSignal.visibility = View.VISIBLE
                }
            },
            onPlaying = {
                if (!isLivePreviewContext()) return@LiveExoPreviewPlayer
                if (previewPlaybackToken != previewToken) return@LiveExoPreviewPlayer
                cancelPreviewTimeout()
                previewRetryCycleCount = 0
                if (previewUrlIndex in previewUrls.indices) {
                    previewWorkingUrl = previewUrls[previewUrlIndex]
                }
                setPreviewVideoVisible(true)
                hideNoSignal()
                if (DeviceUi.useDpadFocus(this)) showMiniPreviewControls()
                notePreviewPlaybackProgress()
                armPreviewStallWatchdog()
            },
        )
    }

    private fun recreateMiniVlcPlayer() {
        if (usesExoPreview()) return
        val videoLayout = miniVlcView ?: return
        miniVlcPlayer?.release()
        miniVlcPlayer = null
        val noSignal = livePanel().findViewById<View>(R.id.miniNoSignal)
        miniVlcPlayer = LiveVlcPlayer(
            context = this,
            videoLayout = videoLayout,
            networkBufferMs = appSettings.networkBufferMs.coerceIn(1_000, 1_800),
            previewMode = true,
            onError = {
                if (!isLivePreviewContext()) return@LiveVlcPlayer
                setPreviewVideoVisible(false)
                if (!tryNextPreviewUrl()) {
                    noSignal.visibility = View.VISIBLE
                }
            },
            onPlaying = {
                if (!isLivePreviewContext()) return@LiveVlcPlayer
                if (previewPlaybackToken != previewToken) return@LiveVlcPlayer
                cancelPreviewTimeout()
                previewRetryCycleCount = 0
                if (previewUrlIndex in previewUrls.indices) {
                    previewWorkingUrl = previewUrls[previewUrlIndex]
                }
                setPreviewVideoVisible(true)
                hideNoSignal()
                if (DeviceUi.useDpadFocus(this)) showMiniPreviewControls()
                notePreviewPlaybackProgress()
                armPreviewStallWatchdog()
            },
        )
    }
}

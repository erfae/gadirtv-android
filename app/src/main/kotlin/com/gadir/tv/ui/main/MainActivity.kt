package com.gadir.tv.ui.main

import android.content.Intent
import android.view.Gravity
import android.view.KeyEvent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.view.ViewStub
import android.widget.FrameLayout
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
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.BootstrapLoader
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.LiveChannelStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.data.ParentalSession
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
import com.gadir.tv.player.LiveExoPreviewPlayer
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.LiveVlcPlayer
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.ui.profiles.ProfilesActivity
import org.videolan.libvlc.util.VLCVideoLayout
import androidx.media3.ui.PlayerView
import com.gadir.tv.ui.search.SearchActivity
import com.gadir.tv.ui.series.SeriesDetailActivity
import com.gadir.tv.ui.settings.ParentalPinDialog
import com.gadir.tv.ui.settings.SettingsActivity
import com.gadir.tv.util.AccountFormat
import com.gadir.tv.util.ChannelIconHelper
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.FocusScaleHelper
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.ProfileAvatarHelper
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.TvNavHelper
import com.gadir.tv.util.VolumeHelper
import com.gadir.tv.util.HeaderClockHelper
import com.gadir.tv.util.HostUtils
import java.util.Date
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : BaseLocaleActivity() {

    companion object {
        private const val HOME_RAIL_LIMIT_COMPACT = 12
        private const val HERO_LIMIT_COMPACT = 1
        private const val HERO_LIMIT_TV = 6
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
    private var panelLive: View? = null
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
    private var heroPlotRequestId = 0
    private var heroBackdropRequestId = 0
    private var heroIndex = 0
    private var railPreviewItem: HomeRailAdapter.HomeRailItem? = null
    private var homeLoaded = false
    private var shouldFocusHomeRailsOnResume = true
    private var catalogLoadToken = 0
    private var catalogCategoryFocusToken = 0
    private val catalogCategoryHandler = Handler(Looper.getMainLooper())
    private var pendingCatalogCategory: Runnable? = null
    private var liveCategoryApplyToken = 0
    private val liveCategoryHandler = Handler(Looper.getMainLooper())
    private var pendingLiveCategory: Runnable? = null
    private var reloadingChannels = false
    private var channelsLoadToken = 0
    private var livePreviewPaused = false
    private var liveTabReady = false
    private var miniPreviewControls: View? = null
    private var previewContainer: View? = null
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

    private fun usesExoPreview(): Boolean = previewUsesExo

    private fun livePanel(): View = checkNotNull(panelLive) { "Live panel not ready" }

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
        previewContainer = panel.findViewById(R.id.previewContainer)
        liveCategoryList.layoutManager = LinearLayoutManager(this)
        channelList.layoutManager = LinearLayoutManager(this)
    }

    private val liveCategories = mutableListOf<Category>()
    private val heroRotateRunnable = object : Runnable {
        override fun run() {
            if (currentTab != Tab.HOME) return
            if (railPreviewItem == null && heroItems.size > 1) {
                heroIndex = (heroIndex + 1) % heroItems.size
                bindHero(heroItems[heroIndex])
            }
            if (currentTab == Tab.HOME && heroItems.size > 1) {
                heroHandler.postDelayed(this, 8000L)
            }
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
        panelCatalog = findViewById(R.id.panelMovies)

        catalogCategoryList = panelCatalog.findViewById(R.id.catalogCategoryList)
        catalogGrid = panelCatalog.findViewById(R.id.catalogGrid)
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
        configureCatalogGrid()
        favoritesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        resumeRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        moviesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seriesRail.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)

        heroPlay.setOnFocusChangeListener { view, hasFocus ->
            if (DeviceUi.useDpadFocus(this)) {
                FocusScaleHelper.applyConeFocus(view, hasFocus)
                if (hasFocus) {
                    railPreviewItem = null
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
                else -> false
            }
        }

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

        setupHeaderFocusChain()
        configureHeroLayout()

        showTab(Tab.HOME)
    }

    private fun dp(value: Int): Int =
        (value * resources.displayMetrics.density).toInt()

    private fun configureHeroLayout() {
        val heroHeight = if (DeviceUi.isCompact(this)) {
            (resources.displayMetrics.heightPixels * 0.36f).toInt().coerceIn(dp(200), dp(300))
        } else {
            dp(220)
        }
        heroImage.layoutParams = heroImage.layoutParams.apply { height = heroHeight }
        panelHome.findViewById<View>(R.id.heroContainer)?.minimumHeight = heroHeight
        if (DeviceUi.isCompact(this)) {
            headerDate.visibility = View.GONE
        } else {
            configureHeroPosterLayout()
        }
    }

    private fun configureHeroPosterLayout() {
        val posterWidth = dp(96)
        val posterHeight = dp(140)
        val params = (heroPoster.layoutParams as? FrameLayout.LayoutParams)
            ?: FrameLayout.LayoutParams(posterWidth, posterHeight)
        params.width = posterWidth
        params.height = posterHeight
        params.gravity = Gravity.END or Gravity.CENTER_VERTICAL
        params.marginEnd = dp(20)
        heroPoster.layoutParams = params
    }

    private fun ensureLiveTabReady() {
        if (liveTabReady) return
        liveTabReady = true
        inflateLivePanelIfNeeded()
        setupMiniPlayer()
        setupLiveTab()
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
        liveCategories.add(
            Category(
                id = ParentalControlStore.LOCK_CATEGORY_ID,
                name = getString(R.string.category_locked),
            ),
        )
        liveCategories.addAll(PlaylistRepository.categories)

        val applyLiveCategory: (Category) -> Unit = { cat ->
            val newId = liveCategoryId(cat)
            if (DeviceUi.isCompact(this)) {
                applyLiveCategoryNow(cat, newId)
            } else {
                scheduleLiveCategoryApply(cat, newId)
            }
        }

        bindLiveCategoryAdapter(applyLiveCategory)
        channelList.setItemViewCacheSize(24)
        channelAdapter = ChannelAdapter(
            items = channels,
            onFocus = if (DeviceUi.isCompact(this)) {
                { }
            } else {
                { channel ->
                    if (!reloadingChannels) {
                        schedulePreview(channel)
                    }
                }
            },
            onOpen = { channel ->
                if (currentPreviewChannel?.streamId == channel.streamId && previewIsSettled()) {
                    openFullscreen(channel)
                } else {
                    selectChannelPreview(channel)
                }
            },
            onMoveLeft = { focusCategoryList() },
            onMoveRight = { focusPreviewPanel() },
            onMoveUp = { focusCategoryList() },
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
        selectedLiveCategoryId = liveChannelStore.lastCategoryId?.takeIf { it.isNotEmpty() }
        reloadChannels(keepCategoryFocus = true)
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
    }

    private fun liveCategoryId(cat: Category): String? = when (cat.id) {
        "" -> null
        FavoritesStore.FAVORITES_CATEGORY_ID -> FavoritesStore.FAVORITES_CATEGORY_ID
        ParentalControlStore.LOCK_CATEGORY_ID -> ParentalControlStore.LOCK_CATEGORY_ID
        else -> cat.id
    }

    private fun scheduleLiveCategoryApply(cat: Category, newId: String?) {
        if (newId == selectedLiveCategoryId) return
        liveCategoryApplyToken++
        val token = liveCategoryApplyToken
        pendingLiveCategory?.let { liveCategoryHandler.removeCallbacks(it) }
        val task = Runnable {
            if (token != liveCategoryApplyToken || currentTab != Tab.LIVE) return@Runnable
            applyLiveCategoryNow(cat, newId)
        }
        pendingLiveCategory = task
        liveCategoryHandler.postDelayed(task, 200L)
    }

    private fun applyLiveCategoryNow(cat: Category, newId: String?) {
        if (newId == selectedLiveCategoryId) return
        withLiveCategoryAccess(cat, newId) {
            try {
                resetLivePreviewUi()
                selectedLiveCategoryId = newId
                (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
                reloadChannels(
                    keepCategoryFocus = true,
                    autoPreviewFirst = !DeviceUi.isCompact(this),
                )
            } catch (_: Exception) {
                selectedLiveCategoryId = newId
                reloadChannels(
                    keepCategoryFocus = true,
                    autoPreviewFirst = !DeviceUi.isCompact(this),
                )
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
        val applyLiveCategory: (Category) -> Unit = { cat ->
            val newId = liveCategoryId(cat)
            if (DeviceUi.isCompact(this)) {
                applyLiveCategoryNow(cat, newId)
            } else {
                scheduleLiveCategoryApply(cat, newId)
            }
        }
        bindLiveCategoryAdapter(applyLiveCategory)
        (liveCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
    }

    private fun bindLiveCategoryAdapter(applyLiveCategory: (Category) -> Unit) {
        liveCategoryList.adapter = CategoryAdapter(
            items = liveCategories,
            selectedId = { liveSelectedCategoryKey() },
            onClick = applyLiveCategory,
            onFocus = if (DeviceUi.isCompact(this)) {
                null
            } else {
                applyLiveCategory
            },
            onMoveRight = { focusFirstChannel() },
            onMoveUp = { focusBottomTab(Tab.LIVE) },
        )
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
            previewContainer?.post { previewContainer?.requestFocus() }
        } else {
            TvNavHelper.focusItem(channelList, next)
        }
    }

    private fun focusPreviewPanel() {
        if (currentPreviewChannel == null) return
        previewContainer?.requestFocus()
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
            Tab.LIVE -> if (liveTabReady) liveCategoryList.id else heroPlay.id
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
            ParentalControlStore.LOCK_CATEGORY_ID -> 2
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
        if (tab == Tab.LIVE) {
            ensureLiveTabReady()
        }
        updateHeaderDownFocus()

        when (tab) {
            Tab.HOME -> {
                panelHome.visibility = View.VISIBLE
                panelLive?.visibility = View.GONE
                panelCatalog.visibility = View.GONE
                suspendLivePreview()
                if (!homeLoaded) {
                    panelHome.post {
                        if (!isDestroyed && currentTab == Tab.HOME) {
                            loadHome()
                        }
                    }
                } else {
                    startHeroRotation()
                }
            }
            Tab.LIVE -> {
                panelHome.visibility = View.GONE
                livePanel().visibility = View.VISIBLE
                panelCatalog.visibility = View.GONE
                stopHeroRotation()
                livePreviewPaused = false
                VolumeHelper.boostOnPlaybackStart(this)
                restoreLiveTabSession()
            }
            Tab.MOVIES, Tab.SERIES -> {
                panelHome.visibility = View.GONE
                panelLive?.visibility = View.GONE
                panelCatalog.visibility = View.VISIBLE
                stopHeroRotation()
                suspendLivePreview()
                val ready = if (tab == Tab.MOVIES) moviesCatalogReady else seriesCatalogReady
                if (!ready) {
                    setupCatalogTab(tab)
                    if (tab == Tab.MOVIES) moviesCatalogReady = true else seriesCatalogReady = true
                } else {
                    restoreCatalogTab(tab)
                }
                if (!DeviceUi.isCompact(this)) {
                    focusCatalogCategoryList()
                }
            }
        }
    }

    private fun loadHome() {
        val profile = PlaylistRepository.profile ?: return
        try {
            val cachedMovies = HomeLoader.recentMoviesFromCache()
            val cachedSeries = HomeLoader.recentSeriesFromCache()
            if (cachedMovies.isNotEmpty() || cachedSeries.isNotEmpty()) {
                applyHomeData(cachedMovies, cachedSeries)
                homeLoading.visibility = View.GONE
                homeLoaded = true
                refreshHomeIfNeeded(profile, cachedMovies.size)
                return
            }
        } catch (_: Throwable) {
            homeLoading.visibility = View.GONE
            homeEmpty.visibility = View.VISIBLE
            return
        }

        homeLoading.visibility = View.VISIBLE
        homeEmpty.visibility = View.GONE

        lifecycleScope.launch {
            try {
                val moviesDeferred = async(Dispatchers.IO) {
                    HomeLoader.loadRecentMovies(api, profile)
                }
                val seriesDeferred = async(Dispatchers.IO) {
                    HomeLoader.loadRecentSeries(api, profile)
                }
                val movies = moviesDeferred.await()
                val series = seriesDeferred.await()
                PlaylistRepository.setHomeRecent(movies, series)
                if (isDestroyed || currentTab != Tab.HOME) return@launch
                applyHomeData(movies, series)
                homeLoading.visibility = View.GONE
                homeLoaded = true
            } catch (_: Throwable) {
                if (isDestroyed) return@launch
                homeLoading.visibility = View.GONE
                homeEmpty.visibility = View.VISIBLE
            }
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
        try {
            applyHomeDataInternal(movies, series)
        } catch (_: Throwable) {
            homeLoading.visibility = View.GONE
            homeEmpty.visibility = View.VISIBLE
        }
    }

    private fun homeRailItemLimit(): Int =
        if (DeviceUi.isCompact(this)) HOME_RAIL_LIMIT_COMPACT else Int.MAX_VALUE

    private fun heroItemLimit(): Int =
        if (DeviceUi.isCompact(this)) HERO_LIMIT_COMPACT else HERO_LIMIT_TV

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
        if (DeviceUi.isCompact(this)) {
            while (favoriteItems.size > railLimit) favoriteItems.removeAt(favoriteItems.lastIndex)
        }

        heroItems.clear()
        val heroLimit = heroItemLimit()
        val heroMovies = recentMovies.filter { it.imageUrl.isNotBlank() }.take(heroLimit)
            .ifEmpty { recentMovies.take(heroLimit) }
        val heroSeries = recentSeries.filter { it.imageUrl.isNotBlank() }.take(heroLimit)
            .ifEmpty { recentSeries.take(heroLimit) }
        heroMovies.forEach { heroItems.add(HeroItem.Rail(it)) }
        heroSeries.forEach { heroItems.add(HeroItem.Rail(it)) }
        heroIndex = 0
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
                if (DeviceUi.useDpadFocus(this)) {
                    focusHeroOnStart()
                }
            }
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
        onMoveUp: (() -> Unit)? = null,
        onMoveDown: (() -> Unit)? = null,
    ) {
        list.clipChildren = false
        list.clipToPadding = false
        list.isNestedScrollingEnabled = false
        list.adapter = HomeRailAdapter(
            items = items,
            onClick = { item -> onHomeRailClick(item) },
            onFocus = if (DeviceUi.isCompact(this)) {
                null
            } else {
                { item -> previewHomeRailItem(item) }
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

    private fun openSeriesDetail(
        seriesId: Int,
        title: String,
        cover: String,
        categoryId: String = "",
    ) {
        val open = {
            startActivity(
                SeriesDetailActivity.intent(
                    context = this,
                    series = SeriesItem(
                        seriesId = seriesId,
                        name = title,
                        cover = cover,
                        categoryId = categoryId,
                    ),
                ),
            )
        }
        withSeriesAccess(title, categoryId, open)
    }

    private fun playMovie(
        title: String,
        streamId: Int,
        extension: String,
        imageUrl: String = "",
        positionMs: Long = 0L,
    ) {
        withMovieAccess(title) {
            playMovieInternal(title, streamId, extension, imageUrl, positionMs)
        }
    }

    private fun playMovieInternal(
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
        val backdropRequestId = ++heroBackdropRequestId

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
                    contentId = item.movie.streamId,
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                    backdropRequestId = backdropRequestId,
                )
                if (DeviceUi.useDpadFocus(this)) {
                    loadMoviePlot(item.movie.streamId, requestId, backdropRequestId)
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
                if (DeviceUi.useDpadFocus(this)) {
                    loadSeriesPlot(item.series.seriesId, requestId, backdropRequestId)
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
                if (DeviceUi.useDpadFocus(this)) {
                    when (item.item.kind) {
                        HomeRailAdapter.HomeRailItem.KIND_MOVIE ->
                            loadMoviePlot(item.item.id, requestId, backdropRequestId)
                        HomeRailAdapter.HomeRailItem.KIND_SERIES ->
                            loadSeriesPlot(item.item.id, requestId, backdropRequestId)
                        HomeRailAdapter.HomeRailItem.KIND_LIVE -> Unit
                    }
                }
            }
        }
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
        if (DeviceUi.isCompact(this)) {
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
        val profile = PlaylistRepository.profile ?: return listOf(primary).filter { it.isNotBlank() }
        val base = HostUtils.baseUrl(profile.host).trimEnd('/')
        return buildList {
            if (primary.isNotBlank()) add(primary)
            if (contentId <= 0) return@buildList
            when (kind) {
                HomeRailAdapter.HomeRailItem.KIND_MOVIE -> {
                    add("$base/images/${contentId}.jpg")
                    add("$base/images/${contentId}.png")
                }
                HomeRailAdapter.HomeRailItem.KIND_SERIES -> {
                    add("$base/images/${contentId}.jpg")
                    add("$base/images/${contentId}.png")
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

    private fun loadMoviePlot(streamId: Int, requestId: Int, backdropRequestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            try {
                val info = withContext(Dispatchers.IO) { api.vodInfo(profile, streamId) }
                if (requestId != heroPlotRequestId || isDestroyed) return@launch
                if (info == null) return@launch
                if (info.name.isNotBlank()) heroTitle.text = info.name
                heroPlot.text = info.plot.ifBlank { getString(R.string.hero_plot_empty) }
                heroSubtitle.text = listOf(info.genre, info.releaseDate, info.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · ")
                val backdrop = info.backdrop.ifBlank { info.cover }
                applyHeroBackdrop(
                    backdrop = backdrop,
                    poster = info.cover,
                    backdropRequestId = backdropRequestId,
                    contentId = streamId,
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                )
            } catch (_: Exception) {
            }
        }
    }

    private fun loadSeriesPlot(seriesId: Int, requestId: Int, backdropRequestId: Int) {
        val profile = PlaylistRepository.profile ?: return
        lifecycleScope.launch {
            try {
                val detail = withContext(Dispatchers.IO) { api.seriesInfo(profile, seriesId) }
                if (requestId != heroPlotRequestId || isDestroyed) return@launch
                if (detail == null) return@launch
                if (detail.name.isNotBlank()) heroTitle.text = detail.name
                heroPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }
                heroSubtitle.text = listOf(detail.genre, detail.releaseDate, detail.rating)
                    .filter { it.isNotBlank() }
                    .joinToString(" · ")
                val backdrop = detail.backdrop.ifBlank { detail.cover }
                applyHeroBackdrop(
                    backdrop = backdrop,
                    poster = detail.cover,
                    backdropRequestId = backdropRequestId,
                    contentId = seriesId,
                    kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                )
            } catch (_: Exception) {
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
            heroHandler.postDelayed(heroRotateRunnable, 8000L)
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
        val cats = catalogCategoriesFor(tab)
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
            catalogCategoryHandler.removeCallbacksAndMessages(null)
            catalogCategoryFocusToken++
            applyCatalogCategory(tab, cat)
        }

        catalogCategoryList.adapter = CategoryAdapter(
            items = catalogCategories,
            selectedId = { selectedCatalogCategoryId },
            onClick = applyCategory,
            onFocus = if (DeviceUi.isCompact(this)) {
                null
            } else {
                { cat -> scheduleCatalogCategoryApply(tab, cat) }
            },
            onMoveRight = { focusFirstCatalogItem() },
            onMoveUp = { focusBottomTab(tab) },
        )
    }

    private fun scheduleCatalogCategoryApply(tab: Tab, cat: Category) {
        if (cat.id == selectedCatalogCategoryId) return
        catalogCategoryFocusToken++
        val token = catalogCategoryFocusToken
        pendingCatalogCategory?.let { catalogCategoryHandler.removeCallbacks(it) }
        val task = Runnable {
            if (token != catalogCategoryFocusToken || currentTab != tab) return@Runnable
            applyCatalogCategory(tab, cat)
        }
        pendingCatalogCategory = task
        catalogCategoryHandler.postDelayed(task, 250L)
    }

    private fun applyCatalogCategory(tab: Tab, cat: Category) {
        if (cat.id == selectedCatalogCategoryId) return
        withCatalogCategoryAccess(tab, cat) {
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

    private fun configureCatalogGrid() {
        val span = if (DeviceUi.isCompact(this)) 3 else 5
        catalogGrid.layoutManager = GridLayoutManager(this, span)
    }

    private fun catalogGridSpanCount(): Int =
        (catalogGrid.layoutManager as? GridLayoutManager)?.spanCount ?: 5

    private fun loadCatalogItems(tab: Tab, categoryId: String) {
        when (tab) {
            Tab.MOVIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> {
                    bindResumeMovies()
                    return
                }
                else -> PlaylistRepository.cachedVod(categoryId)?.let {
                    bindMovies(it)
                    return
                }
            }
            Tab.SERIES -> when (categoryId) {
                ResumeStore.RESUME_CATEGORY_ID -> {
                    bindResumeSeries()
                    return
                }
                else -> PlaylistRepository.cachedSeries(categoryId)?.let {
                    bindSeries(it)
                    return
                }
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

    private fun selectedCatalogCategoryName(): String =
        catalogCategories.firstOrNull { it.id == selectedCatalogCategoryId }?.name.orEmpty()

    private fun bindMovies(movies: List<VodMovie>) {
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
                ),
            )
        }
        updateCatalogGrid()
    }

    private fun bindSeries(series: List<SeriesItem>) {
        val cover = series.firstOrNull { it.cover.isNotBlank() }?.cover.orEmpty()
        bindCatalogHero(Tab.SERIES, selectedCatalogCategoryName(), cover)
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
        val categoryId = selectedCatalogCategoryId.orEmpty()
        when (tab) {
            Tab.MOVIES -> {
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
        if (selectedLiveCategoryId == ParentalControlStore.LOCK_CATEGORY_ID) {
            reloadChannels(keepCategoryFocus = true)
        } else {
            channelAdapter?.notifyDataSetChanged()
        }
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
                    if (channels.isEmpty()) return@post
                    channelList.scrollToPosition(0)
                    if (autoPreviewFirst || !keepCategoryFocus) {
                        channelList.post {
                            if (loadToken != channelsLoadToken || reloadingChannels) return@post
                            focusFirstChannel()
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
        previewToken++
        miniVlcPlayer?.stop()
        miniExoPlayer?.stop()
        previewingStreamId = null
        previewWorkingUrl = null
    }

    private fun releaseExoPreview() {
        val view = miniExoView
        miniExoPlayer?.let { player ->
            if (view != null) player.detach(view) else player.teardown()
            player.release()
        }
        miniExoPlayer = null
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

    /** Pausa el preview sin destruir libVLC/Exo (evita crash al volver en Android TV). */
    private fun suspendLivePreview() {
        if (!liveTabReady) return
        livePreviewPaused = true
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingPreview = null
        teardownLivePreviewPlayback()
        setPreviewVideoVisible(false)
        hideMiniPreviewControls()
    }

    private fun schedulePreview(channel: LiveChannel) {
        if (currentTab != Tab.LIVE || reloadingChannels) return
        livePreviewPaused = false
        withChannelAccess(channel) {
            schedulePreviewInternal(channel)
        }
    }

    private fun schedulePreviewInternal(channel: LiveChannel) {
        if (currentTab != Tab.LIVE || reloadingChannels) return
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
            teardownLivePreviewPlayback()
            ensurePreviewPlayer()
            setPreviewVideoVisible(false)
            panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.GONE
        }
        updatePreviewInfo(channel)
        val token = previewToken
        val delayMs = if (usesExoPreview()) 500L else 400L
        val task = Runnable {
            if (token == previewToken && !reloadingChannels && !livePreviewPaused) {
                previewChannel(channel, token)
            }
        }
        pendingPreview = task
        previewHandler.postDelayed(task, delayMs)
    }

    private fun updatePreviewInfo(channel: LiveChannel) {
        currentPreviewChannel = channel
        liveChannelStore.lastStreamId = channel.streamId
        liveChannelStore.lastCategoryId = selectedLiveCategoryId ?: ""
        previewTitle.text = channel.name
        previewLogo.visibility = View.VISIBLE
        ChannelIconHelper.load(previewLogo, channel)
        updatePreviewLockButton(channel)
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
        teardownLivePreviewPlayback()
    }

    private fun previewChannel(channel: LiveChannel, token: Int) {
        if (token != previewToken || livePreviewPaused) return
        val profile = PlaylistRepository.profile ?: return
        if (!ensurePreviewPlayer()) {
            livePanel().post {
                if (token == previewToken && !livePreviewPaused && ensurePreviewPlayer()) {
                    previewChannel(channel, token)
                }
            }
            return
        }
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
            panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.VISIBLE
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
        if (usesExoPreview()) {
            miniExoPlayer?.play(url, volume)
        } else {
            miniVlcPlayer?.play(url, volume)
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

    private fun setPreviewVideoVisible(visible: Boolean) {
        if (usesExoPreview()) {
            miniExoView?.alpha = if (visible) 1f else 0f
        } else {
            miniVlcView?.alpha = if (visible) 1f else 0f
        }
        if (!visible && currentPreviewChannel?.icon?.isNotEmpty() == true) {
            previewLogo.visibility = View.VISIBLE
        } else if (visible) {
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
        if (previewUrlIndex >= previewUrls.lastIndex) {
            panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.VISIBLE
            return false
        }
        previewUrlIndex += 1
        panelLive?.findViewById<View>(R.id.miniNoSignal)?.visibility = View.GONE
        if (!ensurePreviewPlayer()) return false
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
        withChannelAccess(channel) {
            openFullscreenInternal(channel)
        }
    }

    private fun openFullscreenInternal(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        LiveChannelNavigator.setPlaybackContext(this, channel, selectedLiveCategoryId)
        VolumeHelper.boostOnPlaybackStart(this)
        livePreviewPaused = true
        teardownLivePreviewPlayback()
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
            focused.id == R.id.btnChannelLock ||
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
        suspendLivePreview()
        stopHeroRotation()
    }

    override fun onResume() {
        super.onResume()
        if (currentTab == Tab.HOME && shouldFocusHomeRailsOnResume && DeviceUi.useDpadFocus(this)) {
            focusHeroOnStart()
        } else if (currentTab == Tab.LIVE) {
            ensureLiveTabReady()
            livePreviewPaused = false
            focusChannelAt(currentPreviewChannel)
            liveCategoryList.adapter?.let { (it as? CategoryAdapter)?.refreshSelection() }
            if (appSettings.autoplayPreview && currentPreviewChannel != null) {
                currentPreviewChannel?.let { schedulePreview(it) }
            }
        } else if (currentTab == Tab.MOVIES || currentTab == Tab.SERIES) {
            refreshCatalogResumeCategory(currentTab)
            (catalogCategoryList.adapter as? CategoryAdapter)?.refreshSelection()
        }
    }

    override fun onDestroy() {
        pendingPreview?.let { previewHandler.removeCallbacks(it) }
        pendingLiveCategory?.let { liveCategoryHandler.removeCallbacks(it) }
        pendingCatalogCategory?.let { catalogCategoryHandler.removeCallbacks(it) }
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
        miniExoView = panel.findViewById(R.id.miniExoPlayer)
        miniVlcView = null
        // Exo para preview en TV y móvil; VLC solo en pantalla completa.
        previewUsesExo = miniExoView != null
        miniExoView?.alpha = 0f
        miniVlcView?.alpha = 0f
    }

    /** Crea el reproductor de preview bajo demanda cuando el panel Live está visible. */
    private fun ensurePreviewPlayer(): Boolean {
        if (currentTab != Tab.LIVE || livePanel().visibility != View.VISIBLE) return false
        if (usesExoPreview()) {
            if (miniExoPlayer == null) {
                createMiniExoPlayer()
            }
            return miniExoPlayer != null
        }
        if (miniVlcPlayer != null) return true
        val videoLayout = miniVlcView ?: return false
        if (!videoLayout.isAttachedToWindow || videoLayout.width <= 0) return false
        try {
            recreateMiniVlcPlayer()
        } catch (_: Exception) {
            miniVlcPlayer = null
        }
        return miniVlcPlayer != null
    }

    private fun createMiniExoPlayer() {
        if (miniExoPlayer != null) return
        val playerView = miniExoView ?: return
        val noSignal = livePanel().findViewById<View>(R.id.miniNoSignal)
        miniExoPlayer = LiveExoPreviewPlayer(
            context = this,
            playerView = playerView,
            onError = {
                setPreviewVideoVisible(false)
                if (!tryNextPreviewUrl()) {
                    noSignal.visibility = View.VISIBLE
                }
            },
            onPlaying = {
                if (previewPlaybackToken != previewToken) return@LiveExoPreviewPlayer
                if (previewUrlIndex in previewUrls.indices) {
                    previewWorkingUrl = previewUrls[previewUrlIndex]
                }
                setPreviewVideoVisible(true)
                noSignal.visibility = View.GONE
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

package com.gadir.tv.ui.search

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import android.view.inputmethod.EditorInfo
import android.view.inputmethod.InputMethodManager
import android.widget.EditText
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.data.ParentalSession
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.model.VodMovie
import com.gadir.tv.ui.main.HomeRailAdapter
import com.gadir.tv.ui.movie.MovieDetailActivity
import com.gadir.tv.player.LiveChannelNavigator
import com.gadir.tv.player.LiveStreamUrls
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.ui.series.SeriesDetailActivity
import com.gadir.tv.ui.settings.ParentalPinDialog
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.RecyclerViewUtil
import com.gadir.tv.util.TvFocusHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SearchActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var parentalStore: ParentalControlStore
    private val debounceHandler = Handler(Looper.getMainLooper())
    private var debounceRunnable: Runnable? = null
    private var searchToken = 0

    private lateinit var searchInput: EditText
    private lateinit var searchLoading: TextView
    private lateinit var searchEmpty: TextView
    private lateinit var channelsTitle: TextView
    private lateinit var moviesTitle: TextView
    private lateinit var seriesTitle: TextView
    private lateinit var channelsResults: RecyclerView
    private lateinit var moviesResults: RecyclerView
    private lateinit var seriesResults: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_search)
        parentalStore = ParentalControlStore(this)

        val profile = PlaylistRepository.profile
        if (profile == null) {
            finish()
            return
        }

        searchInput = findViewById(R.id.searchInput)
        searchLoading = findViewById(R.id.searchLoading)
        searchEmpty = findViewById(R.id.searchEmpty)
        channelsTitle = findViewById(R.id.channelsTitle)
        moviesTitle = findViewById(R.id.moviesTitle)
        seriesTitle = findViewById(R.id.seriesTitle)
        channelsResults = findViewById(R.id.channelsResults)
        moviesResults = findViewById(R.id.moviesResults)
        seriesResults = findViewById(R.id.seriesResults)

        channelsResults.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        moviesResults.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seriesResults.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)

        findViewById<TextView>(R.id.btnBack).also { btnBack ->
            btnBack.setOnClickListener { finish() }
            TvFocusHelper.bindButton(btnBack) { finish() }
        }

        searchInput.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus && DeviceUi.useDpadFocus(this)) {
                searchInput.post { showKeyboard(searchInput) }
            }
        }

        searchInput.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = Unit
            override fun afterTextChanged(s: Editable?) {
                scheduleSearch(s?.toString().orEmpty())
            }
        })
        searchInput.setOnEditorActionListener { _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_SEARCH) {
                debounceRunnable?.let { debounceHandler.removeCallbacks(it) }
                runSearch(searchInput.text?.toString().orEmpty())
                hideKeyboard()
                true
            } else {
                false
            }
        }
        searchInput.setOnClickListener {
            searchInput.requestFocus()
            showKeyboard(searchInput)
        }

        searchLoading.visibility = View.VISIBLE
        lifecycleScope.launch {
            try {
                withContext(Dispatchers.IO) {
                    SearchRepository.ensureIndex(api, profile)
                }
            } catch (_: Exception) {
            }
            if (isDestroyed) return@launch
            searchLoading.visibility = View.GONE
            searchInput.requestFocus()
            if (DeviceUi.useDpadFocus(this@SearchActivity)) {
                searchInput.post { showKeyboard(searchInput) }
            }
        }
    }

    override fun dispatchKeyEvent(event: android.view.KeyEvent): Boolean {
        if (event.action == android.view.KeyEvent.ACTION_DOWN &&
            event.keyCode == android.view.KeyEvent.KEYCODE_SEARCH
        ) {
            searchInput.requestFocus()
            showKeyboard(searchInput)
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    private fun scheduleSearch(query: String) {
        debounceRunnable?.let { debounceHandler.removeCallbacks(it) }
        debounceRunnable = Runnable { runSearch(query) }
        debounceHandler.postDelayed(debounceRunnable!!, 250L)
    }

    private fun runSearch(query: String) {
        val token = ++searchToken
        lifecycleScope.launch {
            val results = withContext(Dispatchers.Default) {
                runCatching { SearchRepository.search(query) }
                    .getOrDefault(SearchRepository.Results())
            }
            if (token != searchToken || isDestroyed) return@launch
            bindResults(query, results)
        }
    }

    private fun bindResults(query: String, results: SearchRepository.Results) {
        val hasQuery = query.trim().isNotEmpty()
        val hasResults = results.channels.isNotEmpty() ||
            results.movies.isNotEmpty() ||
            results.series.isNotEmpty()

        searchEmpty.visibility = if (hasQuery && !hasResults) View.VISIBLE else View.GONE

        bindSection(
            title = channelsTitle,
            list = channelsResults,
            visible = results.channels.isNotEmpty(),
            items = results.channels.map { channel ->
                HomeRailAdapter.HomeRailItem(
                    id = channel.streamId,
                    title = channel.name,
                    imageUrl = channel.icon,
                    badge = getString(R.string.tab_live),
                    kind = HomeRailAdapter.HomeRailItem.KIND_LIVE,
                )
            },
            onClick = { item ->
                val channel = results.channels.firstOrNull { it.streamId == item.id } ?: return@bindSection
                withChannelAccess(channel) { playChannel(channel) }
            },
        )

        bindSection(
            title = moviesTitle,
            list = moviesResults,
            visible = results.movies.isNotEmpty(),
            items = results.movies.map { movie ->
                HomeRailAdapter.HomeRailItem(
                    id = movie.streamId,
                    title = movie.name,
                    imageUrl = movie.icon,
                    badge = getString(R.string.hero_type_movie),
                    kind = HomeRailAdapter.HomeRailItem.KIND_MOVIE,
                    extension = movie.extension,
                )
            },
            onClick = { item ->
                val movie = results.movies.firstOrNull { it.streamId == item.id } ?: return@bindSection
                withMovieAccess(movie) {
                    startActivity(MovieDetailActivity.intent(this, movie))
                }
            },
        )

        bindSection(
            title = seriesTitle,
            list = seriesResults,
            visible = results.series.isNotEmpty(),
            items = results.series.map { series ->
                HomeRailAdapter.HomeRailItem(
                    id = series.seriesId,
                    title = series.name,
                    imageUrl = series.cover,
                    badge = getString(R.string.hero_type_series),
                    kind = HomeRailAdapter.HomeRailItem.KIND_SERIES,
                )
            },
            onClick = { item ->
                val series = results.series.firstOrNull { it.seriesId == item.id } ?: return@bindSection
                withSeriesAccess(series) { openSeries(series) }
            },
        )
    }

    private fun bindSection(
        title: TextView,
        list: RecyclerView,
        visible: Boolean,
        items: List<HomeRailAdapter.HomeRailItem>,
        onClick: (HomeRailAdapter.HomeRailItem) -> Unit,
    ) {
        title.visibility = if (visible) View.VISIBLE else View.GONE
        list.visibility = if (visible) View.VISIBLE else View.GONE
        if (!visible) return
        list.adapter = HomeRailAdapter(items = items, onClick = onClick)
        RecyclerViewUtil.expandHorizontalList(list)
        if (DeviceUi.useDpadFocus(this)) {
            list.isFocusable = false
            list.descendantFocusability = android.view.ViewGroup.FOCUS_AFTER_DESCENDANTS
        }
    }

    private fun withChannelAccess(channel: LiveChannel, action: () -> Unit) {
        if (!parentalStore.requiresPinForChannel(channel, channel.categoryId)) {
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

    private fun withMovieAccess(movie: VodMovie, action: () -> Unit) {
        if (!parentalStore.requiresPinForMovie(movie)) {
            action()
            return
        }
        ParentalPinDialog.show(
            this,
            getString(R.string.parental_pin_content, movie.name),
            onVerified = {
                if (movie.categoryId.isNotBlank()) {
                    ParentalSession.unlock(ParentalSession.vodCategoryKey(movie.categoryId))
                }
                action()
            },
        )
    }

    private fun withSeriesAccess(series: SeriesItem, action: () -> Unit) {
        if (!parentalStore.requiresPinForSeriesItem(series)) {
            action()
            return
        }
        ParentalPinDialog.show(
            this,
            getString(R.string.parental_pin_content, series.name),
            onVerified = {
                if (series.categoryId.isNotBlank()) {
                    ParentalSession.unlock(ParentalSession.seriesCategoryKey(series.categoryId))
                }
                action()
            },
        )
    }

    private fun playChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        LiveChannelNavigator.setPlaybackContext(this, channel, channel.categoryId)
        val urls = LiveStreamUrls.candidates(api, profile, channel)
        val url = urls.firstOrNull().orEmpty()
        if (url.isBlank()) return
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = channel.name,
                url = url,
                kind = com.gadir.tv.data.ResumeStore.KIND_LIVE,
                contentId = channel.streamId.toString(),
                imageUrl = channel.icon,
                streamId = channel.streamId,
                epgChannelId = channel.epgChannelId,
                extension = channel.extension,
                alternateUrls = urls.drop(1),
            ),
        )
    }

    private fun openSeries(series: SeriesItem) {
        startActivity(SeriesDetailActivity.intent(this, series))
    }

    private fun showKeyboard(target: View) {
        val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
        imm.showSoftInput(target, InputMethodManager.SHOW_IMPLICIT)
    }

    private fun hideKeyboard() {
        val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
        imm.hideSoftInputFromWindow(searchInput.windowToken, 0)
    }

    override fun onDestroy() {
        debounceRunnable?.let { debounceHandler.removeCallbacks(it) }
        super.onDestroy()
    }
}

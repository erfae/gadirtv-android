package com.gadir.tv.ui.search

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LiveChannel
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.ui.main.HomeRailAdapter
import com.gadir.tv.ui.movie.MovieDetailActivity
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.ui.series.SeriesDetailActivity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SearchActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private val debounceHandler = Handler(Looper.getMainLooper())
    private var debounceRunnable: Runnable? = null

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

        findViewById<TextView>(R.id.btnBack).setOnClickListener { finish() }

        searchInput.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = Unit
            override fun afterTextChanged(s: Editable?) {
                scheduleSearch(s?.toString().orEmpty())
            }
        })

        searchLoading.visibility = View.VISIBLE
        lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                SearchRepository.ensureIndex(api, profile)
            }
            searchLoading.visibility = View.GONE
            searchInput.requestFocus()
        }
    }

    private fun scheduleSearch(query: String) {
        debounceRunnable?.let { debounceHandler.removeCallbacks(it) }
        debounceRunnable = Runnable { runSearch(query) }
        debounceHandler.postDelayed(debounceRunnable!!, 250L)
    }

    private fun runSearch(query: String) {
        val results = SearchRepository.search(query)
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
                playChannel(channel)
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
                startActivity(MovieDetailActivity.intent(this, movie))
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
                openSeries(series)
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
    }

    private fun playChannel(channel: LiveChannel) {
        val profile = PlaylistRepository.profile ?: return
        val url = api.streamUrl(profile, channel.streamId)
        PlaybackLauncher.play(
            context = this,
            request = PlaybackRequest(
                title = channel.name,
                url = url,
                kind = com.gadir.tv.data.ResumeStore.KIND_LIVE,
                contentId = channel.streamId.toString(),
                imageUrl = channel.icon,
                streamId = channel.streamId,
            ),
        )
    }

    private fun openSeries(series: SeriesItem) {
        startActivity(SeriesDetailActivity.intent(this, series))
    }

    override fun onDestroy() {
        debounceRunnable?.let { debounceHandler.removeCallbacks(it) }
        super.onDestroy()
    }
}

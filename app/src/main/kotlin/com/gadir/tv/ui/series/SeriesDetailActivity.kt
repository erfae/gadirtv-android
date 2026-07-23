package com.gadir.tv.ui.series

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.PlotCache
import com.gadir.tv.data.SeriesDetailCache
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.SeriesDetail
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.player.VodStreamUrls
import com.gadir.tv.ui.detail.VodDetailUi
import com.gadir.tv.ui.detail.DetailTvNav
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.RecyclerViewUtil
import com.gadir.tv.util.TrailerLauncher
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.TvNavHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SeriesDetailActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private lateinit var favoritesStore: FavoritesStore
    private var seasons: Map<String, List<SeriesEpisode>> = emptyMap()
    private var selectedSeason: String? = null
    private var fallbackCover = ""
    private var seriesName = ""
    private var seriesId = 0
    private var addedTimestamp = 0L
    private var trailerUrl = ""
    private var loadToken = 0
    private var seasonAdapter: SeasonAdapter? = null

    private lateinit var seasonList: RecyclerView
    private lateinit var episodeList: RecyclerView
    private lateinit var castList: RecyclerView
    private lateinit var loadingView: View
    private lateinit var btnSeriesPlay: TextView
    private lateinit var btnSeriesTrailer: TextView
    private lateinit var btnSeriesFavorite: ImageView
    private lateinit var seriesPlot: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_series_detail)

        resumeStore = ResumeStore(this)
        favoritesStore = FavoritesStore(this)
        seriesId = intent.getIntExtra(EXTRA_SERIES_ID, 0)
        seriesName = intent.getStringExtra(EXTRA_SERIES_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_SERIES_COVER).orEmpty()
        addedTimestamp = intent.getLongExtra(EXTRA_ADDED, 0L)

        findViewById<TextView>(R.id.seriesTitle).text = seriesName
        seriesPlot = findViewById(R.id.seriesPlot)
        btnSeriesPlay = findViewById(R.id.btnSeriesPlay)
        btnSeriesTrailer = findViewById(R.id.btnSeriesTrailer)
        btnSeriesFavorite = findViewById(R.id.btnSeriesFavorite)
        castList = findViewById(R.id.seriesCastList)
        btnSeriesPlay.setOnClickListener { playFirstEpisode() }
        TvFocusHelper.bindButton(btnSeriesPlay, onActivate = { playFirstEpisode() }, onMoveDown = {
            if (DeviceUi.useDpadFocus(this)) focusSeasonList()
        })
        TvFocusHelper.bindButton(btnSeriesTrailer, onActivate = { openTrailer() }, onMoveDown = {
            if (DeviceUi.useDpadFocus(this)) focusSeasonList()
        })
        bindFavoriteButton()
        findViewById<ImageView>(R.id.btnSeriesBack).apply {
            setOnClickListener { finish() }
            setOnKeyListener { _, keyCode, event ->
                if (event.action == android.view.KeyEvent.ACTION_DOWN &&
                    (keyCode == android.view.KeyEvent.KEYCODE_DPAD_CENTER ||
                        keyCode == android.view.KeyEvent.KEYCODE_ENTER)
                ) {
                    finish()
                    true
                } else {
                    false
                }
            }
        }
        VodDetailUi.bindAddedDate(findViewById(R.id.seriesAddedDate), addedTimestamp)
        if (fallbackCover.isNotEmpty()) {
            VodDetailUi.bindImages(
                posterView = findViewById(R.id.seriesPoster),
                backdropView = findViewById(R.id.seriesBackdrop),
                poster = fallbackCover,
                backdrop = fallbackCover,
                contentId = seriesId,
            )
        }
        applyPlotCache()
        if (seriesPlot.text.isNullOrBlank()) {
            seriesPlot.text = getString(R.string.hero_plot_loading)
        }

        seasonList = findViewById(R.id.seasonList)
        episodeList = findViewById(R.id.episodeList)
        loadingView = findViewById(R.id.seriesLoading)

        seasonList.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        seasonList.isNestedScrollingEnabled = true
        episodeList.layoutManager = LinearLayoutManager(this)

        val btnReload = findViewById<TextView>(R.id.btnSeriesReload)
        TvFocusHelper.bindButton(btnReload) { loadSeriesDetail() }

        if (PlaylistRepository.profile == null || seriesId <= 0) {
            finish()
            return
        }

        loadSeriesDetail()
    }

    private fun bindFavoriteButton() {
        VodDetailUi.updateFavoriteButton(
            btnSeriesFavorite,
            favoritesStore.isFavorite(FavoritesStore.KIND_SERIES, seriesId),
        )
        btnSeriesFavorite.setOnClickListener {
            favoritesStore.toggle(FavoritesStore.KIND_SERIES, seriesId)
            VodDetailUi.updateFavoriteButton(
                btnSeriesFavorite,
                favoritesStore.isFavorite(FavoritesStore.KIND_SERIES, seriesId),
            )
        }
    }

    private fun openTrailer() {
        if (trailerUrl.isBlank()) return
        TrailerLauncher.open(this, trailerUrl, findViewById<TextView>(R.id.seriesTitle).text.toString())
    }

    private fun applyPlotCache() {
        val cached = PlotCache.get("series", seriesId) ?: return
        if (cached.title.isNotBlank()) {
            findViewById<TextView>(R.id.seriesTitle).text = cached.title
        }
        if (cached.plot.isNotBlank()) {
            seriesPlot.text = cached.plot
        }
        val backdrop = cached.backdrop.ifBlank { cached.poster }.ifBlank { fallbackCover }
        val poster = cached.poster.ifBlank { fallbackCover }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
        }
        VodDetailUi.bindImages(
            posterView = findViewById(R.id.seriesPoster),
            backdropView = findViewById(R.id.seriesBackdrop),
            poster = poster,
            backdrop = backdrop,
            contentId = seriesId,
        )
        btnSeriesPlay.visibility = View.VISIBLE
    }

    private fun loadSeriesDetail() {
        val profile = PlaylistRepository.profile
        if (profile == null || seriesId <= 0) {
            seriesPlot.text = getString(R.string.series_load_failed)
            btnSeriesPlay.requestFocus()
            return
        }
        val token = ++loadToken
        val cachedDetail = SeriesDetailCache.get(seriesId)
        val hasCached = cachedDetail != null || PlotCache.get("series", seriesId) != null
        loadingView.visibility = if (hasCached) View.GONE else View.VISIBLE
        episodeList.visibility = View.VISIBLE
        seasonList.visibility = View.VISIBLE
        btnSeriesPlay.visibility = View.VISIBLE
        if (cachedDetail != null) {
            bindDetail(cachedDetail)
        }

        lifecycleScope.launch {
            val detail = runCatching {
                withContext(Dispatchers.IO) {
                    api.seriesInfo(profile, seriesId)
                }
            }.getOrNull()
            if (token != loadToken) return@launch
            loadingView.visibility = View.GONE
            if (detail == null) {
                if (cachedDetail == null) {
                    resolvePlotLoadingState(failed = PlotCache.get("series", seriesId) == null)
                    btnSeriesPlay.requestFocus()
                }
                scheduleSeriesDetailRetry(token)
                return@launch
            }
            SeriesDetailCache.put(seriesId, detail)
            bindDetail(detail)
        }
    }

    private fun scheduleSeriesDetailRetry(token: Int) {
        if (SeriesDetailCache.get(seriesId) != null) return
        lifecycleScope.launch {
            kotlinx.coroutines.delay(2_500L)
            if (token != loadToken || SeriesDetailCache.get(seriesId) != null) return@launch
            loadSeriesDetail()
        }
    }

    private fun resolvePlotLoadingState(failed: Boolean) {
        if (seriesPlot.text?.toString() != getString(R.string.hero_plot_loading)) return
        seriesPlot.text = if (failed) {
            getString(R.string.series_load_failed)
        } else {
            getString(R.string.hero_plot_empty)
        }
    }

    private fun bindDetail(detail: SeriesDetail) {
        val title = VodDetailUi.formatTitle(detail.name.ifEmpty { seriesName }, detail.releaseDate)
        findViewById<TextView>(R.id.seriesTitle).text = title
        VodDetailUi.bindReleaseDate(findViewById(R.id.seriesReleaseDate), detail.releaseDate)
        VodDetailUi.bindRating(
            findViewById(R.id.seriesRatingStars),
            findViewById(R.id.seriesRatingValue),
            detail.rating,
        )
        VodDetailUi.bindGenre(findViewById(R.id.seriesGenre), detail.genre)
        VodDetailUi.bindAddedDate(findViewById(R.id.seriesAddedDate), addedTimestamp)
        seriesPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }

        VodDetailUi.bindCast(
            labelView = findViewById(R.id.seriesCastLabel),
            listView = castList,
            castMembers = detail.castMembers,
            fallbackCast = detail.cast,
            onCastMoveUp = { btnSeriesPlay.requestFocus() },
            onCastMoveDown = { focusSeasonList() },
        )

        val backdrop = detail.backdrop.ifBlank { detail.cover.ifBlank { fallbackCover } }
        val poster = detail.cover.ifBlank { fallbackCover }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
        }
        VodDetailUi.bindImages(
            posterView = findViewById(R.id.seriesPoster),
            backdropView = findViewById(R.id.seriesBackdrop),
            poster = poster,
            backdrop = backdrop,
            contentId = seriesId,
        )
        trailerUrl = detail.trailerUrl
        btnSeriesTrailer.visibility = if (trailerUrl.isNotBlank()) View.VISIBLE else View.GONE
        PlotCache.put(
            "series",
            seriesId,
            PlotCache.Entry(
                plot = detail.plot,
                backdrop = detail.backdrop,
                poster = detail.cover.ifBlank { fallbackCover },
                title = detail.name.ifEmpty { seriesName },
            ),
        )
        SeriesDetailCache.put(seriesId, detail)

        seasons = detail.seasons
        val keys = seasons.keys.sortedBy { it.toIntOrNull() ?: Int.MAX_VALUE }
        if (keys.isEmpty()) {
            seriesPlot.text = getString(R.string.hero_plot_empty)
            seasonList.visibility = View.GONE
            episodeList.visibility = View.GONE
            btnSeriesPlay.visibility = View.GONE
            return
        }

        btnSeriesPlay.visibility = View.VISIBLE
        if (selectedSeason == null || selectedSeason !in keys) {
            selectedSeason = keys.first()
        }

        seasonList.visibility = View.VISIBLE
        episodeList.visibility = View.VISIBLE
        seasonAdapter = SeasonAdapter(
            seasons = keys,
            selectedSeason = selectedSeason,
            onClick = { season ->
                selectedSeason = season
                seasonAdapter?.setSelectedSeason(season)
                reloadEpisodes()
            },
            onMoveUp = { focusCastList() },
            onMoveDown = { focusEpisodeList() },
        ).also { adapter ->
            seasonList.adapter = adapter
            RecyclerViewUtil.expandHorizontalList(seasonList)
        }
        reloadEpisodes()
        if (!DeviceUi.isCompact(this)) {
            btnSeriesPlay.requestFocus()
        }
    }

    private fun playFirstEpisode() {
        val season = selectedSeason ?: seasons.keys.sortedBy { it.toIntOrNull() ?: Int.MAX_VALUE }.firstOrNull()
        val episode = season?.let { seasons[it]?.minByOrNull { ep -> ep.episodeNum } }
        if (episode != null) {
            playEpisode(episode)
            return
        }
        android.widget.Toast.makeText(
            this,
            R.string.series_load_failed,
            android.widget.Toast.LENGTH_SHORT,
        ).show()
        loadSeriesDetail()
    }

    private fun focusCastList() {
        if (castList.visibility == View.VISIBLE && (castList.adapter?.itemCount ?: 0) > 0) {
            DetailTvNav.focusFirst(castList)
        } else {
            btnSeriesPlay.requestFocus()
        }
    }

    private fun focusSeasonList() {
        if (seasonList.visibility == View.VISIBLE && (seasonList.adapter?.itemCount ?: 0) > 0) {
            val index = seasonAdapter?.selectedIndex() ?: 0
            TvNavHelper.focusItem(seasonList, index)
        } else {
            focusEpisodeList()
        }
    }

    private fun focusEpisodeList() {
        if (episodeList.visibility == View.VISIBLE && (episodeList.adapter?.itemCount ?: 0) > 0) {
            DetailTvNav.focusFirst(episodeList)
        }
    }

    private fun reloadEpisodes() {
        val season = selectedSeason ?: return
        val eps = seasons[season].orEmpty()
        episodeList.adapter = EpisodeAdapter(
            items = eps,
            fallbackCover = fallbackCover,
            onClick = { ep -> playEpisode(ep) },
            onMoveUp = { focusSeasonList() },
        )
        RecyclerViewUtil.expandInScrollView(episodeList)
    }

    private fun playEpisode(ep: SeriesEpisode) {
        val profile = PlaylistRepository.profile
        if (profile == null) {
            android.widget.Toast.makeText(this, R.string.series_playback_failed, android.widget.Toast.LENGTH_LONG).show()
            return
        }
        val title = "${seriesName.ifBlank { ep.title }} — ${ep.season}x${ep.episodeNum}"
        val urls = VodStreamUrls.seriesCandidates(api, profile, ep.id, ep.extension, ep.directSource)
        val url = urls.firstOrNull().orEmpty()
        if (url.isBlank()) {
            android.widget.Toast.makeText(this, R.string.series_playback_failed, android.widget.Toast.LENGTH_LONG).show()
            return
        }
        val image = ep.image.ifEmpty { fallbackCover }
        ResumePlaybackHelper.play(
            context = this,
            resumeStore = resumeStore,
            request = PlaybackRequest(
                title = title,
                url = url,
                kind = com.gadir.tv.data.ResumeStore.KIND_SERIES,
                contentId = ep.id.toString(),
                imageUrl = image,
                extension = ep.extension,
                alternateUrls = urls.drop(1),
            ),
        )
    }

    private class SeasonAdapter(
        private val seasons: List<String>,
        selectedSeason: String?,
        private val onClick: (String) -> Unit,
        private val onMoveUp: (() -> Unit)? = null,
        private val onMoveDown: (() -> Unit)? = null,
    ) : RecyclerView.Adapter<SeasonAdapter.Holder>() {
        private var selected = seasons.indexOf(selectedSeason).coerceAtLeast(0)

        fun selectedIndex(): Int = selected

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val label: TextView = view.findViewById(R.id.seasonLabel)
        }

        fun setSelectedSeason(season: String) {
            val index = seasons.indexOf(season)
            if (index < 0) return
            val old = selected
            selected = index
            notifyItemChanged(old)
            notifyItemChanged(selected)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_season_chip, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val season = seasons[position]
            holder.label.text = holder.itemView.context.getString(R.string.season_label, season)
            holder.itemView.isSelected = position == selected
            holder.itemView.setOnClickListener {
                val pos = holder.bindingAdapterPosition
                if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
                val old = selected
                selected = pos
                notifyItemChanged(old)
                notifyItemChanged(selected)
                onClick(seasons[pos])
            }
            val list = holder.itemView.parent as? RecyclerView
            if (list != null) {
                DetailTvNav.wireHorizontalItem(
                    itemView = holder.itemView,
                    list = list,
                    position = position,
                    itemCount = seasons.size,
                    onUp = onMoveUp,
                    onDown = onMoveDown,
                )
            }
        }

        override fun getItemCount(): Int = seasons.size
    }

    private class EpisodeAdapter(
        private val items: List<SeriesEpisode>,
        private val fallbackCover: String,
        private val onClick: (SeriesEpisode) -> Unit,
        private val onMoveUp: (() -> Unit)? = null,
    ) : RecyclerView.Adapter<EpisodeAdapter.Holder>() {

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val thumb: ImageView = view.findViewById(R.id.episodeThumb)
            val title: TextView = view.findViewById(R.id.episodeTitle)
            val plot: TextView = view.findViewById(R.id.episodePlot)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_episode, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val item = items[position]
            val label = if (item.title.isNotEmpty()) {
                "${item.episodeNum}. ${item.title}"
            } else {
                holder.itemView.context.getString(R.string.episode_label, item.episodeNum)
            }
            holder.title.text = label
            holder.plot.text = item.plot
            val img = item.image.ifEmpty { fallbackCover }
            if (img.isNotEmpty()) {
                ImageLoader.loadPoster(holder.thumb, img, 160, 90)
            } else {
                holder.thumb.setImageResource(R.drawable.tv_banner)
            }
            holder.itemView.setOnClickListener { onClick(item) }
            val list = holder.itemView.parent as? RecyclerView
            if (list != null) {
                DetailTvNav.wireVerticalItem(
                    itemView = holder.itemView,
                    list = list,
                    position = position,
                    itemCount = items.size,
                    onUp = onMoveUp,
                )
            }
        }

        override fun getItemCount(): Int = items.size
    }

    companion object {
        private const val EXTRA_SERIES_ID = "series_id"
        private const val EXTRA_SERIES_NAME = "series_name"
        private const val EXTRA_SERIES_COVER = "series_cover"
        private const val EXTRA_ADDED = "added"

        fun intent(context: Context, series: SeriesItem): Intent =
            Intent(context, SeriesDetailActivity::class.java)
                .putExtra(EXTRA_SERIES_ID, series.seriesId)
                .putExtra(EXTRA_SERIES_NAME, series.name)
                .putExtra(EXTRA_SERIES_COVER, series.cover)
                .putExtra(EXTRA_ADDED, series.added)
    }
}

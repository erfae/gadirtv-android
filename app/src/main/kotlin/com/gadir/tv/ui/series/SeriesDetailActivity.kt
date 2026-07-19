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
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.PlotCache
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.SeriesDetail
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.player.VodStreamUrls
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.RecyclerViewUtil
import com.gadir.tv.util.TvFocusHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout

class SeriesDetailActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private var seasons: Map<String, List<SeriesEpisode>> = emptyMap()
    private var selectedSeason: String? = null
    private var fallbackCover = ""
    private var seriesName = ""
    private var seriesId = 0
    private var loadToken = 0
    private var seasonAdapter: SeasonAdapter? = null

    private lateinit var seasonList: RecyclerView
    private lateinit var episodeList: RecyclerView
    private lateinit var loadingView: View
    private lateinit var btnSeriesPlay: TextView
    private lateinit var seriesPlot: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_series_detail)

        resumeStore = ResumeStore(this)
        seriesId = intent.getIntExtra(EXTRA_SERIES_ID, 0)
        seriesName = intent.getStringExtra(EXTRA_SERIES_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_SERIES_COVER).orEmpty()

        findViewById<TextView>(R.id.seriesTitle).text = seriesName
        seriesPlot = findViewById(R.id.seriesPlot)
        btnSeriesPlay = findViewById(R.id.btnSeriesPlay)
        btnSeriesPlay.setOnClickListener { playFirstEpisode() }
        if (fallbackCover.isNotEmpty()) {
            ImageLoader.loadPoster(findViewById(R.id.seriesPoster), fallbackCover, 280, 420)
            ImageLoader.loadPoster(findViewById(R.id.seriesBackdrop), fallbackCover)
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
        if (backdrop.isNotEmpty()) {
            ImageLoader.loadPoster(findViewById(R.id.seriesBackdrop), backdrop)
        }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
            ImageLoader.loadPoster(findViewById(R.id.seriesPoster), poster, 280, 420)
        }
        btnSeriesPlay.visibility = View.VISIBLE
    }

    private fun loadSeriesDetail() {
        val token = ++loadToken
        val hasCached = PlotCache.get("series", seriesId) != null || fallbackCover.isNotEmpty()
        if (!hasCached) {
            loadingView.visibility = View.VISIBLE
            episodeList.visibility = View.GONE
            seasonList.visibility = View.GONE
            btnSeriesPlay.visibility = View.GONE
        }

        lifecycleScope.launch {
            val detail = try {
                withContext(Dispatchers.IO) {
                    withTimeout(20_000L) {
                        api.seriesInfo(PlaylistRepository.profile!!, seriesId)
                    }
                }
            } catch (_: Exception) {
                null
            }
            if (token != loadToken) return@launch
            loadingView.visibility = View.GONE
            if (detail == null) {
                if (PlotCache.get("series", seriesId) == null) {
                    seriesPlot.text = getString(R.string.series_load_failed)
                }
                btnSeriesPlay.visibility = View.VISIBLE
                btnSeriesPlay.requestFocus()
                seasonList.visibility = View.GONE
                episodeList.visibility = View.GONE
                return@launch
            }
            bindDetail(detail)
        }
    }

    private fun bindDetail(detail: SeriesDetail) {
        findViewById<TextView>(R.id.seriesTitle).text = detail.name.ifEmpty { seriesName }
        val meta = buildList {
            if (detail.releaseDate.isNotEmpty()) add(detail.releaseDate.take(4))
            if (detail.genre.isNotEmpty()) add(detail.genre)
            if (detail.rating.isNotEmpty()) add("★ ${detail.rating}")
        }.joinToString(" · ")
        findViewById<TextView>(R.id.seriesMeta).text = meta
        seriesPlot.text = detail.plot.ifBlank { getString(R.string.hero_plot_empty) }

        val castView = findViewById<TextView>(R.id.seriesCast)
        if (detail.cast.isNotBlank()) {
            castView.visibility = View.VISIBLE
            castView.text = getString(R.string.movie_cast, detail.cast)
        } else {
            castView.visibility = View.GONE
        }

        val backdrop = detail.backdrop.ifBlank { detail.cover.ifBlank { fallbackCover } }
        if (backdrop.isNotEmpty()) {
            ImageLoader.loadPoster(findViewById(R.id.seriesBackdrop), backdrop)
        }
        val poster = detail.cover.ifBlank { fallbackCover }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
            ImageLoader.loadPoster(findViewById(R.id.seriesPoster), poster, 280, 420)
        }
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
        seasonAdapter = SeasonAdapter(keys, selectedSeason) { season ->
            selectedSeason = season
            seasonAdapter?.setSelectedSeason(season)
            reloadEpisodes()
        }.also { adapter ->
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
        }
    }

    private fun reloadEpisodes() {
        val season = selectedSeason ?: return
        val eps = seasons[season].orEmpty()
        episodeList.adapter = EpisodeAdapter(eps, fallbackCover) { ep ->
            playEpisode(ep)
        }
        if (findViewById<View?>(R.id.seriesScroll) != null) {
            RecyclerViewUtil.expandInScrollView(episodeList)
        }
    }

    private fun playEpisode(ep: SeriesEpisode) {
        val profile = PlaylistRepository.profile ?: return
        val title = "${seriesName.ifBlank { ep.title }} — ${ep.season}x${ep.episodeNum}"
        val urls = VodStreamUrls.seriesCandidates(api, profile, ep.id, ep.extension)
        val url = urls.firstOrNull().orEmpty()
        if (url.isBlank()) return
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
    ) : RecyclerView.Adapter<SeasonAdapter.Holder>() {
        private var selected = seasons.indexOf(selectedSeason).coerceAtLeast(0)

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
        }

        override fun getItemCount(): Int = seasons.size
    }

    private class EpisodeAdapter(
        private val items: List<SeriesEpisode>,
        private val fallbackCover: String,
        private val onClick: (SeriesEpisode) -> Unit,
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
        }

        override fun getItemCount(): Int = items.size
    }

    companion object {
        private const val EXTRA_SERIES_ID = "series_id"
        private const val EXTRA_SERIES_NAME = "series_name"
        private const val EXTRA_SERIES_COVER = "series_cover"

        fun intent(context: Context, series: SeriesItem): Intent =
            Intent(context, SeriesDetailActivity::class.java)
                .putExtra(EXTRA_SERIES_ID, series.seriesId)
                .putExtra(EXTRA_SERIES_NAME, series.name)
                .putExtra(EXTRA_SERIES_COVER, series.cover)
    }
}

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
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.TrailerCatalog
import com.gadir.tv.util.TrailerLauncher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SeriesDetailActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private var seasons: Map<String, List<SeriesEpisode>> = emptyMap()
    private var selectedSeason: String? = null
    private var fallbackCover = ""
    private var seriesName = ""

    private lateinit var seasonList: RecyclerView
    private lateinit var episodeList: RecyclerView
    private lateinit var loadingView: TextView
    private lateinit var btnSeriesPlay: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_series_detail)

        resumeStore = ResumeStore(this)
        val seriesId = intent.getIntExtra(EXTRA_SERIES_ID, 0)
        seriesName = intent.getStringExtra(EXTRA_SERIES_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_SERIES_COVER).orEmpty()

        findViewById<TextView>(R.id.seriesTitle).text = seriesName
        btnSeriesPlay = findViewById(R.id.btnSeriesPlay)
        btnSeriesPlay.setOnClickListener { playFirstEpisode() }
        if (fallbackCover.isNotEmpty()) {
            ImageLoader.loadPoster(findViewById(R.id.seriesPoster), fallbackCover, 280, 420)
            ImageLoader.loadPoster(findViewById(R.id.seriesBackdrop), fallbackCover)
        }

        seasonList = findViewById(R.id.seasonList)
        episodeList = findViewById(R.id.episodeList)
        loadingView = findViewById(R.id.seriesLoading)

        seasonList.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        episodeList.layoutManager = LinearLayoutManager(this)

        loadingView.visibility = View.VISIBLE
        episodeList.visibility = View.GONE
        seasonList.visibility = View.GONE

        val profile = PlaylistRepository.profile
        if (profile == null || seriesId <= 0) {
            finish()
            return
        }

        lifecycleScope.launch {
            val detail = withContext(Dispatchers.IO) {
                api.seriesInfo(profile, seriesId)
            }
            loadingView.visibility = View.GONE
            if (detail == null) {
                findViewById<TextView>(R.id.seriesPlot).text = getString(R.string.series_load_failed)
                return@launch
            }

            findViewById<TextView>(R.id.seriesTitle).text =
                detail.name.ifEmpty { seriesName }
            val meta = buildList {
                if (detail.releaseDate.isNotEmpty()) add(detail.releaseDate.take(4))
                if (detail.genre.isNotEmpty()) add(detail.genre)
                if (detail.rating.isNotEmpty()) add("★ ${detail.rating}")
            }.joinToString(" · ")
            findViewById<TextView>(R.id.seriesMeta).text = meta
            findViewById<TextView>(R.id.seriesPlot).text =
                detail.plot.ifBlank { getString(R.string.hero_plot_empty) }

            val castView = findViewById<TextView>(R.id.seriesCast)
            if (detail.cast.isNotBlank()) {
                castView.visibility = View.VISIBLE
                castView.text = getString(R.string.movie_cast, detail.cast)
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

            val trailerBtn = findViewById<TextView>(R.id.btnSeriesTrailer)
            val resolvedTrailer = resolveTrailerUrl(detail.trailerUrl, detail.name, seriesName)
            if (resolvedTrailer != null) {
                trailerBtn.visibility = View.VISIBLE
                trailerBtn.setOnClickListener {
                    TrailerLauncher.open(this@SeriesDetailActivity, resolvedTrailer, detail.name)
                }
            } else {
                trailerBtn.visibility = View.GONE
            }

            seasons = detail.seasons
            val keys = seasons.keys.sortedBy { it.toIntOrNull() ?: 0 }
            if (keys.isEmpty()) {
                findViewById<TextView>(R.id.seriesPlot).text = getString(R.string.hero_plot_empty)
                return@launch
            }

            btnSeriesPlay.visibility = View.VISIBLE
            selectedSeason = keys.first()

            seasonList.visibility = View.VISIBLE
            episodeList.visibility = View.VISIBLE
            seasonList.adapter = SeasonAdapter(keys) { season ->
                selectedSeason = season
                reloadEpisodes()
            }
            reloadEpisodes()
            btnSeriesPlay.requestFocus()
        }
    }

    private fun resolveTrailerUrl(vararg candidates: String): String? {
        for (candidate in candidates) {
            if (candidate.isBlank()) continue
            MetaExtractor.normalizeTrailerUrl(candidate)?.let { return it }
            TrailerCatalog.find(candidate)?.let { catalog ->
                MetaExtractor.normalizeTrailerUrl(catalog)?.let { return it }
            }
        }
        return null
    }

    private fun playFirstEpisode() {
        val season = selectedSeason ?: seasons.keys.sortedBy { it.toIntOrNull() ?: 0 }.firstOrNull()
        val episode = season?.let { seasons[it]?.firstOrNull() }
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
    }

    private fun playEpisode(ep: SeriesEpisode) {
        val profile = PlaylistRepository.profile ?: return
        val title = "${seriesName.ifBlank { ep.title }} — ${ep.season}x${ep.episodeNum}"
        val url = api.seriesStreamUrl(profile, ep.id, ep.extension)
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
            ),
        )
    }

    private class SeasonAdapter(
        private val seasons: List<String>,
        private val onClick: (String) -> Unit,
    ) : RecyclerView.Adapter<SeasonAdapter.Holder>() {
        private var selected = 0

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val label: TextView = view.findViewById(R.id.categoryName)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_category, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val season = seasons[position]
            holder.label.text = holder.itemView.context.getString(R.string.season_label, season)
            holder.itemView.isSelected = position == selected
            holder.itemView.setOnClickListener {
                val old = selected
                selected = holder.bindingAdapterPosition
                notifyItemChanged(old)
                notifyItemChanged(selected)
                onClick(season)
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

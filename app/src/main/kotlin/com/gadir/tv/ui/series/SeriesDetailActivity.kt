package com.gadir.tv.ui.series

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.SeriesEpisode
import com.gadir.tv.model.SeriesItem
import com.gadir.tv.player.PlaybackLauncher
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.util.ImageLoader
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SeriesDetailActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private var seasons: Map<String, List<SeriesEpisode>> = emptyMap()
    private var selectedSeason: String? = null
    private var fallbackCover = ""

    private lateinit var seasonList: RecyclerView
    private lateinit var episodeList: RecyclerView
    private lateinit var loadingView: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_series_detail)

        val seriesId = intent.getIntExtra(EXTRA_SERIES_ID, 0)
        val seriesName = intent.getStringExtra(EXTRA_SERIES_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_SERIES_COVER).orEmpty()

        findViewById<TextView>(R.id.seriesTitle).text = seriesName

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
                findViewById<TextView>(R.id.seriesPlot).text = "No se pudo cargar la serie"
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
            if (detail.cover.isNotEmpty()) fallbackCover = detail.cover

            val trailerBtn = findViewById<TextView>(R.id.btnSeriesTrailer)
            if (detail.trailerUrl.isNotBlank()) {
                trailerBtn.visibility = View.VISIBLE
                trailerBtn.setOnClickListener {
                    startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(detail.trailerUrl)))
                }
            } else {
                trailerBtn.visibility = View.GONE
            }

            seasons = detail.seasons
            val keys = seasons.keys.sortedBy { it.toIntOrNull() ?: 0 }
            if (keys.isEmpty()) {
                findViewById<TextView>(R.id.seriesPlot).text = "Esta serie no tiene episodios"
                return@launch
            }

            seasonList.visibility = View.VISIBLE
            episodeList.visibility = View.VISIBLE
            seasonList.adapter = SeasonAdapter(keys) { season ->
                selectedSeason = season
                reloadEpisodes()
            }
            selectedSeason = keys.first()
            reloadEpisodes()
            seasonList.post { seasonList.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus() }
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
        val title = "${ep.season}x${ep.episodeNum} — ${ep.title}"
        val url = api.seriesStreamUrl(profile, ep.id, ep.extension)
        val image = ep.image.ifEmpty { fallbackCover }
        PlaybackLauncher.play(
            context = this,
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
                "Episodio ${item.episodeNum}"
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

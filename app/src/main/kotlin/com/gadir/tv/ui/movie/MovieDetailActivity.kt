package com.gadir.tv.ui.movie

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.VodMovie
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.MetaExtractor
import com.gadir.tv.util.TrailerCatalog
import com.gadir.tv.util.TrailerLauncher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MovieDetailActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private var streamId = 0
    private var extension = "mp4"
    private var fallbackCover = ""
    private var trailerUrl: String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_movie_detail)

        streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mp4" }
        resumeStore = ResumeStore(this)
        val movieName = intent.getStringExtra(EXTRA_MOVIE_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_MOVIE_COVER).orEmpty()

        findViewById<TextView>(R.id.movieTitle).text = movieName
        if (fallbackCover.isNotEmpty()) {
            ImageLoader.loadPoster(findViewById(R.id.moviePoster), fallbackCover, 280, 420)
            ImageLoader.loadPoster(findViewById(R.id.movieBackdrop), fallbackCover)
        }

        findViewById<TextView>(R.id.btnMoviePlay).setOnClickListener { playMovie() }

        val profile = PlaylistRepository.profile
        if (profile == null || streamId <= 0) {
            finish()
            return
        }

        lifecycleScope.launch {
            val info = withContext(Dispatchers.IO) { api.vodInfo(profile, streamId) }
            findViewById<TextView>(R.id.movieLoading).visibility = View.GONE
            if (info == null) {
                findViewById<TextView>(R.id.moviePlot).text = getString(R.string.hero_plot_empty)
                findViewById<TextView>(R.id.btnMoviePlay).requestFocus()
                return@launch
            }

            findViewById<TextView>(R.id.movieTitle).text = info.name.ifEmpty { movieName }
            val meta = buildList {
                if (info.releaseDate.isNotEmpty()) add(info.releaseDate.take(4))
                if (info.genre.isNotEmpty()) add(info.genre)
                if (info.rating.isNotEmpty()) add("★ ${info.rating}")
            }.joinToString(" · ")
            findViewById<TextView>(R.id.movieMeta).text = meta
            findViewById<TextView>(R.id.moviePlot).text =
                info.plot.ifBlank { getString(R.string.hero_plot_empty) }

            val directorView = findViewById<TextView>(R.id.movieDirector)
            if (info.director.isNotBlank()) {
                directorView.visibility = View.VISIBLE
                directorView.text = getString(R.string.movie_director, info.director)
            }

            val castView = findViewById<TextView>(R.id.movieCast)
            if (info.cast.isNotBlank()) {
                castView.visibility = View.VISIBLE
                castView.text = getString(R.string.movie_cast, info.cast)
            }

            val backdrop = info.backdrop.ifBlank { info.cover.ifBlank { fallbackCover } }
            if (backdrop.isNotEmpty()) {
                ImageLoader.loadPoster(findViewById<ImageView>(R.id.movieBackdrop), backdrop)
            }
            val poster = info.cover.ifBlank { fallbackCover }
            if (poster.isNotEmpty()) {
                ImageLoader.loadPoster(findViewById(R.id.moviePoster), poster, 280, 420)
            }

            val trailerBtn = findViewById<TextView>(R.id.btnMovieTrailer)
            val resolvedTrailer = resolveTrailerUrl(info.trailerUrl, info.name, movieName)
            if (resolvedTrailer != null) {
                trailerUrl = resolvedTrailer
                trailerBtn.visibility = View.VISIBLE
                trailerBtn.setOnClickListener {
                    TrailerLauncher.open(this@MovieDetailActivity, resolvedTrailer, info.name)
                }
            } else {
                trailerBtn.visibility = View.GONE
            }

            findViewById<TextView>(R.id.btnMoviePlay).requestFocus()
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

    private fun playMovie() {
        val profile = PlaylistRepository.profile ?: return
        val title = findViewById<TextView>(R.id.movieTitle).text.toString()
        val cover = fallbackCover
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
    }

    companion object {
        private const val EXTRA_STREAM_ID = "stream_id"
        private const val EXTRA_MOVIE_NAME = "movie_name"
        private const val EXTRA_MOVIE_COVER = "movie_cover"
        private const val EXTRA_EXTENSION = "extension"

        fun intent(context: Context, movie: VodMovie): Intent =
            Intent(context, MovieDetailActivity::class.java)
                .putExtra(EXTRA_STREAM_ID, movie.streamId)
                .putExtra(EXTRA_MOVIE_NAME, movie.name)
                .putExtra(EXTRA_MOVIE_COVER, movie.icon)
                .putExtra(EXTRA_EXTENSION, movie.extension)

        fun intent(
            context: Context,
            streamId: Int,
            name: String,
            cover: String,
            extension: String = "mp4",
        ): Intent = Intent(context, MovieDetailActivity::class.java)
            .putExtra(EXTRA_STREAM_ID, streamId)
            .putExtra(EXTRA_MOVIE_NAME, name)
            .putExtra(EXTRA_MOVIE_COVER, cover)
            .putExtra(EXTRA_EXTENSION, extension)
    }
}

package com.gadir.tv.ui.movie

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.FavoritesStore
import com.gadir.tv.data.MovieDetailCache
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.PlotCache
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.VodInfo
import com.gadir.tv.model.VodMovie
import com.gadir.tv.player.PlaybackRequest
import com.gadir.tv.player.VodPlaybackHelper
import com.gadir.tv.player.ResumePlaybackHelper
import com.gadir.tv.player.VodStreamUrls
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.ui.detail.DetailTvNav
import com.gadir.tv.ui.detail.VodDetailUi
import com.gadir.tv.data.TmdbApi
import com.gadir.tv.util.TrailerLauncher
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.gadir.tv.util.TvFocusHelper

class MovieDetailActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var resumeStore: ResumeStore
    private lateinit var favoritesStore: FavoritesStore
    private var streamId = 0
    private var extension = "mp4"
    private var directSource = ""
    private var fallbackCover = ""
    private var movieName = ""
    private var addedTimestamp = 0L
    private var trailerUrl = ""
    private var releaseDate = ""
    private var tmdbId = 0
    private var loadToken = 0

    private lateinit var loadingView: View
    private lateinit var moviePlot: TextView
    private lateinit var btnMoviePlay: TextView
    private lateinit var btnMovieTrailer: TextView
    private lateinit var btnMovieFavorite: ImageView
    private lateinit var castList: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_movie_detail)

        streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        extension = intent.getStringExtra(EXTRA_EXTENSION).orEmpty().ifBlank { "mp4" }
        resumeStore = ResumeStore(this)
        favoritesStore = FavoritesStore(this)
        movieName = intent.getStringExtra(EXTRA_MOVIE_NAME).orEmpty()
        fallbackCover = intent.getStringExtra(EXTRA_MOVIE_COVER).orEmpty()
        addedTimestamp = intent.getLongExtra(EXTRA_ADDED, 0L)

        findViewById<TextView>(R.id.movieTitle).text = movieName
        moviePlot = findViewById(R.id.moviePlot)
        loadingView = findViewById(R.id.movieLoading)
        btnMoviePlay = findViewById(R.id.btnMoviePlay)
        btnMovieTrailer = findViewById(R.id.btnMovieTrailer)
        btnMovieFavorite = findViewById(R.id.btnMovieFavorite)
        castList = findViewById(R.id.movieCastList)

        btnMoviePlay.setOnClickListener { playMovie() }
        TvFocusHelper.bindButton(btnMoviePlay, onActivate = { playMovie() }, onMoveDown = {
            if (com.gadir.tv.util.DeviceUi.useDpadFocus(this) &&
                castList.visibility == View.VISIBLE &&
                (castList.adapter?.itemCount ?: 0) > 0
            ) {
                DetailTvNav.focusFirst(castList)
            }
        })
        TvFocusHelper.bindButton(btnMovieTrailer, onActivate = { openTrailer() }, onMoveDown = {
            if (com.gadir.tv.util.DeviceUi.useDpadFocus(this) &&
                castList.visibility == View.VISIBLE &&
                (castList.adapter?.itemCount ?: 0) > 0
            ) {
                DetailTvNav.focusFirst(castList)
            }
        })
        bindFavoriteButton()
        findViewById<ImageView>(R.id.btnMovieBack).apply {
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

        VodDetailUi.bindAddedDate(findViewById(R.id.movieAddedDate), addedTimestamp)
        if (fallbackCover.isNotEmpty()) {
            VodDetailUi.bindImages(
                posterView = findViewById(R.id.moviePoster),
                backdropView = findViewById(R.id.movieBackdrop),
                poster = fallbackCover,
                backdrop = fallbackCover,
                contentId = streamId,
            )
        }
        applyPlotCache()
        if (moviePlot.text.isNullOrBlank()) {
            moviePlot.text = getString(R.string.hero_plot_loading)
        }

        val btnReload = findViewById<TextView>(R.id.btnMovieReload)
        TvFocusHelper.bindButton(btnReload) { loadMovieDetail() }

        val profile = PlaylistRepository.profile
        if (profile == null || streamId <= 0) {
            finish()
            return
        }

        loadMovieDetail()
    }

    private fun bindFavoriteButton() {
        VodDetailUi.updateFavoriteButton(
            btnMovieFavorite,
            favoritesStore.isFavorite(FavoritesStore.KIND_MOVIE, streamId),
        )
        btnMovieFavorite.setOnClickListener {
            favoritesStore.toggle(FavoritesStore.KIND_MOVIE, streamId)
            VodDetailUi.updateFavoriteButton(
                btnMovieFavorite,
                favoritesStore.isFavorite(FavoritesStore.KIND_MOVIE, streamId),
            )
        }
    }

    private fun applyPlotCache() {
        val cached = PlotCache.get("movie", streamId) ?: return
        if (cached.title.isNotBlank()) {
            findViewById<TextView>(R.id.movieTitle).text = cached.title
        }
        if (cached.plot.isNotBlank()) {
            moviePlot.text = cached.plot
        }
        val backdrop = cached.backdrop.ifBlank { cached.poster }.ifBlank { fallbackCover }
        val poster = cached.poster.ifBlank { fallbackCover }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
        }
        VodDetailUi.bindImages(
            posterView = findViewById(R.id.moviePoster),
            backdropView = findViewById(R.id.movieBackdrop),
            poster = poster,
            backdrop = backdrop,
            contentId = streamId,
        )
        btnMoviePlay.visibility = View.VISIBLE
    }

    private fun loadMovieDetail() {
        val profile = PlaylistRepository.profile ?: return
        val token = ++loadToken
        val cachedInfo = MovieDetailCache.get(streamId)
        val hasCached = cachedInfo != null || PlotCache.get("movie", streamId) != null
        loadingView.visibility = if (hasCached) View.GONE else View.VISIBLE
        btnMoviePlay.visibility = View.VISIBLE
        if (cachedInfo != null) {
            bindDetail(cachedInfo)
        }

        lifecycleScope.launch {
            val info = runCatching {
                withContext(Dispatchers.IO) {
                    api.vodInfo(profile, streamId)
                }
            }.getOrNull()
            if (token != loadToken) return@launch
            loadingView.visibility = View.GONE
            if (info == null) {
                if (cachedInfo == null) {
                    resolvePlotLoadingState(failed = !canPlayMovie())
                }
                btnMoviePlay.requestFocus()
                scheduleMovieDetailRetry(token)
                return@launch
            }
            MovieDetailCache.put(streamId, info)
            bindDetail(info)
        }
    }

    private fun canPlayMovie(): Boolean =
        streamId > 0 && PlaylistRepository.profile != null &&
            (movieName.isNotBlank() || fallbackCover.isNotBlank() || PlotCache.get("movie", streamId) != null)

    private fun scheduleMovieDetailRetry(token: Int) {
        if (MovieDetailCache.get(streamId) != null) return
        lifecycleScope.launch {
            delay(2_500L)
            if (token != loadToken || MovieDetailCache.get(streamId) != null) return@launch
            loadMovieDetail()
        }
    }

    private fun resolvePlotLoadingState(failed: Boolean) {
        if (moviePlot.text?.toString() != getString(R.string.hero_plot_loading)) return
        moviePlot.text = if (failed) {
            getString(R.string.movie_load_failed)
        } else {
            getString(R.string.hero_plot_empty)
        }
    }

    private fun bindDetail(info: VodInfo) {
        val title = VodDetailUi.formatTitle(info.name.ifEmpty { movieName }, info.releaseDate)
        findViewById<TextView>(R.id.movieTitle).text = title
        VodDetailUi.bindReleaseDate(findViewById(R.id.movieReleaseDate), info.releaseDate)
        VodDetailUi.bindRating(
            findViewById(R.id.movieRatingStars),
            findViewById(R.id.movieRatingValue),
            info.rating,
        )
        VodDetailUi.bindGenre(findViewById(R.id.movieGenre), info.genre)
        VodDetailUi.bindAddedDate(findViewById(R.id.movieAddedDate), addedTimestamp)
        moviePlot.text = info.plot.ifBlank { getString(R.string.hero_plot_empty) }

        val directorView = findViewById<TextView>(R.id.movieDirector)
        if (info.director.isNotBlank()) {
            directorView.visibility = View.VISIBLE
            directorView.text = getString(R.string.movie_director, info.director)
        } else {
            directorView.visibility = View.GONE
        }

        VodDetailUi.bindCast(
            labelView = findViewById(R.id.movieCastLabel),
            listView = castList,
            castMembers = info.castMembers,
            fallbackCast = info.cast,
            onCastMoveUp = { btnMoviePlay.requestFocus() },
        )
        VodDetailUi.enrichCastAsync(
            scope = lifecycleScope,
            members = info.castMembers,
            title = info.name.ifEmpty { movieName },
            releaseDate = info.releaseDate,
            isSeries = false,
            tmdbId = info.tmdbId,
            labelView = findViewById(R.id.movieCastLabel),
            listView = castList,
            fallbackCast = info.cast,
            onCastMoveUp = { btnMoviePlay.requestFocus() },
        )

        val backdrop = info.backdrop.ifBlank { info.cover.ifBlank { fallbackCover } }
        val poster = info.cover.ifBlank { fallbackCover }
        if (poster.isNotEmpty()) {
            fallbackCover = poster
        }
        VodDetailUi.bindImages(
            posterView = findViewById(R.id.moviePoster),
            backdropView = findViewById(R.id.movieBackdrop),
            poster = poster,
            backdrop = backdrop,
            contentId = streamId,
        )

        trailerUrl = info.trailerUrl
        releaseDate = info.releaseDate
        tmdbId = info.tmdbId
        btnMovieTrailer.visibility =
            if (trailerUrl.isNotBlank() || TmdbApi.isConfigured()) View.VISIBLE else View.GONE

        btnMoviePlay.visibility = View.VISIBLE
        extension = info.extension.ifBlank { extension }
        directSource = info.directSource
        btnMoviePlay.requestFocus()
        MovieDetailCache.put(streamId, info)
        PlotCache.put(
            "movie",
            streamId,
            PlotCache.Entry(
                plot = info.plot,
                backdrop = info.backdrop,
                poster = info.cover.ifBlank { fallbackCover },
                title = info.name.ifEmpty { movieName },
            ),
        )
    }

    private fun openTrailer() {
        val title = findViewById<TextView>(R.id.movieTitle).text.toString()
        if (trailerUrl.isBlank() && !TmdbApi.isConfigured()) return
        TrailerLauncher.open(
            context = this,
            rawUrl = trailerUrl,
            title = title,
            isSeries = false,
            releaseDate = releaseDate,
            tmdbId = tmdbId,
        )
    }

    private fun playMovie() {
        val profile = PlaylistRepository.profile ?: return
        val title = findViewById<TextView>(R.id.movieTitle).text.toString()
        val cover = fallbackCover
        lifecycleScope.launch {
            val resolved = VodPlaybackHelper.resolveMovie(
                api, profile, streamId, extension, directSource,
            )
            extension = resolved.extension
            MovieDetailCache.get(streamId)?.directSource?.let { directSource = it }
            val url = resolved.urls.firstOrNull().orEmpty()
            if (url.isBlank()) {
                android.widget.Toast.makeText(
                    this@MovieDetailActivity,
                    R.string.series_playback_failed,
                    android.widget.Toast.LENGTH_SHORT,
                ).show()
                return@launch
            }
            VodPlaybackHelper.prefetchMeta(lifecycleScope, api, profile, streamId)
            ResumePlaybackHelper.play(
                context = this@MovieDetailActivity,
                resumeStore = resumeStore,
                request = PlaybackRequest(
                    title = title,
                    url = url,
                    kind = ResumeStore.KIND_MOVIE,
                    contentId = streamId.toString(),
                    imageUrl = cover,
                    extension = resolved.extension,
                    alternateUrls = resolved.urls.drop(1),
                ),
            )
        }
    }

    companion object {
        private const val EXTRA_STREAM_ID = "stream_id"
        private const val EXTRA_MOVIE_NAME = "movie_name"
        private const val EXTRA_MOVIE_COVER = "movie_cover"
        private const val EXTRA_EXTENSION = "extension"
        private const val EXTRA_ADDED = "added"

        fun intent(context: Context, movie: VodMovie): Intent =
            Intent(context, MovieDetailActivity::class.java)
                .putExtra(EXTRA_STREAM_ID, movie.streamId)
                .putExtra(EXTRA_MOVIE_NAME, movie.name)
                .putExtra(EXTRA_MOVIE_COVER, movie.icon)
                .putExtra(EXTRA_EXTENSION, movie.extension)
                .putExtra(EXTRA_ADDED, movie.added)

        fun intent(
            context: Context,
            streamId: Int,
            name: String,
            cover: String,
            extension: String = "mp4",
            added: Long = 0L,
        ): Intent = Intent(context, MovieDetailActivity::class.java)
            .putExtra(EXTRA_STREAM_ID, streamId)
            .putExtra(EXTRA_MOVIE_NAME, name)
            .putExtra(EXTRA_MOVIE_COVER, cover)
            .putExtra(EXTRA_EXTENSION, extension)
            .putExtra(EXTRA_ADDED, added)
    }
}

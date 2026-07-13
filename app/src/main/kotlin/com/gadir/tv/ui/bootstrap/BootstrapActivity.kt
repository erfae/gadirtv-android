package com.gadir.tv.ui.bootstrap

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
import com.gadir.tv.data.HomeLoader
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.ui.login.LoginActivity
import com.gadir.tv.ui.main.MainActivity
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class BootstrapActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private lateinit var profileStore: ProfileStore

    private lateinit var messageView: TextView
    private lateinit var errorView: TextView
    private lateinit var btnRetry: MaterialButton
    private lateinit var btnProfiles: MaterialButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        setContentView(R.layout.activity_bootstrap)

        messageView = findViewById(R.id.bootstrapMessage)
        errorView = findViewById(R.id.bootstrapError)
        btnRetry = findViewById(R.id.btnRetry)
        btnProfiles = findViewById(R.id.btnProfiles)
        btnRetry.setOnClickListener { load() }
        btnProfiles.setOnClickListener {
            profileStore.clearActive()
            PlaylistRepository.clear()
            startActivity(Intent(this, ProfilesActivity::class.java))
            finish()
        }
        load()
    }

    private fun load() {
        val profile = profileStore.getActive()
        if (profile == null) {
            startActivity(Intent(this, ProfilesActivity::class.java))
            finish()
            return
        }

        errorView.visibility = View.GONE
        btnRetry.visibility = View.GONE
        btnProfiles.visibility = View.GONE
        messageView.text = getString(R.string.connecting)

        lifecycleScope.launch {
            val loginCheck = getString(R.string.login_check)
            val connectionFailed = getString(R.string.connection_failed)
            val bootstrapLive = getString(R.string.bootstrap_live)
            val bootstrapChannels = getString(R.string.bootstrap_channels)
            val bootstrapMovies = getString(R.string.bootstrap_movies)
            val bootstrapSeries = getString(R.string.bootstrap_series)
            val bootstrapHome = getString(R.string.bootstrap_home)
            val bootstrapGroupFmt = getString(R.string.bootstrap_loading_group)
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    PlaylistRepository.setProfile(profile)
                    message(loginCheck)
                    val login = api.login(profile) { msg -> message(msg) }
                    if (!login.ok) {
                        throw IllegalStateException(login.error ?: connectionFailed)
                    }
                    PlaylistRepository.userAgent = api.activeUserAgent

                    message(bootstrapLive)
                    val cats = api.liveCategories(profile)
                    message(bootstrapChannels)
                    val channels = api.liveStreams(profile)
                    PlaylistRepository.updateCatalog(cats, channels)

                    message(bootstrapMovies)
                    val vodCats = api.vodCategories(profile)
                    PlaylistRepository.updateVodCategories(vodCats)
                    vodCats.forEach { category ->
                        message(String.format(bootstrapGroupFmt, category.name))
                        val movies = api.vodStreams(profile, category.id)
                        PlaylistRepository.cacheVod(category.id, movies)
                    }

                    message(bootstrapSeries)
                    val seriesCats = api.seriesCategories(profile)
                    PlaylistRepository.updateSeriesCategories(seriesCats)
                    seriesCats.forEach { category ->
                        message(String.format(bootstrapGroupFmt, category.name))
                        val series = api.seriesList(profile, category.id)
                        PlaylistRepository.cacheSeries(category.id, series)
                    }

                    message(bootstrapHome)
                    val recentMovies = PlaylistRepository.allCachedVod()
                        .sortedByDescending { it.added }
                        .take(24)
                    val recentSeries = PlaylistRepository.allCachedSeries()
                        .sortedByDescending { it.added }
                        .take(24)
                    PlaylistRepository.setHomeRecent(recentMovies, recentSeries)
                    PlaylistRepository.markBootstrapReady()

                    channels.size
                }
            }

            result.onSuccess {
                startActivity(Intent(this@BootstrapActivity, MainActivity::class.java))
                finish()
            }.onFailure { e ->
                errorView.visibility = View.VISIBLE
                errorView.text = e.message ?: getString(R.string.connection_failed)
                btnRetry.visibility = View.VISIBLE
                btnProfiles.visibility = View.VISIBLE
            }
        }
    }

    private fun message(text: String) {
        runOnUiThread { messageView.text = text }
    }
}

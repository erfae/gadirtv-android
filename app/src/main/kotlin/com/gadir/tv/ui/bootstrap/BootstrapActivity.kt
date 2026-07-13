package com.gadir.tv.ui.bootstrap

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
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
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    PlaylistRepository.setProfile(profile)
                    message(loginCheck)
                    val login = api.login(profile) { msg -> message(msg) }
                    if (!login.ok) {
                        throw IllegalStateException(login.error ?: connectionFailed)
                    }
                    PlaylistRepository.userAgent = api.activeUserAgent

                    message("Categorías TV…")
                    val cats = api.liveCategories(profile)
                    message("Canales TV…")
                    val channels = api.liveStreams(profile)
                    PlaylistRepository.updateCatalog(cats, channels)

                    message("Películas…")
                    PlaylistRepository.updateVodCategories(api.vodCategories(profile))
                    message("Series…")
                    PlaylistRepository.updateSeriesCategories(api.seriesCategories(profile))

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

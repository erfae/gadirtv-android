package com.gadir.tv.ui.bootstrap

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
import com.gadir.tv.data.BootstrapLoader
import com.gadir.tv.data.ContentPreloader
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.ui.main.MainActivity
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class BootstrapActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var profileStore: ProfileStore

    private lateinit var loadingView: View
    private lateinit var errorView: TextView
    private lateinit var progressView: TextView
    private lateinit var btnRetry: MaterialButton
    private lateinit var btnProfiles: MaterialButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        setContentView(R.layout.activity_bootstrap)

        loadingView = findViewById(R.id.bootstrapLoading)
        errorView = findViewById(R.id.bootstrapError)
        progressView = findViewById(R.id.bootstrapProgress)
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

        showLoading()

        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    BootstrapLoader.load(
                        context = this@BootstrapActivity,
                        api = api,
                        profile = profile,
                        onProgress = { message ->
                            runOnUiThread {
                                progressView.visibility = View.VISIBLE
                                progressView.text = message
                            }
                        },
                    )
                }
            }

            result.onSuccess {
                ContentPreloader.startBackgroundPreload(this@BootstrapActivity, api, profile)
                startActivity(Intent(this@BootstrapActivity, MainActivity::class.java))
                finish()
            }.onFailure { e ->
                showError(e.message ?: getString(R.string.connection_failed))
            }
        }
    }

    private fun showLoading() {
        loadingView.visibility = View.VISIBLE
        errorView.visibility = View.GONE
        progressView.visibility = View.GONE
        btnRetry.visibility = View.GONE
        btnProfiles.visibility = View.GONE
    }

    private fun showError(message: String) {
        loadingView.visibility = View.GONE
        errorView.visibility = View.VISIBLE
        errorView.text = message
        btnRetry.visibility = View.VISIBLE
        btnProfiles.visibility = View.VISIBLE
    }
}

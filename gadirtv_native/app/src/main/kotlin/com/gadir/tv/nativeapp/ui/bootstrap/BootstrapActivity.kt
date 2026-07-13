package com.gadir.tv.nativeapp.ui.bootstrap

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.nativeapp.R
import com.gadir.tv.nativeapp.data.PlaylistRepository
import com.gadir.tv.nativeapp.data.ProfileStore
import com.gadir.tv.nativeapp.data.XtreamApi
import com.gadir.tv.nativeapp.ui.login.LoginActivity
import com.gadir.tv.nativeapp.ui.main.MainActivity
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

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        setContentView(R.layout.activity_bootstrap)

        messageView = findViewById(R.id.bootstrapMessage)
        errorView = findViewById(R.id.bootstrapError)
        btnRetry = findViewById(R.id.btnRetry)
        btnRetry.setOnClickListener { load() }
        load()
    }

    private fun load() {
        val profile = profileStore.getActive()
        if (profile == null) {
            startActivity(Intent(this, LoginActivity::class.java))
            finish()
            return
        }

        errorView.visibility = View.GONE
        btnRetry.visibility = View.GONE
        messageView.text = getString(R.string.loading)

        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    PlaylistRepository.setProfile(profile)
                    message("Categorías…")
                    val cats = api.liveCategories(profile)
                    message("Canales…")
                    val channels = api.liveStreams(profile)
                    PlaylistRepository.updateCatalog(cats, channels)
                    channels.size
                }
            }

            result.onSuccess {
                startActivity(Intent(this@BootstrapActivity, MainActivity::class.java))
                finish()
            }.onFailure { e ->
                errorView.visibility = View.VISIBLE
                errorView.text = "No se pudo cargar: ${e.message}"
                btnRetry.visibility = View.VISIBLE
            }
        }
    }

    private fun message(text: String) {
        runOnUiThread { messageView.text = text }
    }
}

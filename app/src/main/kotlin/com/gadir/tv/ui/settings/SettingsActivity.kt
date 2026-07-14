package com.gadir.tv.ui.settings

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.BootstrapLoader
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.gadir.tv.util.LocaleHelper

class SettingsActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private lateinit var appSettings: AppSettings
    private lateinit var settingsPlayer: TextView
    private lateinit var btnPlayerMode: TextView
    private lateinit var btnLanguage: TextView

    private val pickPlayer = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult(),
    ) {
        updatePlayerLabels()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_settings)
        appSettings = AppSettings(this)

        val profile = PlaylistRepository.profile
        findViewById<TextView>(R.id.settingsProfile).text =
            getString(R.string.settings_profile_label, profile?.name.orEmpty())
        findViewById<TextView>(R.id.settingsVersion).text =
            getString(
                R.string.settings_version_label,
                packageManager.getPackageInfo(packageName, 0).versionName.orEmpty(),
            )
        updateAccountInfo()

        settingsPlayer = findViewById(R.id.settingsPlayer)
        btnPlayerMode = findViewById(R.id.btnPlayerMode)
        btnLanguage = findViewById(R.id.btnLanguage)

        val btnAutoplay = findViewById<TextView>(R.id.btnAutoplay)
        updateAutoplayLabel(btnAutoplay)
        btnAutoplay.setOnClickListener {
            appSettings.autoplayPreview = !appSettings.autoplayPreview
            updateAutoplayLabel(btnAutoplay)
        }

        btnPlayerMode.setOnClickListener {
            pickPlayer.launch(Intent(this, PlayerSelectActivity::class.java))
        }

        updateLanguageLabel()
        btnLanguage.setOnClickListener { cycleLanguage() }

        findViewById<TextView>(R.id.btnBack).setOnClickListener { finish() }

        val btnLiveSort = findViewById<TextView>(R.id.btnLiveSort)
        updateLiveSortLabel(btnLiveSort)
        btnLiveSort.setOnClickListener {
            appSettings.liveSortMode = if (appSettings.liveSortMode == AppSettings.LIVE_SORT_ALPHA) {
                AppSettings.LIVE_SORT_PLAYLIST
            } else {
                AppSettings.LIVE_SORT_ALPHA
            }
            updateLiveSortLabel(btnLiveSort)
        }

        findViewById<TextView>(R.id.btnReloadPlaylist).setOnClickListener { reloadPlaylist() }

        findViewById<TextView>(R.id.btnClearCache).setOnClickListener {
            PlaylistRepository.clearContentCache()
            SearchRepository.invalidate()
            Toast.makeText(this, R.string.settings_cache_cleared, Toast.LENGTH_SHORT).show()
        }

        findViewById<TextView>(R.id.btnChangeProfile).setOnClickListener {
            ProfileStore(this).clearActive()
            PlaylistRepository.clear()
            startActivity(
                Intent(this, ProfilesActivity::class.java)
                    .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK),
            )
            finishAffinity()
        }

        updatePlayerLabels()
        btnPlayerMode.post { btnPlayerMode.requestFocus() }
    }

    private fun cycleLanguage() {
        val next = when (appSettings.language) {
            AppSettings.LANG_ES -> AppSettings.LANG_EN
            AppSettings.LANG_EN -> AppSettings.LANG_FR
            AppSettings.LANG_FR -> AppSettings.LANG_DE
            AppSettings.LANG_DE -> AppSettings.LANG_ZH
            else -> AppSettings.LANG_ES
        }
        LocaleHelper.setLanguage(this, next)
        val intent = packageManager.getLaunchIntentForPackage(packageName)
        intent?.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
        startActivity(intent)
        finishAffinity()
    }

    private fun updateLanguageLabel() {
        val label = when (appSettings.language) {
            AppSettings.LANG_EN -> getString(R.string.language_english)
            AppSettings.LANG_FR -> getString(R.string.language_french)
            AppSettings.LANG_DE -> getString(R.string.language_german)
            AppSettings.LANG_ZH -> getString(R.string.language_chinese)
            else -> getString(R.string.language_spanish)
        }
        btnLanguage.text = getString(R.string.settings_language_current, label)
    }

    private fun updatePlayerLabels() {
        settingsPlayer.text = when (appSettings.playerMode) {
            AppSettings.PLAYER_COMPAT -> getString(R.string.settings_player_compat)
            AppSettings.PLAYER_VLC -> getString(R.string.settings_player_vlc)
            AppSettings.PLAYER_EXTERNAL -> {
                val pkg = appSettings.externalPlayerPackage
                if (pkg.isBlank()) {
                    getString(R.string.settings_player_external)
                } else {
                    val label = runCatching {
                        packageManager.getApplicationLabel(
                            packageManager.getApplicationInfo(pkg, 0),
                        ).toString()
                    }.getOrDefault(pkg)
                    getString(R.string.settings_player_external_named, label)
                }
            }
            else -> getString(R.string.settings_player_exo)
        }
        btnPlayerMode.text = getString(R.string.settings_change_player)
    }

    private fun updateAccountInfo() {
        val account = PlaylistRepository.accountInfo
        val view = findViewById<TextView>(R.id.settingsAccount)
        if (account == null || account.username.isBlank()) {
            view.visibility = android.view.View.GONE
            return
        }
        view.visibility = android.view.View.VISIBLE
        val exp = if (account.expDate.isNotBlank()) account.expDate else "—"
        val status = if (account.status.isNotBlank()) account.status else "—"
        view.text = listOf(
            getString(R.string.settings_account_label, account.username),
            getString(R.string.settings_account_status, status),
            getString(R.string.settings_account_expires, exp),
        ).joinToString("\n")
    }

    private fun reloadPlaylist() {
        val profile = PlaylistRepository.profile ?: return
        Toast.makeText(this, R.string.loading_playlist, Toast.LENGTH_SHORT).show()
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching { BootstrapLoader.load(this@SettingsActivity, api, profile) }
            }
            if (result.isSuccess) {
                updateAccountInfo()
                Toast.makeText(this@SettingsActivity, R.string.reload_playlist, Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun updateLiveSortLabel(view: TextView) {
        view.text = if (appSettings.liveSortMode == AppSettings.LIVE_SORT_ALPHA) {
            getString(R.string.settings_live_sort_alpha)
        } else {
            getString(R.string.settings_live_sort_playlist)
        }
    }

    private fun updateAutoplayLabel(view: TextView) {
        view.text = if (appSettings.autoplayPreview) {
            getString(R.string.settings_autoplay_on)
        } else {
            getString(R.string.settings_autoplay_off)
        }
    }
}

package com.gadir.tv.ui.settings

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.player.ExternalPlayerHelper
import com.gadir.tv.ui.profiles.ProfilesActivity

class SettingsActivity : AppCompatActivity() {
    private lateinit var appSettings: AppSettings
    private lateinit var settingsPlayer: TextView
    private lateinit var btnPlayerMode: TextView
    private lateinit var btnExternalPlayer: TextView

    private val pickExternalPlayer = registerForActivityResult(
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

        settingsPlayer = findViewById(R.id.settingsPlayer)
        btnPlayerMode = findViewById(R.id.btnPlayerMode)
        btnExternalPlayer = findViewById(R.id.btnExternalPlayer)

        val btnAutoplay = findViewById<TextView>(R.id.btnAutoplay)
        updateAutoplayLabel(btnAutoplay)
        btnAutoplay.setOnClickListener {
            appSettings.autoplayPreview = !appSettings.autoplayPreview
            updateAutoplayLabel(btnAutoplay)
        }

        btnPlayerMode.setOnClickListener { togglePlayerMode() }
        btnExternalPlayer.setOnClickListener { openExternalPlayerPicker() }

        findViewById<TextView>(R.id.btnBack).setOnClickListener { finish() }

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
    }

    private fun togglePlayerMode() {
        if (appSettings.isExternalPlayer) {
            appSettings.playerMode = AppSettings.PLAYER_INTERNAL
            updatePlayerLabels()
            return
        }

        val players = ExternalPlayerHelper.findInstalledPlayers(this)
        if (players.isEmpty()) {
            Toast.makeText(
                this,
                getString(R.string.settings_no_external_player),
                Toast.LENGTH_LONG,
            ).show()
            appSettings.playerMode = AppSettings.PLAYER_INTERNAL
            updatePlayerLabels()
            return
        }

        appSettings.playerMode = AppSettings.PLAYER_EXTERNAL
        if (appSettings.externalPlayerPackage.isBlank()) {
            if (players.size == 1) {
                appSettings.externalPlayerPackage = players.first().packageName
                Toast.makeText(
                    this,
                    getString(R.string.settings_external_player_selected, players.first().label),
                    Toast.LENGTH_SHORT,
                ).show()
            } else {
                openExternalPlayerPicker()
            }
        }
        updatePlayerLabels()
    }

    private fun openExternalPlayerPicker() {
        val players = ExternalPlayerHelper.findInstalledPlayers(this)
        if (players.isEmpty()) {
            Toast.makeText(
                this,
                getString(R.string.settings_no_external_player),
                Toast.LENGTH_LONG,
            ).show()
            return
        }
        pickExternalPlayer.launch(
            Intent(this, ExternalPlayerSelectActivity::class.java),
        )
    }

    private fun updatePlayerLabels() {
        if (appSettings.isExternalPlayer) {
            settingsPlayer.text = getString(R.string.settings_player_external)
            btnPlayerMode.text = getString(R.string.settings_player_mode_external)
            btnExternalPlayer.visibility = android.view.View.VISIBLE

            val pkg = appSettings.externalPlayerPackage
            if (pkg.isNotBlank()) {
                val label = runCatching {
                    packageManager.getApplicationLabel(
                        packageManager.getApplicationInfo(pkg, 0),
                    ).toString()
                }.getOrDefault(pkg)
                btnExternalPlayer.text = getString(R.string.settings_external_player_current, label)
            } else {
                btnExternalPlayer.text = getString(R.string.settings_select_external_player)
            }
        } else {
            settingsPlayer.text = getString(R.string.settings_player_exo)
            btnPlayerMode.text = getString(R.string.settings_player_mode_internal)
            btnExternalPlayer.visibility = android.view.View.GONE
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

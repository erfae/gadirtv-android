package com.gadir.tv.ui.settings

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.SearchRepository
import com.gadir.tv.ui.profiles.ProfilesActivity

class SettingsActivity : AppCompatActivity() {
    private lateinit var appSettings: AppSettings
    private lateinit var settingsPlayer: TextView
    private lateinit var btnPlayerMode: TextView

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

        val btnAutoplay = findViewById<TextView>(R.id.btnAutoplay)
        updateAutoplayLabel(btnAutoplay)
        btnAutoplay.setOnClickListener {
            appSettings.autoplayPreview = !appSettings.autoplayPreview
            updateAutoplayLabel(btnAutoplay)
        }

        btnPlayerMode.setOnClickListener {
            appSettings.togglePlayerMode()
            updatePlayerLabels()
            Toast.makeText(this, settingsPlayer.text, Toast.LENGTH_SHORT).show()
        }

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

    private fun updatePlayerLabels() {
        if (appSettings.isCompatPlayer) {
            settingsPlayer.text = getString(R.string.settings_player_compat)
            btnPlayerMode.text = getString(R.string.settings_player_switch_standard)
        } else {
            settingsPlayer.text = getString(R.string.settings_player_exo)
            btnPlayerMode.text = getString(R.string.settings_player_switch_compat)
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

package com.gadir.tv.ui.login

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.Editable
import android.text.TextWatcher
import android.view.KeyEvent
import android.view.View
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.LoginDraft
import com.gadir.tv.model.Profile
import com.gadir.tv.ui.bootstrap.BootstrapActivity
import com.gadir.tv.ui.profiles.ProfilesActivity
import com.gadir.tv.util.DefaultCredentials
import com.gadir.tv.util.HostUtils
import com.google.android.material.button.MaterialButton
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import android.widget.EditText
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class LoginActivity : BaseLocaleActivity() {
    private val api = XtreamApi()
    private lateinit var profileStore: ProfileStore
    private val draftHandler = Handler(Looper.getMainLooper())
    private var draftRunnable: Runnable? = null
    private var editingProfileId: String? = null

    private lateinit var inputHost: EditText
    private lateinit var inputUser: EditText
    private lateinit var inputPass: EditText
    private lateinit var inputName: EditText
    private lateinit var loginError: TextView
    private lateinit var loginProgress: TextView
    private lateinit var btnConnect: MaterialButton
    private lateinit var btnBack: MaterialButton
    private lateinit var btnDeleteProfile: MaterialButton
    private lateinit var btnManageProfiles: MaterialButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        setContentView(R.layout.activity_login)
        bindViews()
        setupEditMode()
        loadDraft()
        setupDraftAutosave()

        btnConnect.setOnClickListener { connect() }
        btnBack.setOnClickListener { finish() }
        btnDeleteProfile.setOnClickListener { confirmDeleteProfile() }
        btnManageProfiles.setOnClickListener {
            startActivity(
                Intent(this, ProfilesActivity::class.java)
                    .putExtra(ProfilesActivity.EXTRA_FORCE_PICKER, true)
                    .putExtra(ProfilesActivity.EXTRA_MANAGE_MODE, true),
            )
        }

        setupCreateModeActions()

        findViewById<android.widget.ScrollView>(R.id.loginScroll)?.post {
            findViewById<View>(R.id.loginTitle)?.let { title ->
                findViewById<android.widget.ScrollView>(R.id.loginScroll)
                    ?.smoothScrollTo(0, title.top)
            }
        }

        btnConnect.setOnKeyListener { _, keyCode, event ->
            if (event.action == KeyEvent.ACTION_DOWN &&
                (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER)
            ) {
                connect()
                true
            } else {
                false
            }
        }

        inputHost.requestFocus()
    }

    private fun setupEditMode() {
        editingProfileId = intent.getStringExtra(EXTRA_PROFILE_ID)
        if (editingProfileId == null) return

        val existing = profileStore.loadAll().firstOrNull { it.id == editingProfileId }
        if (existing == null) {
            editingProfileId = null
            return
        }

        findViewById<TextView>(R.id.loginTitle).text = getString(R.string.login_edit_title)
        btnConnect.text = getString(R.string.save_profile)
        inputHost.setText(existing.host)
        inputUser.setText(existing.username)
        inputPass.setText(existing.password)
        inputName.setText(existing.name)
        btnDeleteProfile.visibility = View.VISIBLE
        btnManageProfiles.visibility = View.GONE
    }

    private fun setupCreateModeActions() {
        if (editingProfileId != null) return
        val hasProfiles = profileStore.loadAll().isNotEmpty()
        btnManageProfiles.visibility = if (hasProfiles) View.VISIBLE else View.GONE
        btnDeleteProfile.visibility = View.GONE
    }

    private fun confirmDeleteProfile() {
        val profileId = editingProfileId ?: return
        val profile = profileStore.loadAll().firstOrNull { it.id == profileId } ?: return
        MaterialAlertDialogBuilder(this)
            .setTitle(R.string.delete_profile_title)
            .setMessage(getString(R.string.delete_profile_message, profile.displayName))
            .setPositiveButton(R.string.delete_profile_confirm) { _, _ ->
                profileStore.remove(profile)
                startActivity(Intent(this, ProfilesActivity::class.java))
                finish()
            }
            .setNegativeButton(android.R.string.cancel, null)
            .show()
    }

    private fun bindViews() {
        inputHost = findViewById(R.id.inputHost)
        inputUser = findViewById(R.id.inputUser)
        inputPass = findViewById(R.id.inputPass)
        inputName = findViewById(R.id.inputName)
        loginError = findViewById(R.id.loginError)
        loginProgress = findViewById(R.id.loginProgress)
        btnConnect = findViewById(R.id.btnConnect)
        btnBack = findViewById(R.id.btnBack)
        btnDeleteProfile = findViewById(R.id.btnDeleteProfile)
        btnManageProfiles = findViewById(R.id.btnManageProfiles)
    }

    private fun loadDraft() {
        if (editingProfileId != null) return
        val draft = DefaultCredentials.draftOrExisting(profileStore.loadDraft())
        inputHost.setText(draft.host)
        inputUser.setText(draft.username)
        inputPass.setText(draft.password)
        inputName.setText(draft.name)
    }

    private fun setupDraftAutosave() {
        val watcher = object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = scheduleDraftSave()
            override fun afterTextChanged(s: Editable?) = Unit
        }
        inputHost.addTextChangedListener(watcher)
        inputUser.addTextChangedListener(watcher)
        inputPass.addTextChangedListener(watcher)
        inputName.addTextChangedListener(watcher)
    }

    private fun scheduleDraftSave() {
        draftRunnable?.let { draftHandler.removeCallbacks(it) }
        draftRunnable = Runnable { profileStore.saveDraft(currentDraft()) }
        draftHandler.postDelayed(draftRunnable!!, 350)
    }

    private fun currentDraft() = LoginDraft(
        host = inputHost.text?.toString().orEmpty(),
        username = inputUser.text?.toString().orEmpty(),
        password = inputPass.text?.toString().orEmpty(),
        name = inputName.text?.toString().orEmpty(),
    )

    private fun connect() {
        val host = HostUtils.normalize(inputHost.text?.toString()?.trim().orEmpty())
        val username = inputUser.text?.toString()?.trim().orEmpty()
        val password = inputPass.text?.toString().orEmpty()
        val displayName = inputName.text?.toString()?.trim().orEmpty().ifEmpty { username }

        if (host.isEmpty()) {
            showError("Introduce el servidor (ej: http://gadir.co:80)")
            return
        }
        if (username.isEmpty() || password.isEmpty()) {
            showError("Usuario y contraseña obligatorios")
            return
        }

        val existing = editingProfileId?.let { id ->
            profileStore.loadAll().firstOrNull { it.id == id }
        }
        val profile = Profile(
            name = displayName,
            host = host,
            username = username,
            password = password,
            avatarSeed = existing?.avatarSeed ?: displayName.hashCode(),
            mode = existing?.mode ?: "xtream",
            m3uUrl = existing?.m3uUrl.orEmpty(),
        )

        profileStore.saveDraft(currentDraft())
        loginError.visibility = View.GONE
        loginProgress.visibility = View.VISIBLE
        loginProgress.text = getString(R.string.connecting)
        btnConnect.isEnabled = false
        btnBack.isEnabled = false

        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                api.login(profile) { msg ->
                    runOnUiThread { loginProgress.text = msg }
                }
            }
            btnConnect.isEnabled = true
            btnBack.isEnabled = true

            if (result.ok) {
                profileStore.upsert(profile)
                profileStore.saveDraft(currentDraft())
                if (editingProfileId != null) {
                    val wasActive = profileStore.getActive()?.id == profile.id
                    if (wasActive) {
                        profileStore.setActive(profile)
                        startActivity(Intent(this@LoginActivity, BootstrapActivity::class.java))
                    }
                    finish()
                } else {
                    profileStore.setActive(profile)
                    startActivity(Intent(this@LoginActivity, BootstrapActivity::class.java))
                    finish()
                }
            } else {
                loginProgress.visibility = View.GONE
                showError(
                    buildString {
                        append(result.error ?: getString(R.string.connection_failed))
                        if (!result.diagnostic.isNullOrBlank()) {
                            append("\n")
                            append(result.diagnostic)
                        }
                    },
                )
            }
        }
    }

    private fun showError(message: String) {
        loginError.visibility = View.VISIBLE
        loginError.text = message
    }

    override fun onPause() {
        super.onPause()
        profileStore.saveDraft(currentDraft())
    }

    override fun onBackPressed() {
        if (profileStore.loadAll().isNotEmpty()) {
            startActivity(Intent(this, ProfilesActivity::class.java))
        }
        finish()
    }

    companion object {
        private const val EXTRA_PROFILE_ID = "profile_id"

        fun editIntent(context: Context, profile: Profile): Intent =
            Intent(context, LoginActivity::class.java)
                .putExtra(EXTRA_PROFILE_ID, profile.id)
    }
}

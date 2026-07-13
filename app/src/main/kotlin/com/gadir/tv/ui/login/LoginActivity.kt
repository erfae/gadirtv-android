package com.gadir.tv.ui.login

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.Editable
import android.text.TextWatcher
import android.view.KeyEvent
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
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
import com.google.android.material.textfield.TextInputEditText
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class LoginActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private lateinit var profileStore: ProfileStore
    private val draftHandler = Handler(Looper.getMainLooper())
    private var draftRunnable: Runnable? = null

    private lateinit var inputHost: TextInputEditText
    private lateinit var inputUser: TextInputEditText
    private lateinit var inputPass: TextInputEditText
    private lateinit var inputName: TextInputEditText
    private lateinit var loginError: TextView
    private lateinit var loginProgress: TextView
    private lateinit var btnConnect: MaterialButton
    private lateinit var btnBack: MaterialButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        setContentView(R.layout.activity_login)
        bindViews()
        loadDraft()
        setupDraftAutosave()

        btnConnect.setOnClickListener { connect() }
        btnBack.setOnClickListener { finish() }

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

    private fun bindViews() {
        inputHost = findViewById(R.id.inputHost)
        inputUser = findViewById(R.id.inputUser)
        inputPass = findViewById(R.id.inputPass)
        inputName = findViewById(R.id.inputName)
        loginError = findViewById(R.id.loginError)
        loginProgress = findViewById(R.id.loginProgress)
        btnConnect = findViewById(R.id.btnConnect)
        btnBack = findViewById(R.id.btnBack)
    }

    private fun loadDraft() {
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

        val profile = Profile(
            name = displayName,
            host = host,
            username = username,
            password = password,
            avatarSeed = displayName.hashCode(),
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
                profileStore.setActive(profile)
                profileStore.saveDraft(currentDraft())
                startActivity(Intent(this@LoginActivity, BootstrapActivity::class.java))
                finish()
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
}

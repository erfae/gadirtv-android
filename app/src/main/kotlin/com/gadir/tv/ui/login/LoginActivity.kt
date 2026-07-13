package com.gadir.tv.ui.login

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.gadir.tv.R
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.data.XtreamApi
import com.gadir.tv.model.Profile
import com.gadir.tv.ui.bootstrap.BootstrapActivity
import com.google.android.material.button.MaterialButton
import com.google.android.material.textfield.TextInputEditText
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class LoginActivity : AppCompatActivity() {
    private val api = XtreamApi()
    private lateinit var profileStore: ProfileStore

    private lateinit var inputHost: TextInputEditText
    private lateinit var inputUser: TextInputEditText
    private lateinit var inputPass: TextInputEditText
    private lateinit var inputName: TextInputEditText
    private lateinit var loginError: TextView
    private lateinit var loginProgress: TextView
    private lateinit var btnConnect: MaterialButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)

        val saved = profileStore.getActive()
        if (saved != null) {
            startActivity(Intent(this, BootstrapActivity::class.java))
            finish()
            return
        }

        setContentView(R.layout.activity_login)
        bindViews()
        btnConnect.setOnClickListener { connect() }
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
    }

    private fun connect() {
        val profile = Profile(
            name = inputName.text?.toString()?.trim().orEmpty().ifEmpty { inputUser.text?.toString()?.trim().orEmpty() },
            host = inputHost.text?.toString()?.trim().orEmpty(),
            username = inputUser.text?.toString()?.trim().orEmpty(),
            password = inputPass.text?.toString().orEmpty(),
        )

        loginError.visibility = View.GONE
        loginProgress.visibility = View.VISIBLE
        btnConnect.isEnabled = false

        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                api.login(profile) { msg ->
                    runOnUiThread { loginProgress.text = msg }
                }
            }
            btnConnect.isEnabled = true
            if (result.ok) {
                profileStore.saveActive(profile)
                startActivity(Intent(this@LoginActivity, BootstrapActivity::class.java))
                finish()
            } else {
                loginProgress.visibility = View.GONE
                loginError.visibility = View.VISIBLE
                loginError.text = buildString {
                    append(result.error ?: "Error de conexión")
                    if (!result.diagnostic.isNullOrBlank()) {
                        append("\n")
                        append(result.diagnostic)
                    }
                }
            }
        }
    }
}

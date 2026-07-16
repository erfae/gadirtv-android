package com.gadir.tv.ui.settings

import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.R
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.util.TvFocusHelper
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout

class ParentalControlActivity : BaseLocaleActivity() {
    private lateinit var parentalStore: ParentalControlStore
    private lateinit var pinStatus: TextView
    private lateinit var currentPinInput: TextInputEditText
    private lateinit var newPinInput: TextInputEditText
    private lateinit var confirmPinInput: TextInputEditText
    private lateinit var currentPinLayout: TextInputLayout
    private lateinit var newPinLayout: TextInputLayout
    private lateinit var confirmPinLayout: TextInputLayout

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        parentalStore = ParentalControlStore(this)
        setContentView(R.layout.activity_parental_control)

        pinStatus = findViewById(R.id.parentalPinStatus)
        currentPinInput = findViewById(R.id.parentalCurrentPinInput)
        newPinInput = findViewById(R.id.parentalNewPinInput)
        confirmPinInput = findViewById(R.id.parentalConfirmPinInput)
        currentPinLayout = findViewById(R.id.parentalCurrentPinLayout)
        newPinLayout = findViewById(R.id.parentalNewPinLayout)
        confirmPinLayout = findViewById(R.id.parentalConfirmPinLayout)

        TvFocusHelper.bindButton(findViewById(R.id.btnParentalBack)) { finish() }
        TvFocusHelper.bindButton(findViewById(R.id.btnSaveParentalPin)) { changePin() }

        refreshPinStatus()
    }

    private fun changePin() {
        val current = currentPinInput.text?.toString()?.trim().orEmpty()
        val newPin = newPinInput.text?.toString()?.trim().orEmpty()
        val confirm = confirmPinInput.text?.toString()?.trim().orEmpty()

        currentPinLayout.error = null
        newPinLayout.error = null
        confirmPinLayout.error = null

        if (current.length != ParentalControlStore.PIN_LENGTH) {
            currentPinLayout.error = getString(R.string.parental_pin_invalid)
            return
        }
        if (newPin.length != ParentalControlStore.PIN_LENGTH) {
            newPinLayout.error = getString(R.string.parental_pin_invalid)
            return
        }
        if (newPin != confirm) {
            confirmPinLayout.error = getString(R.string.parental_pin_mismatch)
            return
        }
        if (!parentalStore.changePin(current, newPin)) {
            currentPinLayout.error = getString(R.string.parental_pin_wrong)
            return
        }

        currentPinInput.text = null
        newPinInput.text = null
        confirmPinInput.text = null
        refreshPinStatus()
        Toast.makeText(this, R.string.parental_pin_saved, Toast.LENGTH_SHORT).show()
    }

    private fun refreshPinStatus() {
        pinStatus.text = getString(R.string.parental_pin_default_hint)
    }
}

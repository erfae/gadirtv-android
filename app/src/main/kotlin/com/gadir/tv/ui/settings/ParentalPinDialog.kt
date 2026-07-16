package com.gadir.tv.ui.settings

import android.content.Context
import android.view.LayoutInflater
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.gadir.tv.R
import com.gadir.tv.data.ParentalControlStore
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout

object ParentalPinDialog {
    fun show(
        context: Context,
        message: String,
        onVerified: () -> Unit,
    ) {
        val store = ParentalControlStore(context)
        val view = LayoutInflater.from(context).inflate(R.layout.dialog_parental_pin, null)
        view.findViewById<TextView>(R.id.parentalPinMessage).text = message
        val input = view.findViewById<TextInputEditText>(R.id.parentalPinInput)
        val layout = view.findViewById<TextInputLayout>(R.id.parentalPinLayout)

        val dialog = MaterialAlertDialogBuilder(context)
            .setTitle(R.string.parental_pin_title)
            .setView(view)
            .setNegativeButton(R.string.parental_pin_cancel, null)
            .setPositiveButton(R.string.parental_pin_unlock, null)
            .create()

        dialog.setOnShowListener {
            dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener {
                val pin = input.text?.toString()?.trim().orEmpty()
                if (pin.length != ParentalControlStore.PIN_LENGTH) {
                    layout.error = context.getString(R.string.parental_pin_invalid)
                    return@setOnClickListener
                }
                layout.error = null
                if (!store.verifyPin(pin)) {
                    Toast.makeText(context, R.string.parental_pin_wrong, Toast.LENGTH_SHORT).show()
                    return@setOnClickListener
                }
                dialog.dismiss()
                onVerified()
            }
            input.requestFocus()
        }
        dialog.show()
    }
}

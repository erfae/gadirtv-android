package com.gadir.tv.util

import android.content.Context
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(context: Context, rawUrl: String, title: String = "") {
        val sources = TrailerResolver.resolveAll(rawUrl, title)
        if (sources.isEmpty()) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
            return
        }
        // Deliberately does NOT launch the external YouTube app: on Android TV that forces
        // the user through a Google account picker, and leaves them stuck browsing/playing
        // in YouTube itself once the trailer ends with no way back into Gadir TV. The
        // in-app embedded player (TrailerActivity) keeps the whole experience inside the app.
        context.startActivity(TrailerActivity.intent(context, rawUrl, title))
    }
}

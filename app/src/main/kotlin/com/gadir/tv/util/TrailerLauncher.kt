package com.gadir.tv.util

import android.content.Context
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(
        context: Context,
        rawUrl: String,
        title: String = "",
        isSeries: Boolean = false,
        releaseDate: String = "",
        tmdbId: Int = 0,
    ) {
        if (!TrailerAvailability.hasTrailer(title, rawUrl, isSeries, releaseDate)) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
            return
        }
        context.startActivity(
            TrailerActivity.intent(
                context = context,
                url = rawUrl,
                title = title,
                isSeries = isSeries,
                releaseDate = releaseDate,
                tmdbId = tmdbId,
            ),
        )
    }
}

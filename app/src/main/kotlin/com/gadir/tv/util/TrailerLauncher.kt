package com.gadir.tv.util

import android.content.Context
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.data.TmdbApi
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    fun open(
        context: Context,
        rawUrl: String,
        title: String = "",
        isSeries: Boolean = false,
        releaseDate: String = "",
    ) {
        val hasPanelUrl = rawUrl.isNotBlank() && TrailerResolver.resolveAll(rawUrl, title).isNotEmpty()
        if (!hasPanelUrl && title.isBlank()) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_LONG).show()
            return
        }
        if (!hasPanelUrl && !TmdbApi.isConfigured()) {
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
            ),
        )
    }
}

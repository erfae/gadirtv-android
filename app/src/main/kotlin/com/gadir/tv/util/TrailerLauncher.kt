package com.gadir.tv.util

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import com.gadir.tv.R

object TrailerLauncher {
    private val youtubePackages = listOf(
        "com.google.android.youtube.tv",
        "com.google.android.youtube",
    )

    fun open(context: Context, rawUrl: String) {
        val url = MetaExtractor.normalizeTrailerUrl(rawUrl) ?: rawUrl.trim()
        if (url.isEmpty()) return

        val uri = Uri.parse(url)
        for (pkg in youtubePackages) {
            val intent = Intent(Intent.ACTION_VIEW, uri).setPackage(pkg)
            if (intent.resolveActivity(context.packageManager) != null) {
                context.startActivity(intent)
                return
            }
        }

        val generic = Intent(Intent.ACTION_VIEW, uri)
        if (generic.resolveActivity(context.packageManager) != null) {
            context.startActivity(generic)
        } else {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_SHORT).show()
        }
    }
}

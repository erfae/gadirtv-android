package com.gadir.tv.util

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.ui.player.TrailerActivity

object TrailerLauncher {
    private val youtubePackages = listOf(
        "com.google.android.youtube.tv",
        "com.google.android.youtube",
    )

    fun open(context: Context, rawUrl: String, title: String = "") {
        val url = MetaExtractor.normalizeTrailerUrl(rawUrl) ?: return
        if (url.isEmpty()) return

        val videoId = extractYoutubeId(url)
        if (videoId != null && openYoutube(context, videoId)) return

        context.startActivity(TrailerActivity.intent(context, url, title))
    }

    private fun openYoutube(context: Context, videoId: String): Boolean {
        val uri = Uri.parse("https://www.youtube.com/watch?v=$videoId")
        for (pkg in youtubePackages) {
            val intent = Intent(Intent.ACTION_VIEW, uri).apply {
                setPackage(pkg)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            if (intent.resolveActivity(context.packageManager) != null) {
                return try {
                    context.startActivity(intent)
                    true
                } catch (_: Exception) {
                    false
                }
            }
        }
        val generic = Intent(Intent.ACTION_VIEW, uri).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        return try {
            if (generic.resolveActivity(context.packageManager) != null) {
                context.startActivity(generic)
                true
            } else {
                false
            }
        } catch (_: Exception) {
            Toast.makeText(context, R.string.trailer_unavailable, Toast.LENGTH_SHORT).show()
            false
        }
    }

    private fun extractYoutubeId(url: String): String? {
        val patterns = listOf(
            Regex("(?:youtube\\.com/watch\\?v=|youtu\\.be/|youtube\\.com/embed/)([\\w-]{6,})"),
            Regex("^([\\w-]{11})$"),
        )
        for (pattern in patterns) {
            val match = pattern.find(url)
            if (match != null) return match.groupValues[1]
        }
        return null
    }
}

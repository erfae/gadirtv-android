package com.gadir.tv.player

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.ui.player.PlayerActivity

object ExternalPlayerHelper {
    private val videoMimeTypes = listOf(
        "video/*",
        "application/vnd.apple.mpegurl",
        "application/x-mpegURL",
    )

    fun findInstalledPlayers(context: Context): List<ExternalPlayerApp> {
        val pm = context.packageManager
        val ownPackage = context.packageName
        val found = linkedMapOf<String, ExternalPlayerApp>()

        for (mime in videoMimeTypes) {
            val intent = Intent(Intent.ACTION_VIEW).setType(mime)
            val activities = pm.queryIntentActivities(
                intent,
                PackageManager.MATCH_DEFAULT_ONLY,
            )
            for (resolve in activities) {
                val pkg = resolve.activityInfo.packageName
                if (pkg == ownPackage) continue
                if (pkg in found) continue
                val label = resolve.loadLabel(pm)?.toString()?.trim().orEmpty()
                    .ifBlank { pkg }
                found[pkg] = ExternalPlayerApp(packageName = pkg, label = label)
            }
        }

        return found.values.sortedBy { it.label.lowercase() }
    }

    fun launch(
        context: Context,
        packageName: String,
        url: String,
        title: String,
    ): Boolean {
        if (url.isBlank()) return false
        val uri = Uri.parse(url)
        for (mime in videoMimeTypes) {
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(uri, mime)
                setPackage(packageName)
                putExtra(Intent.EXTRA_TITLE, title)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            if (intent.resolveActivity(context.packageManager) != null) {
                context.startActivity(intent)
                return true
            }
        }
        val fallback = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(uri, "video/*")
            setPackage(packageName)
            putExtra(Intent.EXTRA_TITLE, title)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        return try {
            context.startActivity(fallback)
            true
        } catch (_: Exception) {
            false
        }
    }
}

object PlaybackLauncher {
    fun play(context: Context, request: PlaybackRequest) {
        val settings = AppSettings(context)
        if (!settings.isExternalPlayer) {
            launchInternal(context, request)
            return
        }

        val players = ExternalPlayerHelper.findInstalledPlayers(context)
        if (players.isEmpty()) {
            Toast.makeText(
                context,
                context.getString(R.string.settings_no_external_player),
                Toast.LENGTH_LONG,
            ).show()
            launchInternal(context, request)
            return
        }

        var packageName = settings.externalPlayerPackage
        if (packageName.isBlank() || players.none { it.packageName == packageName }) {
            if (players.size == 1) {
                packageName = players.first().packageName
                settings.externalPlayerPackage = packageName
            } else {
                Toast.makeText(
                    context,
                    context.getString(R.string.settings_pick_external_player),
                    Toast.LENGTH_LONG,
                ).show()
                launchInternal(context, request)
                return
            }
        }

        val launched = ExternalPlayerHelper.launch(
            context = context,
            packageName = packageName,
            url = request.url,
            title = request.title,
        )
        if (!launched) {
            Toast.makeText(
                context,
                context.getString(R.string.settings_external_player_failed),
                Toast.LENGTH_LONG,
            ).show()
            launchInternal(context, request)
        }
    }

    private fun launchInternal(context: Context, request: PlaybackRequest) {
        context.startActivity(
            PlayerActivity.intent(
                context = context,
                title = request.title,
                url = request.url,
                kind = request.kind,
                contentId = request.contentId,
                imageUrl = request.imageUrl,
                extension = request.extension,
                positionMs = request.positionMs,
                streamId = request.streamId,
            ),
        )
    }

    fun playbackKindLive(): String = ResumeStore.KIND_LIVE
    fun playbackKindMovie(): String = ResumeStore.KIND_MOVIE
    fun playbackKindSeries(): String = ResumeStore.KIND_SERIES
}

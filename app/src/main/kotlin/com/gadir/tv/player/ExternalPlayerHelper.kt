package com.gadir.tv.player

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri

data class ExternalPlayerApp(
    val packageName: String,
    val label: String,
)

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
            val activities = pm.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY)
            for (resolve in activities) {
                val pkg = resolve.activityInfo.packageName
                if (pkg == ownPackage || pkg in found) continue
                val label = resolve.loadLabel(pm)?.toString()?.trim().orEmpty().ifBlank { pkg }
                found[pkg] = ExternalPlayerApp(packageName = pkg, label = label)
            }
        }
        return found.values.sortedBy { it.label.lowercase() }
    }

    fun launch(context: Context, packageName: String, url: String, title: String): Boolean {
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
        return try {
            context.startActivity(
                Intent(Intent.ACTION_VIEW).apply {
                    setDataAndType(uri, "video/*")
                    setPackage(packageName)
                    putExtra(Intent.EXTRA_TITLE, title)
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                },
            )
            true
        } catch (_: Exception) {
            false
        }
    }
}

package com.gadir.tv.player

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri

data class ExternalPlayerApp(
    val packageName: String,
    val label: String,
)

object ExternalPlayerHelper {
    private val knownPlayers = listOf(
        "org.videolan.vlc" to "VLC",
        "com.mxtech.videoplayer.ad" to "MX Player",
        "com.mxtech.videoplayer.pro" to "MX Player Pro",
        "com.bsplayer.bspandroid.free" to "BSPlayer",
        "com.archos.video" to "Archos Video",
    )

    private val videoMimeTypes = listOf(
        "video/*",
        "application/vnd.apple.mpegurl",
        "application/x-mpegURL",
    )

    fun findInstalledPlayers(context: Context): List<ExternalPlayerApp> {
        val pm = context.packageManager
        val ownPackage = context.packageName
        val found = linkedMapOf<String, ExternalPlayerApp>()

        for ((pkg, label) in knownPlayers) {
            if (pkg == ownPackage) continue
            if (pm.getLaunchIntentForPackage(pkg) != null ||
                runCatching { pm.getPackageInfo(pkg, 0) }.isSuccess
            ) {
                found[pkg] = ExternalPlayerApp(packageName = pkg, label = label)
            }
        }

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

        buildKnownPlayerIntents(packageName, uri, title).forEach { intent ->
            if (intent.resolveActivity(context.packageManager) != null) {
                return try {
                    context.startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                    true
                } catch (_: Exception) {
                    false
                }
            }
        }

        for (mime in videoMimeTypes) {
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(uri, mime)
                setPackage(packageName)
                putExtra(Intent.EXTRA_TITLE, title)
                putExtra("title", title)
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

    private fun buildKnownPlayerIntents(packageName: String, uri: Uri, title: String): List<Intent> {
        fun baseIntent() = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(uri, "video/*")
            putExtra(Intent.EXTRA_TITLE, title)
            putExtra("title", title)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        return when (packageName) {
            "org.videolan.vlc" -> listOf(
                baseIntent().apply {
                    setPackage(packageName)
                    component = ComponentName(
                        packageName,
                        "org.videolan.vlc.gui.video.VideoPlayerActivity",
                    )
                },
                baseIntent().setPackage(packageName),
            )
            "com.mxtech.videoplayer.ad", "com.mxtech.videoplayer.pro" -> listOf(
                baseIntent().apply {
                    setPackage(packageName)
                    component = ComponentName(packageName, "$packageName.ActivityScreen")
                },
                baseIntent().setPackage(packageName),
            )
            else -> listOf(baseIntent().setPackage(packageName))
        }
    }
}

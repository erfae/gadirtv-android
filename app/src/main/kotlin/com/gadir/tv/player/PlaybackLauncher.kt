package com.gadir.tv.player

import android.content.Context
import android.widget.Toast
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.ui.player.PlayerActivity

object PlaybackLauncher {
    fun play(context: Context, request: PlaybackRequest) {
        val settings = AppSettings(context)
        when (settings.playerMode) {
            AppSettings.PLAYER_EXTERNAL -> launchExternal(context, request, settings)
            else -> launchInternal(context, request)
        }
    }

    private fun launchExternal(context: Context, request: PlaybackRequest, settings: AppSettings) {
        val players = ExternalPlayerHelper.findInstalledPlayers(context)
        if (players.isEmpty()) {
            Toast.makeText(context, R.string.settings_no_external_player, Toast.LENGTH_LONG).show()
            launchInternal(context, request)
            return
        }

        var packageName = settings.externalPlayerPackage
        if (packageName.isBlank() || players.none { it.packageName == packageName }) {
            if (players.size == 1) {
                packageName = players.first().packageName
                settings.externalPlayerPackage = packageName
            } else {
                Toast.makeText(context, R.string.settings_pick_external_player, Toast.LENGTH_LONG).show()
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
            Toast.makeText(context, R.string.settings_external_player_failed, Toast.LENGTH_LONG).show()
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
                alternateUrls = request.alternateUrls,
            ),
        )
    }
}

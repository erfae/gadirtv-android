package com.gadir.tv.player

import android.content.Context
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.ui.player.PlayerActivity
import com.gadir.tv.ui.player.VlcPlayerActivity
import com.gadir.tv.util.DeviceUi

object PlaybackLauncher {
    fun play(context: Context, request: PlaybackRequest) {
        if (request.url.isBlank()) return
        val settings = AppSettings(context)
        try {
            when {
                settings.playerMode == AppSettings.PLAYER_EXTERNAL ->
                    launchExternal(context, request, settings)
                settings.playerMode == AppSettings.PLAYER_VLC && !preferExoOnTv(context) ->
                    launchVlc(context, request)
                else -> launchExo(context, request)
            }
        } catch (_: Throwable) {
            android.widget.Toast.makeText(
                context,
                com.gadir.tv.R.string.series_playback_failed,
                android.widget.Toast.LENGTH_LONG,
            ).show()
        }
    }

    /** TV: ExoPlayer (HW decode) is far more stable than libVLC on Xiaomi/Amlogic boxes. */
    private fun preferExoOnTv(context: Context): Boolean = DeviceUi.isTvUi(context)

    private fun launchExternal(context: Context, request: PlaybackRequest, settings: AppSettings) {
        val players = ExternalPlayerHelper.findInstalledPlayers(context)
        if (players.isEmpty()) {
            android.widget.Toast.makeText(context, com.gadir.tv.R.string.settings_no_external_player, android.widget.Toast.LENGTH_LONG).show()
            launchExo(context, request)
            return
        }

        var packageName = settings.externalPlayerPackage
        if (packageName.isBlank() || players.none { it.packageName == packageName }) {
            if (players.size == 1) {
                packageName = players.first().packageName
                settings.externalPlayerPackage = packageName
            } else {
                android.widget.Toast.makeText(context, com.gadir.tv.R.string.settings_pick_external_player, android.widget.Toast.LENGTH_LONG).show()
                launchExo(context, request)
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
            android.widget.Toast.makeText(context, com.gadir.tv.R.string.settings_external_player_failed, android.widget.Toast.LENGTH_LONG).show()
            launchExo(context, request)
        }
    }

    private fun launchVlc(context: Context, request: PlaybackRequest) {
        context.startActivity(
            VlcPlayerActivity.intent(
                context = context,
                title = request.title,
                url = request.url,
                alternateUrls = request.alternateUrls,
                streamId = request.streamId,
                epgChannelId = request.epgChannelId,
                positionMs = request.positionMs,
                kind = request.kind,
                contentId = request.contentId,
                imageUrl = request.imageUrl,
                extension = request.extension,
            ),
        )
    }

    private fun launchExo(context: Context, request: PlaybackRequest) {
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

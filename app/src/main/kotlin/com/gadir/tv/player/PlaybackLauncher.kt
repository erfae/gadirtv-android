package com.gadir.tv.player

import android.content.Context
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.ui.player.PlayerActivity
import com.gadir.tv.ui.player.VlcPlayerActivity
import com.gadir.tv.util.DeviceUi

object PlaybackLauncher {
    fun play(context: Context, request: PlaybackRequest) {
        if (request.url.isBlank()) {
            android.widget.Toast.makeText(
                context,
                com.gadir.tv.R.string.series_playback_failed,
                android.widget.Toast.LENGTH_LONG,
            ).show()
            return
        }
        val settings = AppSettings(context)
        try {
            when {
                settings.playerMode == AppSettings.PLAYER_EXTERNAL ->
                    launchExternal(context, request, settings)
                settings.playerMode == AppSettings.PLAYER_VLC ->
                    launchVlc(context, request)
                settings.playerMode == AppSettings.PLAYER_COMPAT ->
                    launchExo(context, request)
                useVlcOnTv(context, request) ->
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

    /**
     * Amlogic TV boxes: libVLC for VOD (proven on your hardware), Exo for live/preview.
     * Matches PLUME4KV2 + IBO Pro fallback pattern (native VLC, Exo optional).
     */
    private fun useVlcOnTv(context: Context, request: PlaybackRequest): Boolean {
        if (!DeviceUi.isTvUi(context)) return false
        return request.kind != ResumeStore.KIND_LIVE
    }

    private fun vodFallback(context: Context, request: PlaybackRequest) {
        if (useVlcOnTv(context, request)) launchVlc(context, request) else launchExo(context, request)
    }

    private fun launchExternal(context: Context, request: PlaybackRequest, settings: AppSettings) {
        val players = ExternalPlayerHelper.findInstalledPlayers(context)
        if (players.isEmpty()) {
            android.widget.Toast.makeText(context, com.gadir.tv.R.string.settings_no_external_player, android.widget.Toast.LENGTH_LONG).show()
            vodFallback(context, request)
            return
        }

        var packageName = settings.externalPlayerPackage
        if (packageName.isBlank() || players.none { it.packageName == packageName }) {
            if (players.size == 1) {
                packageName = players.first().packageName
                settings.externalPlayerPackage = packageName
            } else {
                android.widget.Toast.makeText(context, com.gadir.tv.R.string.settings_pick_external_player, android.widget.Toast.LENGTH_LONG).show()
                vodFallback(context, request)
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
            vodFallback(context, request)
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

package com.gadir.tv.player

import android.content.Context
import com.gadir.tv.ui.player.PlayerActivity

object PlaybackLauncher {
    fun play(context: Context, request: PlaybackRequest) {
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
}

package com.gadir.tv.player

import android.content.Context
import androidx.appcompat.app.AlertDialog
import com.gadir.tv.R
import com.gadir.tv.data.ResumeStore
import com.gadir.tv.util.DeviceUi

object ResumePlaybackHelper {
    private const val MIN_RESUME_MS = 15_000L

    fun play(context: Context, request: PlaybackRequest, resumeStore: ResumeStore) {
        if (request.positionMs > 0L) {
            PlaybackLauncher.play(context, request)
            return
        }
        val record = resumeStore.get(request.kind, request.contentId)
        if (record == null || record.positionMs < MIN_RESUME_MS) {
            PlaybackLauncher.play(context, request)
            return
        }
        // AlertDialog often fails to receive focus on Android TV; resume from saved position.
        if (DeviceUi.isTvUi(context)) {
            PlaybackLauncher.play(
                context,
                request.copy(positionMs = record.positionMs),
            )
            return
        }
        AlertDialog.Builder(context)
            .setTitle(R.string.playback_exit_title)
            .setMessage(R.string.playback_exit_message)
            .setPositiveButton(R.string.playback_continue) { _, _ ->
                PlaybackLauncher.play(
                    context,
                    request.copy(positionMs = record.positionMs),
                )
            }
            .setNegativeButton(R.string.playback_restart) { _, _ ->
                resumeStore.remove(request.kind, request.contentId)
                PlaybackLauncher.play(context, request)
            }
            .show()
    }
}

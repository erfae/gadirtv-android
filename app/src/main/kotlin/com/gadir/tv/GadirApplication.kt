package com.gadir.tv

import android.app.Application
import android.content.Context
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.ProcessLifecycleOwner
import com.gadir.tv.data.AppSettings
import com.gadir.tv.data.ParentalSession
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.LocaleHelper

class GadirApplication : Application() {
    override fun attachBaseContext(base: Context) {
        super.attachBaseContext(LocaleHelper.wrap(base))
    }

    override fun onCreate() {
        super.onCreate()
        migrateTvDefaults()
        ProcessLifecycleOwner.get().lifecycle.addObserver(
            object : DefaultLifecycleObserver {
                override fun onStop(owner: LifecycleOwner) {
                    ParentalSession.clear()
                }
            },
        )
    }

    /** Older builds defaulted to VLC on TV — migrate to Exo (stable HW decode). */
    private fun migrateTvDefaults() {
        if (!DeviceUi.isTvUi(this)) return
        val settings = AppSettings(this)
        if (settings.playerMode == AppSettings.PLAYER_VLC) {
            settings.playerMode = AppSettings.PLAYER_STANDARD
        }
        ProfileStore(this).loadAll()
    }
}

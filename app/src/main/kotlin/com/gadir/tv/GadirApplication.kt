package com.gadir.tv

import android.app.Application
import android.content.Context
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.ProcessLifecycleOwner
import com.gadir.tv.data.ContentPreloader
import com.gadir.tv.data.LiveStreamSupervisor
import com.gadir.tv.data.ParentalSession
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.util.LocaleHelper
import java.net.CookieHandler
import java.net.CookieManager
import java.net.CookiePolicy

class GadirApplication : Application() {
    override fun attachBaseContext(base: Context) {
        super.attachBaseContext(LocaleHelper.wrap(base))
    }

    override fun onCreate() {
        super.onCreate()
        CookieHandler.setDefault(
            CookieManager().apply { setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER) },
        )
        migrateTvDefaults()
        ProcessLifecycleOwner.get().lifecycle.addObserver(
            object : DefaultLifecycleObserver {
                override fun onStop(owner: LifecycleOwner) {
                    ParentalSession.clear()
                    LiveStreamSupervisor.stopAllLiveStreams()
                    ContentPreloader.cancelBackgroundPreload()
                }
            },
        )
    }

    private fun migrateTvDefaults() {
        ProfileStore(this).loadAll()
    }
}

package com.gadir.tv

import android.app.Application
import android.content.Context
import com.gadir.tv.util.LocaleHelper

class GadirApplication : Application() {
    override fun attachBaseContext(base: Context) {
        super.attachBaseContext(LocaleHelper.wrap(base))
    }
}

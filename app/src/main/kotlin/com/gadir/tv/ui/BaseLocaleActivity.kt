package com.gadir.tv.ui

import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import com.gadir.tv.util.LocaleHelper

open class BaseLocaleActivity : AppCompatActivity() {
    override fun attachBaseContext(newBase: Context) {
        super.attachBaseContext(LocaleHelper.wrap(newBase))
    }
}

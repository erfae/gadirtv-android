package com.gadir.tv.data

import android.content.Context

class LiveChannelStore(context: Context) {
    private val prefs = (context.applicationContext ?: context)
        .getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    var lastStreamId: Int
        get() = prefs.getInt(KEY_LAST_STREAM, 0)
        set(value) = prefs.edit().putInt(KEY_LAST_STREAM, value).apply()

    var lastCategoryId: String?
        get() = prefs.getString(KEY_LAST_CATEGORY, null)
        set(value) = prefs.edit().putString(KEY_LAST_CATEGORY, value).apply()

    companion object {
        private const val PREFS = "gadirtv_live"
        private const val KEY_LAST_STREAM = "last_stream_id"
        private const val KEY_LAST_CATEGORY = "last_category_id"
    }
}

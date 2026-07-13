package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.Profile
import com.google.gson.Gson

class ProfileStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()

    fun saveActive(profile: Profile) {
        prefs.edit()
            .putString(KEY_ACTIVE, gson.toJson(profile))
            .apply()
    }

    fun getActive(): Profile? {
        val raw = prefs.getString(KEY_ACTIVE, null) ?: return null
        return try {
            gson.fromJson(raw, Profile::class.java)
        } catch (_: Exception) {
            null
        }
    }

    fun clearActive() {
        prefs.edit().remove(KEY_ACTIVE).apply()
    }

    companion object {
        private const val PREFS = "gadirtv_prefs"
        private const val KEY_ACTIVE = "active_profile"
    }
}

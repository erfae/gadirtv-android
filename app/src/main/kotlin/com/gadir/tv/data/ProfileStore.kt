package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.LoginDraft
import com.gadir.tv.model.Profile
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

class ProfileStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()

    fun loadAll(): List<Profile> {
        val raw = prefs.getString(KEY_PROFILES, null) ?: return emptyList()
        return try {
            val type = object : TypeToken<List<Profile>>() {}.type
            gson.fromJson<List<Profile>>(raw, type) ?: emptyList()
        } catch (_: Exception) {
            emptyList()
        }
    }

    fun saveAll(profiles: List<Profile>) {
        prefs.edit()
            .putString(KEY_PROFILES, gson.toJson(profiles))
            .apply()
    }

    fun upsert(profile: Profile): List<Profile> {
        val all = loadAll().toMutableList()
        val idx = all.indexOfFirst { it.id == profile.id }
        if (idx >= 0) {
            all[idx] = profile
        } else {
            all.add(profile)
        }
        saveAll(all)
        return all
    }

    fun remove(profile: Profile): List<Profile> {
        val all = loadAll().filter { it.id != profile.id }
        saveAll(all)
        if (getActive()?.id == profile.id) {
            clearActive()
        }
        return all
    }

    fun setActive(profile: Profile?) {
        if (profile == null) {
            clearActive()
        } else {
            prefs.edit()
                .putString(KEY_ACTIVE, gson.toJson(profile))
                .apply()
        }
    }

    fun saveActive(profile: Profile) = setActive(profile)

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

    fun loadDraft(): LoginDraft {
        val raw = prefs.getString(KEY_DRAFT, null) ?: return LoginDraft()
        return try {
            gson.fromJson(raw, LoginDraft::class.java) ?: LoginDraft()
        } catch (_: Exception) {
            LoginDraft()
        }
    }

    fun saveDraft(draft: LoginDraft) {
        prefs.edit()
            .putString(KEY_DRAFT, gson.toJson(draft))
            .apply()
    }

    fun clearDraft() {
        prefs.edit().remove(KEY_DRAFT).apply()
    }

    companion object {
        private const val PREFS = "gadirtv_prefs"
        private const val KEY_PROFILES = "gp"
        private const val KEY_ACTIVE = "ga"
        private const val KEY_DRAFT = "login_draft"
    }
}

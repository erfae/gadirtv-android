package com.gadir.tv.data

import android.content.Context
import com.gadir.tv.model.LoginDraft
import com.gadir.tv.model.Profile
import com.gadir.tv.net.PanelHttp
import com.gadir.tv.util.DefaultCredentials
import com.gadir.tv.util.HostUtils
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

class ProfileStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()

    fun loadAll(): List<Profile> {
        val raw = prefs.getString(KEY_PROFILES, null) ?: return emptyList()
        return try {
            val type = object : TypeToken<List<Profile>>() {}.type
            val original = gson.fromJson<List<Profile>>(raw, type) ?: emptyList()
            val migrated = original.map { normalizeProfile(it) }
            if (original.zip(migrated).any { (before, after) -> before.host != after.host }) {
                saveAll(migrated)
            }
            migrated
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
        val normalized = normalizeProfile(profile)
        val all = loadAll().toMutableList()
        val idx = all.indexOfFirst { it.id == normalized.id }
        if (idx >= 0) {
            all[idx] = normalized
        } else {
            all.add(normalized)
        }
        saveAll(all)
        return all
    }

    fun rename(profile: Profile, newName: String): Profile {
        val trimmed = newName.trim()
        val updated = normalizeProfile(profile.copy(name = trimmed))
        upsert(updated)
        if (getActive()?.id == profile.id) {
            setActive(updated)
        }
        return updated
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
                .putString(KEY_ACTIVE, gson.toJson(normalizeProfile(profile)))
                .apply()
        }
    }

    fun saveActive(profile: Profile) = setActive(profile)

    fun getActive(): Profile? {
        val raw = prefs.getString(KEY_ACTIVE, null) ?: return null
        return try {
            normalizeProfile(gson.fromJson(raw, Profile::class.java))
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
            val draft = gson.fromJson(raw, LoginDraft::class.java) ?: LoginDraft()
            val migrated = migrateDraft(draft)
            if (migrated.host != draft.host) {
                saveDraft(migrated)
            }
            migrated
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

    private fun normalizeProfile(p: Profile): Profile =
        p.copy(host = migrateHost(p.host))

    private fun migrateDraft(draft: LoginDraft): LoginDraft =
        draft.copy(host = migrateHost(draft.host))

    private fun migrateHost(host: String): String {
        val normalized = HostUtils.baseUrl(host)
        val migrated = when {
            normalized.contains("derektv.vip", ignoreCase = true) -> DefaultCredentials.HOST
            normalized.contains(PanelHttp.GADIR_HOST, ignoreCase = true) -> DefaultCredentials.HOST
            else -> normalized
        }
        return PanelHttp.migrateProfileHost(migrated)
    }

    companion object {
        private const val PREFS = "gadirtv_prefs"
        private const val KEY_PROFILES = "gp"
        private const val KEY_ACTIVE = "ga"
        private const val KEY_DRAFT = "login_draft"
    }
}

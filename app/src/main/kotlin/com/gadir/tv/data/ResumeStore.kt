package com.gadir.tv.data

import android.content.Context
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.reflect.TypeToken

class ResumeStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val gson = Gson()

    data class Record(
        val kind: String,
        val id: String,
        val positionMs: Long,
        val durationMs: Long,
        val updatedAt: Long,
        val title: String,
        val imageUrl: String,
        val extension: String,
    ) {
        val progressPercent: Int
            get() = if (durationMs > 0) {
                ((positionMs * 100) / durationMs).toInt().coerceIn(0, 99)
            } else {
                0
            }
    }

    fun loadAll(): List<Record> {
        val raw = prefs.getString(KEY, null) ?: return emptyList()
        return try {
            val type = object : TypeToken<Map<String, JsonObject>>() {}.type
            val map: Map<String, JsonObject> = gson.fromJson(raw, type) ?: emptyMap()
            map.mapNotNull { (key, json) -> parseRecord(key, json) }
                .sortedByDescending { it.updatedAt }
        } catch (_: Exception) {
            emptyList()
        }
    }

    fun get(kind: String, id: String): Record? =
        loadAll().firstOrNull { it.kind == kind && it.id == id }

    fun save(
        kind: String,
        id: String,
        positionMs: Long,
        durationMs: Long,
        title: String,
        imageUrl: String,
        extension: String,
    ) {
        if (durationMs <= 0L || kind == KIND_LIVE) return
        val all = loadAll().associateBy { "${it.kind}:${it.id}" }.toMutableMap()
        val key = "$kind:$id"
        val ratio = positionMs.toDouble() / durationMs.toDouble()
        when {
            ratio > COMPLETE_THRESHOLD || positionMs < MIN_POSITION_MS -> all.remove(key)
            else -> all[key] = Record(
                kind = kind,
                id = id,
                positionMs = positionMs,
                durationMs = durationMs,
                updatedAt = System.currentTimeMillis(),
                title = title,
                imageUrl = imageUrl,
                extension = extension,
            )
        }
        if (all.size > MAX_ENTRIES) {
            all.values.sortedBy { it.updatedAt }
                .take(all.size - MAX_ENTRIES)
                .forEach { all.remove("${it.kind}:${it.id}") }
        }
        val jsonMap = all.mapKeys { it.key }.mapValues { (_, record) ->
            mapOf(
                "pos" to record.positionMs,
                "dur" to record.durationMs,
                "ts" to record.updatedAt,
                "title" to record.title,
                "img" to record.imageUrl,
                "ext" to record.extension,
            )
        }
        prefs.edit().putString(KEY, gson.toJson(jsonMap)).apply()
    }

    private fun parseRecord(key: String, json: JsonObject): Record? {
        val parts = key.split(":", limit = 2)
        if (parts.size != 2) return null
        val kind = parts[0]
        val id = parts[1]
        val positionMs = json.get("pos")?.asLong ?: return null
        val durationMs = json.get("dur")?.asLong ?: return null
        return Record(
            kind = kind,
            id = id,
            positionMs = positionMs,
            durationMs = durationMs,
            updatedAt = json.get("ts")?.asLong ?: 0L,
            title = json.get("title")?.asString.orEmpty(),
            imageUrl = json.get("img")?.asString.orEmpty(),
            extension = json.get("ext")?.asString ?: "mp4",
        )
    }

    companion object {
        const val KIND_MOVIE = "movie"
        const val KIND_SERIES = "series"
        const val KIND_LIVE = "live"
        private const val PREFS = "gadirtv_prefs"
        private const val KEY = "gr"
        private const val MAX_ENTRIES = 50
        private const val COMPLETE_THRESHOLD = 0.94
        private const val MIN_POSITION_MS = 15_000L
    }
}

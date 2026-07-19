package com.gadir.tv.util

import com.gadir.tv.model.LoginDraft
import com.gadir.tv.model.Profile

/** Credenciales por defecto para desarrollo / pruebas en TV Box. */
object DefaultCredentials {
    const val HOST = "http://51.91.120.175"
    const val USERNAME = "seismeses01"
    const val PASSWORD = "3d13zxs5oz"
    const val NAME = "RAFA"

    fun profile(): Profile = Profile(
        name = NAME,
        host = HOST,
        username = USERNAME,
        password = PASSWORD,
        avatarSeed = NAME.hashCode(),
    )

    fun draft(): LoginDraft = LoginDraft(
        host = HOST,
        username = USERNAME,
        password = PASSWORD,
        name = NAME,
    )

    fun draftOrExisting(existing: LoginDraft): LoginDraft {
        if (existing.host.isNotBlank() || existing.username.isNotBlank()) return existing
        return draft()
    }
}

package com.gadir.tv.nativeapp.model

data class Profile(
    val name: String,
    val host: String,
    val username: String,
    val password: String,
) {
    val id: String get() = "$host|$username"
}

data class Category(
    val id: String,
    val name: String,
)

data class LiveChannel(
    val streamId: Int,
    val name: String,
    val icon: String,
    val categoryId: String,
)

data class LoginResult(
    val ok: Boolean,
    val error: String? = null,
    val diagnostic: String? = null,
)

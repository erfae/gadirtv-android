package com.gadir.tv.ui.detail

import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.CastMember
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.RecyclerViewUtil
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

object VodDetailUi {
    fun formatAddedDate(timestamp: Long): String {
        if (timestamp <= 0L) return ""
        val millis = if (timestamp < 1_000_000_000_000L) timestamp * 1000L else timestamp
        return SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(Date(millis))
    }

    fun formatTitle(name: String, releaseDate: String): String {
        val year = releaseDate.trim().take(4).takeIf { it.length == 4 && it.all { ch -> ch.isDigit() } }
        return if (!year.isNullOrBlank() && !name.contains(year)) "$name - $year" else name
    }

    fun ratingStars(rating: String): Pair<String, String> {
        val value = rating.replace(",", ".").toFloatOrNull() ?: return "" to ""
        val normalized = when {
            value <= 5f -> value
            value <= 10f -> value / 2f
            else -> 5f
        }.coerceIn(0f, 5f)
        val full = normalized.toInt().coerceIn(0, 5)
        val half = normalized - full >= 0.5f
        val stars = buildString {
            repeat(full) { append('★') }
            if (half && full < 5) append('⯨')
            repeat((5 - full - if (half) 1 else 0).coerceAtLeast(0)) { append('☆') }
        }
        return stars to String.format(Locale.getDefault(), "%.1f", normalized)
    }

    fun bindRating(starsView: TextView, valueView: TextView, rating: String) {
        val (stars, value) = ratingStars(rating)
        if (stars.isBlank()) {
            starsView.visibility = View.GONE
            valueView.visibility = View.GONE
            return
        }
        starsView.text = stars
        valueView.text = value
        starsView.visibility = View.VISIBLE
        valueView.visibility = View.VISIBLE
    }

    fun bindGenre(view: TextView, genre: String) {
        if (genre.isBlank()) {
            view.visibility = View.GONE
            return
        }
        view.text = view.context.getString(R.string.detail_genre_label, genre)
        view.visibility = View.VISIBLE
    }

    fun bindAddedDate(view: TextView, added: Long) {
        val formatted = formatAddedDate(added)
        if (formatted.isBlank()) {
            view.visibility = View.GONE
            return
        }
        view.text = view.context.getString(R.string.detail_added_label, formatted)
        view.visibility = View.VISIBLE
    }

    fun bindReleaseDate(view: TextView, releaseDate: String) {
        if (releaseDate.isBlank()) {
            view.visibility = View.GONE
            return
        }
        view.text = releaseDate
        view.visibility = View.VISIBLE
    }

    fun bindCast(
        labelView: TextView,
        listView: RecyclerView,
        castMembers: List<CastMember>,
        fallbackCast: String = "",
        onCastMoveUp: (() -> Unit)? = null,
        onCastMoveDown: (() -> Unit)? = null,
    ) {
        val members = castMembers.ifEmpty {
            fallbackCast.split(",", "/", "|", ";")
                .map { CastMember(it.trim()) }
                .filter { it.name.isNotBlank() }
        }
        if (members.isEmpty()) {
            labelView.visibility = View.GONE
            listView.visibility = View.GONE
            return
        }
        labelView.visibility = View.VISIBLE
        listView.visibility = View.VISIBLE
        listView.layoutManager = LinearLayoutManager(listView.context, LinearLayoutManager.HORIZONTAL, false)
        listView.adapter = CastMemberAdapter(
            items = members,
            onMoveUp = onCastMoveUp,
            onMoveDown = onCastMoveDown,
        )
        listView.isFocusable = false
        listView.descendantFocusability = ViewGroup.FOCUS_AFTER_DESCENDANTS
        RecyclerViewUtil.expandHorizontalList(listView)
    }

    fun bindImages(posterView: ImageView, backdropView: ImageView, poster: String, backdrop: String) {
        if (backdrop.isNotBlank()) {
            ImageLoader.loadPoster(backdropView, backdrop)
        }
        if (poster.isNotBlank()) {
            ImageLoader.loadPoster(posterView, poster, 300, 450)
        }
    }

    fun updateFavoriteButton(button: ImageView, isFavorite: Boolean) {
        button.setImageResource(
            if (isFavorite) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
        )
    }
}

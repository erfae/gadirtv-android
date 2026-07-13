package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.gadir.tv.R

class HomeRailAdapter(
    private val items: List<HomeRailItem>,
    private val onClick: (HomeRailItem) -> Unit,
    private val onFocus: ((HomeRailItem) -> Unit)? = null,
    private val onToggleFavorite: ((HomeRailItem) -> Unit)? = null,
    private val isFavorite: ((HomeRailItem) -> Boolean)? = null,
) : RecyclerView.Adapter<HomeRailAdapter.Holder>() {

    data class HomeRailItem(
        val id: Int,
        val title: String,
        val imageUrl: String,
        val badge: String,
        val kind: String,
        val extension: String = "mp4",
        val subtitle: String = "",
        val resumePositionMs: Long = 0L,
    ) {
        companion object {
            const val KIND_MOVIE = "movie"
            const val KIND_SERIES = "series"
            const val KIND_LIVE = "live"
        }
    }

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val image: ImageView = view.findViewById(R.id.posterImage)
        val title: TextView = view.findViewById(R.id.posterTitle)
        val favoriteBadge: ImageView = view.findViewById(R.id.favoriteBadge)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_poster_rail_wide, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.title.text = item.title
        if (item.imageUrl.isNotEmpty()) {
            Glide.with(holder.image).load(item.imageUrl).into(holder.image)
        } else {
            holder.image.setImageResource(R.drawable.tv_banner)
        }

        val fav = isFavorite?.invoke(item) == true
        holder.favoriteBadge.visibility = if (fav) View.VISIBLE else View.GONE

        holder.itemView.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus) onFocus?.invoke(item)
        }
        holder.itemView.setOnClickListener { onClick(item) }
        holder.itemView.setOnLongClickListener {
            onToggleFavorite?.invoke(item)
            notifyItemChanged(holder.bindingAdapterPosition)
            true
        }
        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    onClick(item)
                    true
                }
                else -> false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

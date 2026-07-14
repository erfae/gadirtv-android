package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.model.LiveChannel

class ChannelAdapter(
    private val items: List<LiveChannel>,
    private val onFocus: (LiveChannel) -> Unit,
    private val onMoveLeft: (() -> Unit)? = null,
    private val isFavorite: (LiveChannel) -> Boolean = { false },
    private val onToggleFavorite: ((LiveChannel) -> Unit)? = null,
) : RecyclerView.Adapter<ChannelAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val icon: ImageView = view.findViewById(R.id.channelIcon)
        val name: TextView = view.findViewById(R.id.channelName)
        val favorite: ImageView = view.findViewById(R.id.channelFavorite)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_channel, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        if (item.icon.isNotEmpty()) {
            ImageLoader.loadChannelIcon(holder.icon, item.icon)
        } else {
            holder.icon.setImageResource(R.drawable.tv_banner)
        }
        holder.favorite.setImageResource(
            if (isFavorite(item)) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
        )

        holder.itemView.isSelected = holder.itemView.hasFocus()

        holder.itemView.setOnFocusChangeListener { view, hasFocus ->
            view.isSelected = hasFocus
            if (hasFocus) onFocus(item)
        }

        holder.itemView.setOnClickListener {
            onFocus(item)
            val activity = holder.itemView.context as? MainActivity
            activity?.openFullscreen(item)
        }

        holder.itemView.setOnLongClickListener {
            onToggleFavorite?.invoke(item)
            holder.favorite.setImageResource(
                if (isFavorite(item)) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
            )
            true
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    onMoveLeft?.invoke()
                    true
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    onFocus(item)
                    val activity = holder.itemView.context as? MainActivity
                    activity?.openFullscreen(item)
                    true
                }
                else -> false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

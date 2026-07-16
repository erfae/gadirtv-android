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
import com.gadir.tv.util.ChannelIconHelper
import com.gadir.tv.model.LiveChannel

class ChannelAdapter(
    private val itemCount: () -> Int,
    private val itemAt: (Int) -> LiveChannel?,
    private val onFocus: (LiveChannel) -> Unit,
    private val onOpen: ((LiveChannel) -> Unit)? = null,
    private val onMoveLeft: (() -> Unit)? = null,
    private val onMoveRight: (() -> Unit)? = null,
    private val onMoveUp: (() -> Unit)? = null,
    private val onMoveDown: (() -> Unit)? = null,
    private val isFavorite: (LiveChannel) -> Boolean = { false },
    private val onToggleFavorite: ((LiveChannel) -> Unit)? = null,
) : RecyclerView.Adapter<ChannelAdapter.Holder>() {

    constructor(
        items: List<LiveChannel>,
        onFocus: (LiveChannel) -> Unit,
        onOpen: ((LiveChannel) -> Unit)? = null,
        onMoveLeft: (() -> Unit)? = null,
        onMoveRight: (() -> Unit)? = null,
        onMoveUp: (() -> Unit)? = null,
        onMoveDown: (() -> Unit)? = null,
        isFavorite: (LiveChannel) -> Boolean = { false },
        onToggleFavorite: ((LiveChannel) -> Unit)? = null,
    ) : this(
        itemCount = { items.size },
        itemAt = { index -> items.getOrNull(index) },
        onFocus = onFocus,
        onOpen = onOpen,
        onMoveLeft = onMoveLeft,
        onMoveRight = onMoveRight,
        onMoveUp = onMoveUp,
        onMoveDown = onMoveDown,
        isFavorite = isFavorite,
        onToggleFavorite = onToggleFavorite,
    )

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val number: TextView = view.findViewById(R.id.channelNumber)
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
        val item = itemAt(position) ?: return
        holder.number.text = (position + 1).toString()
        holder.name.text = item.name
        Glide.with(holder.icon).clear(holder.icon)
        ChannelIconHelper.load(holder.icon, item)
        holder.favorite.setImageResource(
            if (isFavorite(item)) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
        )

        holder.itemView.isSelected = holder.itemView.hasFocus()
        holder.number.isSelected = holder.itemView.hasFocus()

        holder.itemView.setOnFocusChangeListener { view, hasFocus ->
            view.isSelected = hasFocus
            holder.number.isSelected = hasFocus
            if (!hasFocus) return@setOnFocusChangeListener
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnFocusChangeListener
            itemAt(pos)?.let(onFocus)
        }

        holder.itemView.setOnClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
            itemAt(pos)?.let { openChannel(it) }
        }

        holder.itemView.setOnLongClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnLongClickListener false
            val channel = itemAt(pos) ?: return@setOnLongClickListener false
            onToggleFavorite?.invoke(channel)
            holder.favorite.setImageResource(
                if (isFavorite(channel)) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
            )
            true
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
            val channel = itemAt(pos) ?: return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    onMoveLeft?.invoke()
                    onMoveLeft != null
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    onMoveRight?.invoke()
                    onMoveRight != null
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    if (pos == 0) {
                        onMoveUp?.invoke()
                        onMoveUp != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    if (pos == itemCount() - 1) {
                        onMoveDown?.invoke()
                        onMoveDown != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    openChannel(channel)
                    true
                }
                else -> false
            }
        }
    }

    private fun openChannel(item: LiveChannel) {
        onOpen?.invoke(item) ?: onFocus(item)
    }

    override fun getItemCount(): Int = itemCount()
}

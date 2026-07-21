package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.util.ChannelIconFallback
import com.gadir.tv.util.ChannelIconHelper
import com.gadir.tv.util.ImageLoader
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
    private val isLocked: (LiveChannel) -> Boolean = { false },
    private val canLock: (LiveChannel) -> Boolean = { true },
    private val onToggleLock: ((LiveChannel) -> Unit)? = null,
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
        isLocked: (LiveChannel) -> Boolean = { false },
        canLock: (LiveChannel) -> Boolean = { true },
        onToggleLock: ((LiveChannel) -> Unit)? = null,
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
        isLocked = isLocked,
        canLock = canLock,
        onToggleLock = onToggleLock,
    )

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val number: TextView = view.findViewById(R.id.channelNumber)
        val icon: ImageView = view.findViewById(R.id.channelIcon)
        val name: TextView = view.findViewById(R.id.channelName)
        val lock: ImageView = view.findViewById(R.id.channelLock)
        val favorite: ImageView = view.findViewById(R.id.channelFavorite)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_channel, parent, false)
        val holder = Holder(view)

        holder.itemView.setOnFocusChangeListener { itemView, hasFocus ->
            itemView.isSelected = hasFocus
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

        holder.lock.setOnClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
            val channel = itemAt(pos) ?: return@setOnClickListener
            if (!canLock(channel) && !isLocked(channel)) return@setOnClickListener
            onToggleLock?.invoke(channel)
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
                    if (onMoveLeft != null) {
                        onMoveLeft.invoke()
                        true
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    if (onMoveRight != null) {
                        onMoveRight.invoke()
                        true
                    } else {
                        true
                    }
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    if (pos == 0) {
                        onMoveUp?.invoke()
                        return@setOnKeyListener onMoveUp != null
                    }
                    false
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    if (pos >= itemCount() - 1) {
                        onMoveDown?.invoke()
                        return@setOnKeyListener onMoveDown != null
                    }
                    false
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    openChannel(channel)
                    true
                }
                KeyEvent.KEYCODE_MENU, KeyEvent.KEYCODE_INFO -> {
                    onToggleLock?.invoke(channel)
                    true
                }
                else -> false
            }
        }

        return holder
    }

    override fun onViewRecycled(holder: Holder) {
        ImageLoader.clear(holder.icon)
        super.onViewRecycled(holder)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = itemAt(position) ?: return
        holder.number.text = (position + 1).toString()
        holder.name.text = item.name
        val iconSize = (44 * holder.icon.resources.displayMetrics.density).toInt().coerceAtLeast(96)
        ImageLoader.clear(holder.icon)
        ChannelIconFallback.load(holder.icon, item.name, iconSize)
        ChannelIconHelper.loadListIcon(holder.icon, item)
        holder.favorite.setImageResource(
            if (isFavorite(item)) R.drawable.ic_favorite_on else R.drawable.ic_favorite_off,
        )
        val locked = isLocked(item)
        holder.lock.setImageResource(if (locked) R.drawable.ic_lock_on else R.drawable.ic_lock_off)
        holder.lock.visibility = if (locked) View.VISIBLE else View.GONE
        holder.itemView.isSelected = holder.itemView.hasFocus()
        holder.number.isSelected = holder.itemView.hasFocus()
        if (position == 0) {
            holder.itemView.nextFocusUpId = holder.itemView.id
        }
    }

    private fun openChannel(item: LiveChannel) {
        onOpen?.invoke(item) ?: onFocus(item)
    }

    override fun getItemCount(): Int = itemCount()
}

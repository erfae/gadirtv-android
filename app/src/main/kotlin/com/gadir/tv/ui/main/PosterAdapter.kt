package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.util.DeviceUi
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.TvNavHelper

class PosterAdapter(
    private val items: List<PosterItem>,
    private val onClick: (PosterItem) -> Unit,
    private val kind: String? = null,
    private val isFavorite: ((PosterItem) -> Boolean)? = null,
    private val onToggleFavorite: ((PosterItem) -> Unit)? = null,
    private val columnCount: Int = 5,
    private val onMoveLeft: (() -> Unit)? = null,
    private val onMoveUp: (() -> Unit)? = null,
) : RecyclerView.Adapter<PosterAdapter.Holder>() {

    data class PosterItem(
        val id: Int,
        val title: String,
        val imageUrl: String,
        val extension: String = "mp4",
        val resumePositionMs: Long = 0L,
    )

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val image: ImageView = view.findViewById(R.id.posterImage)
        val title: TextView = view.findViewById(R.id.posterTitle)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_poster, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.title.text = item.title
        if (item.imageUrl.isNotEmpty()) {
            if (DeviceUi.isTelevision(holder.itemView.context)) {
                ImageLoader.loadPoster(holder.image, item.imageUrl, 200, 280)
            } else {
                ImageLoader.loadPoster(holder.image, item.imageUrl)
            }
        } else {
            holder.image.setImageResource(R.drawable.tv_banner)
        }

        holder.itemView.isSelected = holder.itemView.hasFocus()
        holder.itemView.setOnFocusChangeListener { view, hasFocus ->
            view.isSelected = hasFocus
        }

        holder.itemView.setOnClickListener { onClick(item) }
        holder.itemView.setOnLongClickListener {
            if (onToggleFavorite != null) {
                onToggleFavorite.invoke(item)
                notifyItemChanged(holder.bindingAdapterPosition)
                true
            } else {
                false
            }
        }
        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    if (pos % columnCount == 0) {
                        onMoveLeft?.invoke()
                        true
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    if (pos < columnCount) {
                        onMoveUp?.invoke()
                        onMoveUp != null
                    } else {
                        val list = holder.itemView.parent as? RecyclerView
                        if (list != null) {
                            TvNavHelper.moveFocus(list, pos, pos - columnCount, items.size)
                        }
                        list != null
                    }
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    val next = pos + columnCount
                    if (next < items.size) {
                        val list = holder.itemView.parent as? RecyclerView
                        if (list != null) {
                            TvNavHelper.moveFocus(list, pos, next, items.size)
                        }
                        list != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    val col = pos % columnCount
                    if (col < columnCount - 1 && pos + 1 < items.size) {
                        val list = holder.itemView.parent as? RecyclerView
                        if (list != null) {
                            TvNavHelper.moveFocus(list, pos, pos + 1, items.size)
                        }
                        list != null
                    } else {
                        false
                    }
                }
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

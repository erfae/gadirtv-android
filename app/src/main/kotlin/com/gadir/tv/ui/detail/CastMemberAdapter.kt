package com.gadir.tv.ui.detail

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.CastMember
import com.gadir.tv.util.ImageLoader
import com.gadir.tv.util.TvNavHelper

class CastMemberAdapter(
    private val items: List<CastMember>,
) : RecyclerView.Adapter<CastMemberAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val avatar: ImageView = view.findViewById(R.id.castAvatar)
        val name: TextView = view.findViewById(R.id.castName)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_cast_member, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        if (item.imageUrl.isNotBlank()) {
            ImageLoader.loadPoster(holder.avatar, item.imageUrl, 144, 144)
        } else {
            holder.avatar.setImageResource(R.drawable.ic_user)
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    if (pos > 0) {
                        val list = holder.itemView.parent as? RecyclerView
                        if (list != null) {
                            TvNavHelper.moveFocus(list, pos, pos - 1, items.size)
                        }
                        list != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    if (pos < items.lastIndex) {
                        val list = holder.itemView.parent as? RecyclerView
                        if (list != null) {
                            TvNavHelper.moveFocus(list, pos, pos + 1, items.size)
                        }
                        list != null
                    } else {
                        false
                    }
                }
                else -> false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

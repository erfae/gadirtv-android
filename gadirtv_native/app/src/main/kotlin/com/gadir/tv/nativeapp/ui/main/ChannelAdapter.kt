package com.gadir.tv.nativeapp.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.gadir.tv.nativeapp.R
import com.gadir.tv.nativeapp.model.LiveChannel

class ChannelAdapter(
    private val items: List<LiveChannel>,
    private val onFocus: (LiveChannel) -> Unit,
) : RecyclerView.Adapter<ChannelAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val icon: ImageView = view.findViewById(R.id.channelIcon)
        val name: TextView = view.findViewById(R.id.channelName)
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
            Glide.with(holder.icon).load(item.icon).into(holder.icon)
        } else {
            holder.icon.setImageResource(R.drawable.tv_banner)
        }

        holder.itemView.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus) onFocus(item)
        }

        holder.itemView.setOnClickListener {
            onFocus(item)
            val activity = holder.itemView.context as? MainActivity
            activity?.openFullscreen(item)
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action == KeyEvent.ACTION_DOWN &&
                (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER)
            ) {
                onFocus(item)
                val activity = holder.itemView.context as? MainActivity
                activity?.openFullscreen(item)
                true
            } else {
                false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

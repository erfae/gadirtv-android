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

class PosterAdapter(
    private val items: List<PosterItem>,
    private val onClick: (PosterItem) -> Unit,
) : RecyclerView.Adapter<PosterAdapter.Holder>() {

    data class PosterItem(
        val id: Int,
        val title: String,
        val imageUrl: String,
        val extension: String = "mp4",
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
            Glide.with(holder.image).load(item.imageUrl).into(holder.image)
        } else {
            holder.image.setImageResource(R.drawable.tv_banner)
        }

        holder.itemView.setOnClickListener { onClick(item) }
        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action == KeyEvent.ACTION_DOWN &&
                (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER)
            ) {
                onClick(item)
                true
            } else {
                false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

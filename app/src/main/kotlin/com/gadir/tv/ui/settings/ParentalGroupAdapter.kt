package com.gadir.tv.ui.settings

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R

class ParentalGroupAdapter(
    private val items: List<Item>,
    private val onToggle: (Item) -> Unit,
) : RecyclerView.Adapter<ParentalGroupAdapter.Holder>() {

    data class Item(
        val id: String,
        val name: String,
        val adult: Boolean,
        val blocked: Boolean,
        val kind: String,
    ) {
        companion object {
            const val KIND_LIVE = "live"
            const val KIND_VOD = "vod"
            const val KIND_SERIES = "series"
        }
    }

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val name: TextView = view.findViewById(R.id.groupName)
        val adultBadge: TextView = view.findViewById(R.id.groupAdultBadge)
        val lockIcon: ImageView = view.findViewById(R.id.groupLockIcon)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_parental_group, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        holder.adultBadge.visibility = if (item.adult) View.VISIBLE else View.GONE
        holder.lockIcon.setImageResource(
            if (item.blocked) R.drawable.ic_lock_on else R.drawable.ic_lock_off,
        )
        holder.itemView.setOnClickListener { onToggle(item) }
    }

    override fun getItemCount(): Int = items.size
}

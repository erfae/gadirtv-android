package com.gadir.tv.ui.main

import android.graphics.Typeface
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.EpgEntry
import com.gadir.tv.util.EpgFormatter

class EpgPreviewAdapter(
    private var items: List<EpgEntry> = emptyList(),
    private var currentIndex: Int = 0,
) : RecyclerView.Adapter<EpgPreviewAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val line: TextView = view.findViewById(R.id.epgLine)
    }

    fun submit(epg: List<EpgEntry>) {
        items = epg
        currentIndex = if (epg.isEmpty()) 0 else EpgFormatter.currentIndex(epg)
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_epg_preview, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val entry = items[position]
        val isCurrent = position == currentIndex
        holder.line.text = EpgFormatter.formatPreviewLine(holder.itemView.context, entry)
        holder.line.textSize = if (isCurrent) 13f else 11f
        holder.line.setTextColor(
            ContextCompat.getColor(
                holder.itemView.context,
                if (isCurrent) android.R.color.white else R.color.gtv_text_dim,
            ),
        )
        holder.line.setTypeface(null, if (isCurrent) Typeface.BOLD else Typeface.NORMAL)
        if (isCurrent) {
            holder.line.setTextColor(0xFFFFD54F.toInt())
        }
    }

    override fun getItemCount(): Int = items.size
}

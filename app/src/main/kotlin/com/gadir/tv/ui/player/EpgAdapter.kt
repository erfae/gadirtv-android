package com.gadir.tv.ui.player

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.EpgEntry
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class EpgAdapter(
    private val items: List<EpgEntry>,
    private val nowSeconds: Long,
) : RecyclerView.Adapter<EpgAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val time: TextView = view.findViewById(R.id.epgTime)
        val title: TextView = view.findViewById(R.id.epgTitle)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_epg, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        val isCurrent = item.start > 0 && item.end > 0 &&
            nowSeconds >= item.start && nowSeconds < item.end
        holder.time.text = formatRange(item.start, item.end)
        holder.title.text = item.title
        holder.itemView.setBackgroundResource(
            if (isCurrent) R.drawable.btn_trailer_hero else android.R.color.transparent,
        )
        holder.time.setTextColor(
            holder.itemView.context.getColor(
                if (isCurrent) R.color.gtv_red_hi else R.color.gtv_text_dim,
            ),
        )
    }

    override fun getItemCount(): Int = items.size

    companion object {
        private val timeFmt = SimpleDateFormat("HH:mm", Locale.getDefault())

        fun formatRange(start: Long, end: Long): String {
            if (start <= 0L) return ""
            val startText = timeFmt.format(Date(start * 1000L))
            val endText = if (end > 0L) timeFmt.format(Date(end * 1000L)) else ""
            return if (endText.isNotEmpty()) "$startText → $endText" else startText
        }
    }
}

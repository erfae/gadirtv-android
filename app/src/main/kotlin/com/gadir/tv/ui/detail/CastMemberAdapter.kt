package com.gadir.tv.ui.detail

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.CastMember

class CastMemberAdapter(
    private val items: List<CastMember>,
    private val onMoveUp: (() -> Unit)? = null,
    private val onMoveDown: (() -> Unit)? = null,
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
        holder.avatar.visibility = View.GONE

        val list = holder.itemView.parent as? RecyclerView
        if (list != null) {
            DetailTvNav.wireHorizontalItem(
                itemView = holder.itemView,
                list = list,
                position = position,
                itemCount = items.size,
                onUp = onMoveUp,
                onDown = onMoveDown,
            )
        }
    }

    override fun getItemCount(): Int = items.size
}

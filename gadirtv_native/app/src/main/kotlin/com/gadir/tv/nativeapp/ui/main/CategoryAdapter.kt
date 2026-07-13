package com.gadir.tv.nativeapp.ui.main

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.nativeapp.R
import com.gadir.tv.nativeapp.model.Category

class CategoryAdapter(
    private val items: List<Category>,
    private val onClick: (Category) -> Unit,
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    private var selected = 0

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val name: TextView = view.findViewById(R.id.categoryName)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_category, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        holder.itemView.isSelected = position == selected
        holder.itemView.setOnClickListener {
            val old = selected
            selected = holder.bindingAdapterPosition
            notifyItemChanged(old)
            notifyItemChanged(selected)
            onClick(item)
        }
        holder.itemView.setOnFocusChangeListener { v, hasFocus ->
            if (hasFocus) v.isSelected = true
        }
    }

    override fun getItemCount(): Int = items.size
}

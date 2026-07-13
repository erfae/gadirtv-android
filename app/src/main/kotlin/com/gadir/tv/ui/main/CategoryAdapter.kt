package com.gadir.tv.ui.main

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.Category

class CategoryAdapter(
    private val items: List<Category>,
    private val onFocus: ((Category) -> Unit)? = null,
    private val onClick: (Category) -> Unit,
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    private var selected = 0

    fun select(position: Int) {
        if (position !in items.indices || position == selected) return
        val old = selected
        selected = position
        notifyItemChanged(old)
        notifyItemChanged(selected)
    }

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
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
            select(pos)
            onClick(item)
        }
        holder.itemView.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) return@setOnFocusChangeListener
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION || pos == selected) return@setOnFocusChangeListener
            select(pos)
            (onFocus ?: onClick)(item)
        }
    }

    override fun getItemCount(): Int = items.size
}

package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.Category

class CategoryAdapter(
    private val items: List<Category>,
    private val onClick: (Category) -> Unit,
    private val onFocus: ((Category) -> Unit)? = null,
    private val onMoveRight: (() -> Unit)? = null,
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    private var selected = 0

    fun select(position: Int) {
        syncSelection(position)
    }

    private fun syncSelection(position: Int) {
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

        holder.itemView.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) return@setOnFocusChangeListener
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnFocusChangeListener
            syncSelection(pos)
            onFocus?.invoke(items[pos])
        }

        holder.itemView.setOnClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
            syncSelection(pos)
            onClick(item)
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    if (pos != selected) {
                        syncSelection(pos)
                        onClick(item)
                    }
                    onMoveRight?.invoke()
                    true
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    syncSelection(pos)
                    onClick(item)
                    true
                }
                else -> false
            }
        }
    }

    override fun getItemCount(): Int = items.size
}

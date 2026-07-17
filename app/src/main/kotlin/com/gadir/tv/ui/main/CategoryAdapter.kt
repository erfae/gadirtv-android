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
    private val selectedId: () -> String?,
    private val onClick: (Category) -> Unit,
    private val onFocus: ((Category) -> Unit)? = null,
    private val onMoveRight: (() -> Unit)? = null,
    private val onMoveLeft: (() -> Unit)? = null,
    private val onMoveUp: (() -> Unit)? = null,
    private val onMoveDown: (() -> Unit)? = null,
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    private var lastSelectedIndex: Int = RecyclerView.NO_POSITION

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
        val active = isSelected(item)

        holder.name.text = item.name
        holder.itemView.isSelected = active

        holder.itemView.setOnFocusChangeListener { view, hasFocus ->
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnFocusChangeListener
            view.isSelected = isSelected(items[pos])
            if (!hasFocus) return@setOnFocusChangeListener
            onFocus?.invoke(items[pos])
        }

        holder.itemView.setOnClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
            holder.itemView.requestFocus()
            onClick(items[pos])
        }

        holder.itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    onMoveLeft?.invoke()
                    onMoveLeft != null
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    onClick(items[pos])
                    onMoveRight?.invoke()
                    true
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == 0) {
                        onMoveUp?.invoke()
                        onMoveUp != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == items.lastIndex) {
                        onMoveDown?.invoke()
                        onMoveDown != null
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    onClick(items[pos])
                    true
                }
                else -> false
            }
        }
    }

    private fun isSelected(item: Category): Boolean {
        val selected = selectedId()
        return when {
            selected == null -> item.id.isEmpty()
            else -> item.id == selected || (item.id.isEmpty() && selected.isEmpty())
        }
    }

    private fun selectedIndex(): Int = items.indexOfFirst { isSelected(it) }

    fun refreshSelection() {
        val newIndex = selectedIndex()
        if (lastSelectedIndex in items.indices && lastSelectedIndex != newIndex) {
            notifyItemChanged(lastSelectedIndex)
        }
        if (newIndex in items.indices) {
            notifyItemChanged(newIndex)
        }
        lastSelectedIndex = newIndex
    }

    fun refreshSelectionAt(vararg positions: Int) {
        positions.distinct().forEach { pos ->
            if (pos in items.indices) notifyItemChanged(pos)
        }
        lastSelectedIndex = selectedIndex()
    }

    override fun getItemCount(): Int = items.size
}

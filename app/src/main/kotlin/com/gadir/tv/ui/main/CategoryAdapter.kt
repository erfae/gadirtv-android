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
    private val selectedId: () -> String? = { null },
    private val onClick: (Category) -> Unit,
    private val onFocus: ((Category) -> Unit)? = null,
    private val onMoveRight: (() -> Unit)? = null,
    private val onMoveLeft: (() -> Unit)? = null,
    private val onMoveUp: (() -> Unit)? = null,
    private val onMoveDown: (() -> Unit)? = null,
    private val upFocusViewId: Int = View.NO_ID,
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val name: TextView = view.findViewById(R.id.categoryName)
    }

    fun refreshSelection() {
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_category, parent, false)
        return Holder(view)
    }

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        val contentSelected = item.id == selectedId()

        holder.name.text = item.name
        applyCategoryVisual(holder.itemView, contentSelected, holder.itemView.hasFocus())
        if (position == 0 && upFocusViewId != View.NO_ID) {
            holder.itemView.nextFocusUpId = upFocusViewId
        }

        holder.itemView.setOnFocusChangeListener { view, hasFocus ->
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnFocusChangeListener
            val cat = items[pos]
            applyCategoryVisual(view, cat.id == selectedId(), hasFocus)
            if (hasFocus) onFocus?.invoke(cat)
        }

        holder.itemView.setOnClickListener {
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnClickListener
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
                        true
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    val pos = holder.bindingAdapterPosition
                    pos == items.lastIndex
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

    private fun applyCategoryVisual(view: View, contentSelected: Boolean, focused: Boolean) {
        view.isSelected = focused || contentSelected
        view.isActivated = focused
    }

    override fun getItemCount(): Int = items.size
}

package com.gadir.tv.ui.main

import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.core.content.res.ResourcesCompat
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.model.Category
import com.gadir.tv.util.TvNavHelper

class CategoryAdapter(
    private val items: List<Category>,
    private val selectedId: () -> String? = { null },
    private val itemCount: (Category) -> Int? = { null },
    private val onClick: (Category) -> Unit,
    private val onFocus: ((Category) -> Unit)? = null,
    private val onMoveRight: (() -> Unit)? = null,
    private val onMoveLeft: (() -> Unit)? = null,
    private val onMoveUp: (() -> Unit)? = null,
    private val onMoveDown: (() -> Unit)? = null,
    private val upFocusViewId: Int = View.NO_ID,
    private val navigationLocked: () -> Boolean = { false },
) : RecyclerView.Adapter<CategoryAdapter.Holder>() {

    inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val name: TextView = view.findViewById(R.id.categoryName)
        val count: TextView = view.findViewById(R.id.categoryCount)
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
        val count = itemCount(item)
        if (count != null && count > 0) {
            holder.count.visibility = View.VISIBLE
            holder.count.text = holder.itemView.context.getString(R.string.category_count_format, count)
        } else {
            holder.count.visibility = View.GONE
        }
        applyCategoryVisual(holder, contentSelected, holder.itemView.hasFocus())
        val locked = navigationLocked()
        holder.itemView.isFocusable = !locked
        holder.itemView.isFocusableInTouchMode = !locked
        if (position == 0) {
            holder.itemView.nextFocusUpId = upFocusViewId
        } else {
            holder.itemView.nextFocusUpId = View.NO_ID
        }

        holder.itemView.setOnFocusChangeListener { _, hasFocus ->
            val pos = holder.bindingAdapterPosition
            if (pos == RecyclerView.NO_POSITION) return@setOnFocusChangeListener
            val cat = items[pos]
            applyCategoryVisual(holder, cat.id == selectedId(), hasFocus)
            if (hasFocus && !navigationLocked()) onFocus?.invoke(cat)
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
                    onMoveRight?.invoke()
                    onMoveRight != null
                }
                KeyEvent.KEYCODE_DPAD_UP -> handleVerticalKey(holder, -1)
                KeyEvent.KEYCODE_DPAD_DOWN -> handleVerticalKey(holder, +1)
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> {
                    val pos = holder.bindingAdapterPosition
                    if (pos == RecyclerView.NO_POSITION) return@setOnKeyListener false
                    val cat = items[pos]
                    holder.itemView.post { onClick(cat) }
                    true
                }
                else -> false
            }
        }
    }

    /**
     * NetTV-style group navigation: move one row at a time with a stable focus line.
     * Stops at the first/last group without jumping the whole list to the top.
     */
    private fun handleVerticalKey(holder: Holder, direction: Int): Boolean {
        if (navigationLocked()) return true
        val pos = holder.bindingAdapterPosition
        if (pos == RecyclerView.NO_POSITION) return false

        if (direction < 0) {
            if (pos == 0) {
                onMoveUp?.invoke()
                return true
            }
        } else if (pos >= items.lastIndex) {
            onMoveDown?.invoke()
            return true
        }

        val list = holder.itemView.parent as? RecyclerView ?: return false
        val target = pos + direction
        if (list.findViewHolderForAdapterPosition(target) != null) {
            return false
        }

        TvNavHelper.scrollCategoryStep(list, direction)
        TvNavHelper.requestFocusAt(list, target)
        return true
    }

    private fun applyCategoryVisual(holder: Holder, contentSelected: Boolean, focused: Boolean) {
        val view = holder.itemView
        view.isSelected = focused
        view.isActivated = focused
        val context = holder.name.context
        holder.name.setTextColor(
            when {
                focused -> ContextCompat.getColor(context, android.R.color.white)
                contentSelected -> ContextCompat.getColor(context, R.color.gtv_red_hi)
                else -> ContextCompat.getColor(context, android.R.color.white)
            },
        )
        holder.count.setTextColor(
            when {
                focused -> ContextCompat.getColor(context, android.R.color.white)
                contentSelected -> ContextCompat.getColor(context, R.color.gtv_red_hi)
                else -> ContextCompat.getColor(context, android.R.color.white)
            },
        )
        holder.name.setTypeface(
            ResourcesCompat.getFont(
                context,
                if (contentSelected && !focused) R.font.gtv_font_title else R.font.gtv_font_ui,
            ),
        )
    }

    override fun getItemCount(): Int = items.size
}

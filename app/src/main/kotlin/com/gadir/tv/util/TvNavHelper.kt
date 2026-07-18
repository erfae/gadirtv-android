package com.gadir.tv.util

import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

object TvNavHelper {
    fun focusItem(list: RecyclerView, index: Int) {
        if (index < 0) return
        scrollToIndex(list, index)
        requestFocusAt(list, index)
    }

    /** NetTV-style: only scroll when the target group is off-screen; keep in-view items stable. */
    fun focusCategoryItem(list: RecyclerView, index: Int) {
        if (index < 0) return
        val lm = list.layoutManager as? LinearLayoutManager
        if (lm != null) {
            val first = lm.findFirstVisibleItemPosition()
            val last = lm.findLastVisibleItemPosition()
            if (index < first || index > last || first == RecyclerView.NO_POSITION) {
                val listHeight = list.height - list.paddingTop - list.paddingBottom
                val itemHeight = list.getChildAt(0)?.height
                    ?: (52 * list.resources.displayMetrics.density).toInt()
                val offset = ((listHeight - itemHeight) / 2).coerceAtLeast(list.paddingTop)
                lm.scrollToPositionWithOffset(index, offset)
            }
        } else {
            list.scrollToPosition(index)
        }
        requestFocusAt(list, index)
    }

    fun moveFocus(list: RecyclerView, fromIndex: Int, toIndex: Int, itemCount: Int): Boolean {
        if (fromIndex < 0 || toIndex < 0 || toIndex >= itemCount) return false
        focusItem(list, toIndex)
        return true
    }

    /** Scroll one row when the next group is not yet laid out (fixed focus line). */
    fun scrollCategoryStep(list: RecyclerView, direction: Int) {
        val child = list.focusedChild ?: list.getChildAt(0) ?: return
        list.scrollBy(0, direction * child.height)
    }

    fun requestFocusAt(list: RecyclerView, index: Int) {
        repeat(5) { attempt ->
            list.postDelayed({
                list.findViewHolderForAdapterPosition(index)?.itemView?.requestFocus()
            }, attempt * 50L)
        }
    }

    private fun scrollToIndex(list: RecyclerView, index: Int) {
        val offset = list.paddingTop + 8
        when (val lm = list.layoutManager) {
            is LinearLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            is GridLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            else -> list.scrollToPosition(index)
        }
    }
}

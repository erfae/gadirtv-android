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

    fun moveFocus(list: RecyclerView, fromIndex: Int, toIndex: Int, itemCount: Int): Boolean {
        if (fromIndex < 0 || toIndex < 0 || toIndex >= itemCount) return false
        focusItem(list, toIndex)
        return true
    }

    private fun scrollToIndex(list: RecyclerView, index: Int) {
        val offset = list.paddingTop + 8
        when (val lm = list.layoutManager) {
            is LinearLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            is GridLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            else -> list.scrollToPosition(index)
        }
    }

    private fun requestFocusAt(list: RecyclerView, index: Int) {
        repeat(5) { attempt ->
            list.postDelayed({
                list.findViewHolderForAdapterPosition(index)?.itemView?.requestFocus()
            }, attempt * 50L)
        }
    }
}

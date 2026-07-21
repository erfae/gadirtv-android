package com.gadir.tv.util

import android.view.ViewGroup
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

object TvNavHelper {
    @Volatile
    var focusGeneration: Int = 0
        private set

    fun bumpFocusGeneration() {
        focusGeneration++
    }

    fun focusItem(list: RecyclerView, index: Int) {
        if (index < 0) return
        scrollToIndex(list, index)
        requestFocusAt(list, index)
    }

    /** Scroll estándar: solo mueve la lista si el ítem no está visible. */
    fun focusCategoryItem(list: RecyclerView, index: Int) {
        if (index < 0) return
        val lm = list.layoutManager as? LinearLayoutManager
        if (lm != null) {
            val first = lm.findFirstVisibleItemPosition()
            val last = lm.findLastVisibleItemPosition()
            if (index < first || index > last || first == RecyclerView.NO_POSITION) {
                lm.scrollToPositionWithOffset(index, list.paddingTop)
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

    fun focusContentItem(list: RecyclerView, index: Int, onFocused: (() -> Unit)? = null) {
        if (index < 0) return

        fun attempt(remaining: Int) {
            list.post {
                scrollToIndex(list, index)
                list.descendantFocusability = ViewGroup.FOCUS_AFTER_DESCENDANTS
                list.post focusPost@{
                    val itemView = list.findViewHolderForAdapterPosition(index)?.itemView
                    if (itemView != null && itemView.requestFocus()) {
                        onFocused?.invoke()
                        return@focusPost
                    }
                    if (remaining > 0) {
                        attempt(remaining - 1)
                    }
                }
            }
        }
        attempt(8)
    }

    fun requestFocusAt(list: RecyclerView, index: Int, generation: Int = focusGeneration) {
        val holder = list.findViewHolderForAdapterPosition(index)
        if (holder?.itemView?.requestFocus() == true) return
        repeat(3) { attempt ->
            list.postDelayed({
                if (generation != focusGeneration) return@postDelayed
                list.findViewHolderForAdapterPosition(index)?.itemView?.requestFocus()
            }, (attempt + 1) * 32L)
        }
    }

    private fun scrollToIndex(list: RecyclerView, index: Int) {
        val offset = list.paddingTop
        when (val lm = list.layoutManager) {
            is LinearLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            is GridLayoutManager -> lm.scrollToPositionWithOffset(index, offset)
            else -> list.scrollToPosition(index)
        }
    }
}

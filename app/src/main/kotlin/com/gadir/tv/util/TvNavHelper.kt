package com.gadir.tv.util

import androidx.recyclerview.widget.RecyclerView

object TvNavHelper {
    fun focusItem(list: RecyclerView, index: Int) {
        if (index < 0) return
        list.scrollToPosition(index)
        repeat(4) { attempt ->
            list.postDelayed({
                list.findViewHolderForAdapterPosition(index)?.itemView?.requestFocus()
            }, (attempt * 60L))
        }
    }
}

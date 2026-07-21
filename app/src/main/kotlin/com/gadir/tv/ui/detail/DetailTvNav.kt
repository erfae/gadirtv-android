package com.gadir.tv.ui.detail

import android.view.KeyEvent
import android.view.View
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.TvNavHelper

object DetailTvNav {
    fun wireHorizontalItem(
        itemView: View,
        list: RecyclerView,
        position: Int,
        itemCount: Int,
        onUp: (() -> Unit)? = null,
        onDown: (() -> Unit)? = null,
    ) {
        itemView.setOnFocusChangeListener { view, hasFocus ->
            view.isSelected = hasFocus
            if (hasFocus) TvFocusHelper.scrollToParent(view)
        }
        itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_LEFT -> {
                    if (position > 0) {
                        TvNavHelper.moveFocus(list, position, position - 1, itemCount)
                        true
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_RIGHT -> {
                    if (position < itemCount - 1) {
                        TvNavHelper.moveFocus(list, position, position + 1, itemCount)
                        true
                    } else {
                        false
                    }
                }
                KeyEvent.KEYCODE_DPAD_UP -> {
                    onUp?.invoke()
                    onUp != null
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    onDown?.invoke()
                    onDown != null
                }
                else -> false
            }
        }
    }

    fun wireVerticalItem(
        itemView: View,
        list: RecyclerView,
        position: Int,
        itemCount: Int,
        onUp: (() -> Unit)? = null,
    ) {
        itemView.setOnFocusChangeListener { view, hasFocus ->
            view.isSelected = hasFocus
            if (hasFocus) TvFocusHelper.scrollToParent(view)
        }
        itemView.setOnKeyListener { _, keyCode, event ->
            if (event.action != KeyEvent.ACTION_DOWN) return@setOnKeyListener false
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_UP -> {
                    if (position > 0) {
                        TvNavHelper.moveFocus(list, position, position - 1, itemCount)
                        true
                    } else {
                        onUp?.invoke()
                        onUp != null
                    }
                }
                KeyEvent.KEYCODE_DPAD_DOWN -> {
                    if (position < itemCount - 1) {
                        TvNavHelper.moveFocus(list, position, position + 1, itemCount)
                        true
                    } else {
                        false
                    }
                }
                else -> false
            }
        }
    }

    fun focusFirst(list: RecyclerView) {
        if ((list.adapter?.itemCount ?: 0) > 0) {
            TvNavHelper.focusItem(list, 0)
        }
    }
}

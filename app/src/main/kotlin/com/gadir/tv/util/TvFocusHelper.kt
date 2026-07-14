package com.gadir.tv.util

import android.view.KeyEvent
import android.view.View
import android.widget.ScrollView
import android.widget.TextView

object TvFocusHelper {
    fun bindButton(view: TextView, onActivate: () -> Unit) {
        view.setOnFocusChangeListener { v, hasFocus ->
            v.isSelected = hasFocus
            if (hasFocus) {
                scrollParentTo(v)
            }
        }
        view.setOnClickListener { onActivate() }
        view.setOnKeyListener { _, keyCode, event ->
            if (event.action == KeyEvent.ACTION_DOWN &&
                (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER)
            ) {
                onActivate()
                true
            } else {
                false
            }
        }
    }

    private fun scrollParentTo(view: View) {
        var parent = view.parent
        while (parent != null) {
            if (parent is ScrollView) {
                val scrollView = parent
                scrollView.post {
                    val offset = (view.top - scrollView.paddingTop - 48).coerceAtLeast(0)
                    scrollView.smoothScrollTo(0, offset)
                }
                return
            }
            parent = parent.parent
        }
    }
}

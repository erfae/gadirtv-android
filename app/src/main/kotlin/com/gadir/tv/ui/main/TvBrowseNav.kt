package com.gadir.tv.ui.main

import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.util.TvNavHelper

/**
 * Navegación TV de 3 niveles: PESTAÑA → GRUPO → CONTENIDO.
 *
 * Flujo:
 * - OK en pestaña → primer grupo
 * - OK en grupo → primer canal/póster
 * - BACK en contenido → mismo grupo
 * - BACK en grupo → pestaña
 */
object TvBrowseNav {

    enum class Level { TAB, GROUP, CONTENT }

    fun focusTab(tabView: View) {
        tabView.post { tabView.requestFocus() }
    }

    fun focusGroup(list: RecyclerView, index: Int) {
        list.post { TvNavHelper.focusCategoryItem(list, index.coerceAtLeast(0)) }
    }

    fun focusContent(list: RecyclerView, index: Int = 0) {
        list.post {
            list.descendantFocusability = ViewGroup.FOCUS_AFTER_DESCENDANTS
            TvNavHelper.focusItem(list, index.coerceAtLeast(0))
        }
    }

    fun blockContentFocus(list: RecyclerView) {
        list.descendantFocusability = ViewGroup.FOCUS_BLOCK_DESCENDANTS
    }

    fun allowContentFocus(list: RecyclerView) {
        list.descendantFocusability = ViewGroup.FOCUS_AFTER_DESCENDANTS
    }

    fun clearListFocus(list: RecyclerView) {
        list.focusedChild?.clearFocus()
    }
}

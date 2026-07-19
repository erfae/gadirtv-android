package com.gadir.tv.ui.main

import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.util.TvNavHelper

/**
 * Navegación TV estilo Smarters IPTV:
 *
 * - Pestaña inferior: cambiar sección (Inicio / TV / Películas / Series)
 * - Columna izquierda: grupos/categorías (arriba/abajo)
 * - Columna derecha: canales o pósters (derecha desde categoría, izquierda para volver)
 * - OK en canal/póster: abrir/reproducir
 * - Atrás: contenido → categoría → pestaña
 */
object TvBrowseNav {

    enum class Level { TAB, GROUP, CONTENT }

    fun focusTab(tabView: View) {
        tabView.post { tabView.requestFocus() }
    }

    fun focusGroup(list: RecyclerView, index: Int) {
        list.post { TvNavHelper.focusCategoryItem(list, index.coerceAtLeast(0)) }
    }

    fun focusContent(list: RecyclerView, index: Int = 0, onFocused: (() -> Unit)? = null) {
        list.post {
            list.descendantFocusability = ViewGroup.FOCUS_AFTER_DESCENDANTS
            TvNavHelper.focusContentItem(list, index.coerceAtLeast(0), onFocused)
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

package com.gadir.tv.util

import android.view.View
import androidx.recyclerview.widget.RecyclerView

object RecyclerViewUtil {
    /** Horizontal RecyclerView with wrap_content height often measures 0 in a vertical parent. */
    fun expandHorizontalList(list: RecyclerView) {
        list.post {
            val adapter = list.adapter ?: return@post
            if (adapter.itemCount == 0) {
                list.visibility = View.GONE
                return@post
            }
            list.visibility = View.VISIBLE
            val holder = adapter.createViewHolder(list, adapter.getItemViewType(0))
            adapter.onBindViewHolder(holder, 0)
            holder.itemView.measure(
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
            )
            val height = holder.itemView.measuredHeight + list.paddingTop + list.paddingBottom
            val params = list.layoutParams
            if (params.height != height) {
                params.height = height
                list.layoutParams = params
            }
            list.requestLayout()
        }
    }

    /** RecyclerView inside ScrollView only measures one row unless height is set explicitly. */
    fun expandInScrollView(list: RecyclerView) {
        list.isNestedScrollingEnabled = false
        list.post {
            val adapter = list.adapter ?: return@post
            if (adapter.itemCount == 0) {
                list.visibility = View.GONE
                return@post
            }
            list.visibility = View.VISIBLE
            var totalHeight = list.paddingTop + list.paddingBottom
            for (i in 0 until adapter.itemCount) {
                val holder = adapter.createViewHolder(list, adapter.getItemViewType(i))
                adapter.onBindViewHolder(holder, i)
                holder.itemView.measure(
                    View.MeasureSpec.makeMeasureSpec(list.width, View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
                )
                totalHeight += holder.itemView.measuredHeight
            }
            val params = list.layoutParams
            if (params.height != totalHeight) {
                params.height = totalHeight
                list.layoutParams = params
            }
            list.requestLayout()
        }
    }
}

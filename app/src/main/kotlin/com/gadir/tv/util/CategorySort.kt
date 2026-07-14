package com.gadir.tv.util

import com.gadir.tv.model.Category

object CategorySort {
    private val adultPattern = Regex(
        "(?i)(\\b(adult|adultos|adulto|xxx|for\\s*adults|foradults|erotic|er[oó]tico|porn|madur)\\b|18\\+)",
    )

    fun isAdultCategory(name: String): Boolean = adultPattern.containsMatchIn(name)

    fun isAdultContent(title: String, categoryName: String = ""): Boolean =
        isAdultCategory(title) || (categoryName.isNotBlank() && isAdultCategory(categoryName))

    fun sortWithAdultLast(categories: List<Category>): List<Category> {
        if (categories.isEmpty()) return categories
        val normal = mutableListOf<Category>()
        val adult = mutableListOf<Category>()
        categories.forEach { cat ->
            if (isAdultCategory(cat.name)) adult.add(cat) else normal.add(cat)
        }
        return normal.sortedBy { it.order } + adult.sortedBy { it.order }
    }
}

package com.gadir.tv.ui.settings

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.model.Category
import com.gadir.tv.util.CategorySort
import com.gadir.tv.util.TvFocusHelper
import com.google.android.material.button.MaterialButton
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout

class ParentalControlActivity : BaseLocaleActivity() {
    private lateinit var parentalStore: ParentalControlStore
    private lateinit var pinStatus: TextView
    private lateinit var pinInput: TextInputEditText
    private lateinit var pinLayout: TextInputLayout
    private lateinit var categoryList: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        parentalStore = ParentalControlStore(this)
        setContentView(R.layout.activity_parental_control)

        pinStatus = findViewById(R.id.parentalPinStatus)
        pinInput = findViewById(R.id.parentalSetPinInput)
        pinLayout = findViewById(R.id.parentalSetPinLayout)
        categoryList = findViewById(R.id.parentalCategoryList)
        categoryList.layoutManager = LinearLayoutManager(this)

        TvFocusHelper.bindButton(findViewById(R.id.btnParentalBack)) { finish() }
        TvFocusHelper.bindButton(findViewById(R.id.btnSaveParentalPin)) { savePin() }
        TvFocusHelper.bindButton(findViewById(R.id.btnLockAdultGroups)) { lockAdultGroups() }

        refreshPinStatus()
        reloadCategories()
    }

    private fun savePin() {
        val pin = pinInput.text?.toString()?.trim().orEmpty()
        if (pin.length != ParentalControlStore.PIN_LENGTH) {
            pinLayout.error = getString(R.string.parental_pin_invalid)
            return
        }
        pinLayout.error = null
        parentalStore.pin = pin
        pinInput.text = null
        refreshPinStatus()
        Toast.makeText(this, R.string.parental_pin_saved, Toast.LENGTH_SHORT).show()
    }

    private fun lockAdultGroups() {
        if (!parentalStore.hasPin) {
            Toast.makeText(this, R.string.parental_set_pin_first, Toast.LENGTH_SHORT).show()
            return
        }
        val count = parentalStore.lockAdultCategories(
            live = PlaylistRepository.categories,
            vod = PlaylistRepository.vodCategories,
            series = PlaylistRepository.seriesCategories,
        )
        reloadCategories()
        Toast.makeText(
            this,
            getString(R.string.parental_adult_locked_count, count),
            Toast.LENGTH_SHORT,
        ).show()
    }

    private fun refreshPinStatus() {
        pinStatus.text = if (parentalStore.hasPin) {
            getString(R.string.parental_pin_set)
        } else {
            getString(R.string.parental_pin_not_set)
        }
    }

    private fun reloadCategories() {
        val items = buildList {
            add(Section(getString(R.string.parental_section_live)))
            PlaylistRepository.categories.forEach { add(Row(ParentalControlStore.KIND_LIVE, it)) }
            add(Section(getString(R.string.parental_section_movies)))
            PlaylistRepository.vodCategories.forEach { add(Row(ParentalControlStore.KIND_VOD, it)) }
            add(Section(getString(R.string.parental_section_series)))
            PlaylistRepository.seriesCategories.forEach { add(Row(ParentalControlStore.KIND_SERIES, it)) }
        }
        categoryList.adapter = ParentalAdapter(items) { kind, category ->
            if (!parentalStore.hasPin) {
                Toast.makeText(this, R.string.parental_set_pin_first, Toast.LENGTH_SHORT).show()
                return@ParentalAdapter
            }
            val locked = parentalStore.isLocked(kind, category.id)
            parentalStore.setLocked(kind, category.id, !locked)
            reloadCategories()
        }
    }

    private data class Section(val title: String)
    private data class Row(val kind: String, val category: Category)

    private class ParentalAdapter(
        private val items: List<Any>,
        private val onToggle: (String, Category) -> Unit,
    ) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

        override fun getItemViewType(position: Int): Int =
            if (items[position] is Section) 0 else 1

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
            val inflater = LayoutInflater.from(parent.context)
            return if (viewType == 0) {
                val view = inflater.inflate(R.layout.item_parental_section, parent, false)
                SectionHolder(view)
            } else {
                val view = inflater.inflate(R.layout.item_parental_category, parent, false)
                RowHolder(view)
            }
        }

        override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
            when (val item = items[position]) {
                is Section -> (holder as SectionHolder).title.text = item.title
                is Row -> bindRow(holder as RowHolder, item)
            }
        }

        private fun bindRow(holder: RowHolder, item: Row) {
            val store = ParentalControlStore(holder.itemView.context)
            val adult = CategorySort.isAdultCategory(item.category.name)
            holder.name.text = item.category.name
            holder.badge.visibility = if (adult) View.VISIBLE else View.GONE
            val locked = store.isLocked(item.kind, item.category.id)
            holder.lock.text = if (locked) "🔒" else "🔓"
            holder.itemView.setOnClickListener { onToggle(item.kind, item.category) }
        }

        override fun getItemCount(): Int = items.size

        class SectionHolder(view: View) : RecyclerView.ViewHolder(view) {
            val title: TextView = view.findViewById(R.id.parentalSectionTitle)
        }

        class RowHolder(view: View) : RecyclerView.ViewHolder(view) {
            val name: TextView = view.findViewById(R.id.parentalCategoryName)
            val badge: TextView = view.findViewById(R.id.parentalCategoryBadge)
            val lock: TextView = view.findViewById(R.id.parentalCategoryLock)
        }
    }
}

package com.gadir.tv.ui.settings

import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import com.gadir.tv.R
import com.gadir.tv.data.ParentalControlStore
import com.gadir.tv.data.ParentalSession
import com.gadir.tv.data.PlaylistRepository
import com.gadir.tv.ui.BaseLocaleActivity
import com.gadir.tv.util.TvFocusHelper
import com.gadir.tv.util.PinInputHelper
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout

class ParentalControlActivity : BaseLocaleActivity() {
    private lateinit var parentalStore: ParentalControlStore
    private lateinit var pinStatus: TextView
    private lateinit var adultCount: TextView
    private lateinit var currentPinInput: TextInputEditText
    private lateinit var newPinInput: TextInputEditText
    private lateinit var confirmPinInput: TextInputEditText
    private lateinit var currentPinLayout: TextInputLayout
    private lateinit var newPinLayout: TextInputLayout
    private lateinit var confirmPinLayout: TextInputLayout

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        parentalStore = ParentalControlStore(this)
        parentalStore.ensureAdultDefaultsBlocked()
        setContentView(R.layout.activity_parental_control)

        pinStatus = findViewById(R.id.parentalPinStatus)
        adultCount = findViewById(R.id.parentalAdultCount)
        currentPinInput = findViewById(R.id.parentalCurrentPinInput)
        newPinInput = findViewById(R.id.parentalNewPinInput)
        confirmPinInput = findViewById(R.id.parentalConfirmPinInput)
        currentPinLayout = findViewById(R.id.parentalCurrentPinLayout)
        newPinLayout = findViewById(R.id.parentalNewPinLayout)
        confirmPinLayout = findViewById(R.id.parentalConfirmPinLayout)

        listOf(currentPinInput, newPinInput, confirmPinInput).forEach { PinInputHelper.applyMask(it) }

        TvFocusHelper.bindButton(findViewById(R.id.btnParentalBack)) { finish() }
        TvFocusHelper.bindButton(findViewById(R.id.btnSaveParentalPin)) { changePin() }

        bindGroupLists()
        refreshPinStatus()
    }

    private fun bindGroupLists() {
        val liveItems = PlaylistRepository.categories.map {
            ParentalGroupAdapter.Item(
                id = it.id,
                name = it.name,
                adult = parentalStore.isAdultLiveCategory(it.id),
                blocked = parentalStore.isLiveGroupBlocked(it.id),
                kind = ParentalGroupAdapter.Item.KIND_LIVE,
            )
        }
        val vodItems = PlaylistRepository.vodCategories.map {
            ParentalGroupAdapter.Item(
                id = it.id,
                name = it.name,
                adult = parentalStore.isAdultVodCategory(it.id),
                blocked = parentalStore.isVodGroupBlocked(it.id),
                kind = ParentalGroupAdapter.Item.KIND_VOD,
            )
        }
        val seriesItems = PlaylistRepository.seriesCategories.map {
            ParentalGroupAdapter.Item(
                id = it.id,
                name = it.name,
                adult = parentalStore.isAdultSeriesCategory(it.id),
                blocked = parentalStore.isSeriesGroupBlocked(it.id),
                kind = ParentalGroupAdapter.Item.KIND_SERIES,
            )
        }

        setupGroupList(R.id.parentalLiveGroups, liveItems)
        setupGroupList(R.id.parentalVodGroups, vodItems)
        setupGroupList(R.id.parentalSeriesGroups, seriesItems)

        val blockedTotal = liveItems.count { it.blocked } +
            vodItems.count { it.blocked } +
            seriesItems.count { it.blocked }
        adultCount.text = getString(R.string.parental_adult_locked_count, blockedTotal)
    }

    private fun setupGroupList(
        viewId: Int,
        items: List<ParentalGroupAdapter.Item>,
    ) {
        val list = findViewById<androidx.recyclerview.widget.RecyclerView>(viewId)
        list.layoutManager = LinearLayoutManager(this)
        list.adapter = ParentalGroupAdapter(items) { item -> toggleGroup(item) }
    }

    private fun toggleGroup(item: ParentalGroupAdapter.Item) {
        val blocked = when (item.kind) {
            ParentalGroupAdapter.Item.KIND_LIVE -> parentalStore.toggleLiveGroup(item.id)
            ParentalGroupAdapter.Item.KIND_VOD -> parentalStore.toggleVodGroup(item.id)
            ParentalGroupAdapter.Item.KIND_SERIES -> parentalStore.toggleSeriesGroup(item.id)
            else -> return
        }
        ParentalSession.clear()
        bindGroupLists()
        Toast.makeText(
            this,
            if (blocked) R.string.parental_channel_locked else R.string.parental_channel_unlocked,
            Toast.LENGTH_SHORT,
        ).show()
    }

    private fun changePin() {
        val current = currentPinInput.text?.toString()?.trim().orEmpty()
        val newPin = newPinInput.text?.toString()?.trim().orEmpty()
        val confirm = confirmPinInput.text?.toString()?.trim().orEmpty()

        currentPinLayout.error = null
        newPinLayout.error = null
        confirmPinLayout.error = null

        if (current.length != ParentalControlStore.PIN_LENGTH) {
            currentPinLayout.error = getString(R.string.parental_pin_invalid)
            return
        }
        if (newPin.length != ParentalControlStore.PIN_LENGTH) {
            newPinLayout.error = getString(R.string.parental_pin_invalid)
            return
        }
        if (newPin != confirm) {
            confirmPinLayout.error = getString(R.string.parental_pin_mismatch)
            return
        }
        if (!parentalStore.changePin(current, newPin)) {
            currentPinLayout.error = getString(R.string.parental_pin_wrong)
            return
        }

        currentPinInput.text = null
        newPinInput.text = null
        confirmPinInput.text = null
        refreshPinStatus()
        Toast.makeText(this, R.string.parental_pin_saved, Toast.LENGTH_SHORT).show()
    }

    private fun refreshPinStatus() {
        pinStatus.text = getString(R.string.parental_pin_default_hint)
    }
}

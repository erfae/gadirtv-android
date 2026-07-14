package com.gadir.tv.ui.settings

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.AppSettings
import com.gadir.tv.player.ExternalPlayerHelper

class PlayerSelectActivity : AppCompatActivity() {
    private lateinit var appSettings: AppSettings

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_player_select)
        appSettings = AppSettings(this)

        findViewById<TextView>(R.id.btnBack).setOnClickListener { finish() }

        val options = mutableListOf<PlayerOption>()
        options.add(PlayerOption.Internal(AppSettings.PLAYER_STANDARD, getString(R.string.settings_player_standard_label)))
        options.add(PlayerOption.Internal(AppSettings.PLAYER_COMPAT, getString(R.string.settings_player_compat_label)))
        options.add(PlayerOption.Internal(AppSettings.PLAYER_VLC, getString(R.string.settings_player_vlc_label)))

        val external = ExternalPlayerHelper.findInstalledPlayers(this)
        external.forEach { app ->
            options.add(PlayerOption.External(app.packageName, app.label))
        }

        val emptyView = findViewById<TextView>(R.id.playerSelectHint)
        if (external.isEmpty()) {
            emptyView.visibility = View.VISIBLE
            emptyView.text = getString(R.string.settings_no_external_player)
        } else {
            emptyView.visibility = View.GONE
        }

        val list = findViewById<RecyclerView>(R.id.playerSelectList)
        list.layoutManager = LinearLayoutManager(this)
        list.adapter = Adapter(
            items = options,
            selectedMode = appSettings.playerMode,
            selectedPackage = appSettings.externalPlayerPackage,
        ) { option ->
            when (option) {
                is PlayerOption.Internal -> {
                    appSettings.playerMode = option.mode
                    appSettings.externalPlayerPackage = ""
                }
                is PlayerOption.External -> {
                    appSettings.playerMode = AppSettings.PLAYER_EXTERNAL
                    appSettings.externalPlayerPackage = option.packageName
                }
            }
            setResult(RESULT_OK)
            finish()
        }
        list.post { list.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus() }
    }

    private sealed class PlayerOption {
        data class Internal(val mode: String, val label: String) : PlayerOption()
        data class External(val packageName: String, val label: String) : PlayerOption()
    }

    private class Adapter(
        private val items: List<PlayerOption>,
        private val selectedMode: String,
        private val selectedPackage: String,
        private val onClick: (PlayerOption) -> Unit,
    ) : RecyclerView.Adapter<Adapter.Holder>() {

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val label: TextView = view.findViewById(R.id.playerOptionName)
            val subtitle: TextView = view.findViewById(R.id.playerOptionSubtitle)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_player_option, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val item = items[position]
            when (item) {
                is PlayerOption.Internal -> {
                    holder.label.text = item.label
                    holder.subtitle.text = holder.itemView.context.getString(R.string.settings_player_internal_hint)
                    holder.itemView.isSelected = item.mode == selectedMode
                }
                is PlayerOption.External -> {
                    holder.label.text = item.label
                    holder.subtitle.text = item.packageName
                    holder.itemView.isSelected =
                        selectedMode == AppSettings.PLAYER_EXTERNAL &&
                        item.packageName == selectedPackage
                }
            }
            holder.itemView.setOnClickListener { onClick(item) }
        }

        override fun getItemCount(): Int = items.size
    }
}

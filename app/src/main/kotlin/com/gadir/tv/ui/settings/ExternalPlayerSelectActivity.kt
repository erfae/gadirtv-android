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
import com.gadir.tv.player.ExternalPlayerApp
import com.gadir.tv.player.ExternalPlayerHelper

class ExternalPlayerSelectActivity : AppCompatActivity() {
    private lateinit var appSettings: AppSettings
    private lateinit var emptyView: TextView
    private lateinit var list: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_external_player_select)
        appSettings = AppSettings(this)

        emptyView = findViewById(R.id.externalPlayerEmpty)
        list = findViewById(R.id.externalPlayerList)
        list.layoutManager = LinearLayoutManager(this)

        findViewById<TextView>(R.id.btnBack).setOnClickListener { finish() }

        val players = ExternalPlayerHelper.findInstalledPlayers(this)
        if (players.isEmpty()) {
            emptyView.visibility = View.VISIBLE
            list.visibility = View.GONE
            emptyView.text = getString(R.string.settings_no_external_player)
        } else {
            emptyView.visibility = View.GONE
            list.visibility = View.VISIBLE
            val selected = appSettings.externalPlayerPackage
            list.adapter = Adapter(players, selected) { player ->
                appSettings.externalPlayerPackage = player.packageName
                appSettings.playerMode = AppSettings.PLAYER_EXTERNAL
                setResult(RESULT_OK)
                finish()
            }
            list.post { list.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus() }
        }
    }

    private class Adapter(
        private val items: List<ExternalPlayerApp>,
        private val selectedPackage: String,
        private val onClick: (ExternalPlayerApp) -> Unit,
    ) : RecyclerView.Adapter<Adapter.Holder>() {

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val label: TextView = view.findViewById(R.id.externalPlayerName)
            val packageName: TextView = view.findViewById(R.id.externalPlayerPackage)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_external_player, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val item = items[position]
            holder.label.text = item.label
            holder.packageName.text = item.packageName
            holder.itemView.isSelected = item.packageName == selectedPackage
            holder.itemView.setOnClickListener { onClick(item) }
        }

        override fun getItemCount(): Int = items.size
    }
}

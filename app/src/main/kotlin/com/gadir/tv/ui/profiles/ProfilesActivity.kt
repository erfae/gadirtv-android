package com.gadir.tv.ui.profiles

import android.content.Intent
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.gadir.tv.ui.BaseLocaleActivity
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.gadir.tv.R
import com.gadir.tv.data.ProfileStore
import com.gadir.tv.model.Profile
import com.gadir.tv.ui.bootstrap.BootstrapActivity
import com.gadir.tv.ui.login.LoginActivity
import com.gadir.tv.util.DefaultCredentials
import com.google.android.material.button.MaterialButton

class ProfilesActivity : BaseLocaleActivity() {
    private lateinit var profileStore: ProfileStore
    private lateinit var profileGrid: RecyclerView
    private lateinit var btnManage: MaterialButton
    private var manageMode = false
    private var profiles = listOf<Profile>()

    private val avatarColors = intArrayOf(
        0xFFDC2626.toInt(),
        0xFF2563EB.toInt(),
        0xFF16A34A.toInt(),
        0xFFCA8A04.toInt(),
        0xFF9333EA.toInt(),
        0xFFDB2777.toInt(),
        0xFF0891B2.toInt(),
        0xFFF97316.toInt(),
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profileStore = ProfileStore(this)
        ensureDefaultProfile()
        setContentView(R.layout.activity_profiles)

        profileGrid = findViewById(R.id.profileGrid)
        btnManage = findViewById(R.id.btnManage)
        profileGrid.layoutManager = GridLayoutManager(this, 4)

        btnManage.setOnClickListener {
            manageMode = !manageMode
            btnManage.text = getString(
                if (manageMode) R.string.done_profiles else R.string.manage_profiles,
            )
            reload()
        }

        reload()
    }

    /** Crea el perfil RAFA si no hay ninguno guardado (evita reescribir credenciales tras cada instalación). */
    private fun ensureDefaultProfile() {
        if (profileStore.loadAll().isEmpty()) {
            profileStore.upsert(DefaultCredentials.profile())
            profileStore.saveDraft(DefaultCredentials.draft())
        }
    }

    private var autoConnected = false

    override fun onResume() {
        super.onResume()
        reload()
        if (!autoConnected && profiles.size == 1 && !manageMode) {
            autoConnected = true
            val profile = profiles.first()
            profileStore.setActive(profile)
            startActivity(Intent(this, BootstrapActivity::class.java))
            finish()
        }
    }

    private fun reload() {
        profiles = profileStore.loadAll()
        btnManage.visibility = if (profiles.isNotEmpty()) View.VISIBLE else View.GONE

        val items = profiles.map { ProfileItem.Saved(it) }.toMutableList<ProfileItem>()
        items.add(ProfileItem.Add)

        profileGrid.adapter = ProfileAdapter(
            items = items,
            manageMode = manageMode,
            colorFor = { seed -> avatarColors[kotlin.math.abs(seed) % avatarColors.size] },
            onSelect = { profile ->
                profileStore.setActive(profile)
                startActivity(Intent(this, BootstrapActivity::class.java))
            },
            onAdd = {
                startActivity(Intent(this, LoginActivity::class.java))
            },
            onDelete = { profile ->
                profileStore.remove(profile)
                reload()
            },
        )

        profileGrid.post {
            profileGrid.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
        }
    }

    private sealed class ProfileItem {
        data class Saved(val profile: Profile) : ProfileItem()
        data object Add : ProfileItem()
    }

    private class ProfileAdapter(
        private val items: List<ProfileItem>,
        private val manageMode: Boolean,
        private val colorFor: (Int) -> Int,
        private val onSelect: (Profile) -> Unit,
        private val onAdd: () -> Unit,
        private val onDelete: (Profile) -> Unit,
    ) : RecyclerView.Adapter<ProfileAdapter.Holder>() {

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val circle: View = view.findViewById(R.id.avatarCircle)
            val initial: TextView = view.findViewById(R.id.avatarInitial)
            val label: TextView = view.findViewById(R.id.avatarLabel)
            val delete: TextView = view.findViewById(R.id.avatarDelete)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_profile_avatar, parent, false)
            return Holder(view)
        }

        override fun onBindViewHolder(holder: Holder, position: Int) {
            when (val item = items[position]) {
                is ProfileItem.Add -> bindAdd(holder)
                is ProfileItem.Saved -> bindProfile(holder, item.profile)
            }
        }

        private fun bindAdd(holder: Holder) {
            val color = ContextCompat.getColor(holder.itemView.context, R.color.gtv_surface)
            (holder.circle.background as? GradientDrawable)?.setColor(color)
                ?: holder.circle.setBackgroundColor(color)
            holder.initial.text = "+"
            holder.label.text = holder.itemView.context.getString(R.string.add_profile)
            holder.delete.visibility = View.GONE
            holder.itemView.setOnClickListener { onAdd() }
        }

        private fun bindProfile(holder: Holder, profile: Profile) {
            val seed = if (profile.avatarSeed != 0) profile.avatarSeed else profile.id.hashCode()
            val color = colorFor(seed)
            (holder.circle.background as? GradientDrawable)?.setColor(color)
                ?: run {
                    holder.circle.background = GradientDrawable().apply {
                        shape = GradientDrawable.OVAL
                        setColor(color)
                    }
                }
            val initial = profile.displayName.firstOrNull()?.uppercaseChar()?.toString() ?: "?"
            holder.initial.text = initial
            holder.label.text = profile.displayName
            holder.delete.visibility = if (manageMode) View.VISIBLE else View.GONE

            holder.itemView.setOnClickListener {
                if (manageMode) {
                    onDelete(profile)
                } else {
                    onSelect(profile)
                }
            }
            holder.delete.setOnClickListener { onDelete(profile) }
        }

        override fun getItemCount(): Int = items.size
    }
}

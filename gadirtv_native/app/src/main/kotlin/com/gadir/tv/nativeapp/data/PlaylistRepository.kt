package com.gadir.tv.nativeapp.data

import com.gadir.tv.nativeapp.model.Category
import com.gadir.tv.nativeapp.model.LiveChannel
import com.gadir.tv.nativeapp.model.Profile

object PlaylistRepository {
  var profile: Profile? = null
    private set

  var categories: List<Category> = emptyList()
    private set

  var allChannels: List<LiveChannel> = emptyList()
    private set

  fun setProfile(p: Profile) {
    profile = p
  }

  fun updateCatalog(cats: List<Category>, channels: List<LiveChannel>) {
    categories = cats
    allChannels = channels
  }

  fun channelsFor(categoryId: String?): List<LiveChannel> {
    if (categoryId.isNullOrEmpty()) return allChannels
    return allChannels.filter { it.categoryId == categoryId }
  }

  fun clear() {
    profile = null
    categories = emptyList()
    allChannels = emptyList()
  }
}

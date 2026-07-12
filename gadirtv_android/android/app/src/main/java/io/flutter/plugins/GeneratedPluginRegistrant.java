package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;

/**
 * Safety-net registrant. If Flutter ever auto-invokes this class, only load
 * shared_preferences — never libVLC or file_picker at cold start.
 *
 * Real registration is controlled by {@link com.gadir.tv.MainActivity}.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";

  private GeneratedPluginRegistrant() {}

  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(
          new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin shared_preferences_android", e);
    }
  }
}

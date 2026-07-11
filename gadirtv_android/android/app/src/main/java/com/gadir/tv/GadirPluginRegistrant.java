package com.gadir.tv;

import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;

/**
 * Minimal cold-start plugin set. Everything else (libVLC, file picker, etc.)
 * is registered on demand from {@link MainActivity} so native libraries are
 * not loaded before the login screen can render.
 */
public final class GadirPluginRegistrant {
    private static final String TAG = "GadirPluginRegistrant";

    private GadirPluginRegistrant() {}

    public static void registerWith(@NonNull FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(
                new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
        } catch (Throwable e) {
            Log.e(TAG, "shared_preferences registration failed", e);
        }
    }
}

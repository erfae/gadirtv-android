package com.gadir.tv

import android.content.pm.PackageManager
import android.os.Bundle
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterShellArgs
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    companion object {
        private const val TAG = "GadirTV"
        private const val PLUGINS_CHANNEL = "com.gadir.tv/plugins"
        private const val PLATFORM_CHANNEL = "com.gadir.tv/platform"
    }

    private var coreRegistered = false
    private var vlcRegistered = false

    override fun getFlutterShellArgs(): FlutterShellArgs {
        return FlutterShellArgs(arrayOf("--enable-impeller=false"))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Do NOT call super — it would invoke GeneratedPluginRegistrant with libVLC.
        // Use the default FlutterActivity engine (not provideFlutterEngine) so DPAD
        // key events reach Flutter reliably on TV boxes.
        GadirPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, PLUGINS_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "registerCore" -> {
                        registerCorePlugins(flutterEngine)
                        result.success(coreRegistered)
                    }
                    "registerVlc" -> {
                        registerVlcPlugin(flutterEngine)
                        result.success(vlcRegistered)
                    }
                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, PLATFORM_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "isAndroidTv" -> result.success(isTvDevice())
                    else -> result.notImplemented()
                }
            }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (isTvDevice()) {
            window.decorView.systemUiVisibility = (
                android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    or android.view.View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                    or android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    or android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or android.view.View.SYSTEM_UI_FLAG_FULLSCREEN
                    or android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                )
        }
    }

    override fun onPostResume() {
        super.onPostResume()
        // Leanback devices only deliver DPAD keys when the window has focus.
        if (isTvDevice()) {
            window.decorView.post { window.decorView.requestFocus() }
        }
    }

    /** Path, DB, backup & share plugins — after login UI is visible. */
    private fun registerCorePlugins(engine: FlutterEngine) {
        if (coreRegistered) return
        val plugins = engine.plugins
        try {
            plugins.add(io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin())
            plugins.add(io.flutter.plugins.pathprovider.PathProviderPlugin())
            plugins.add(com.tekartik.sqflite.SqflitePlugin())
            plugins.add(com.mr.flutter.plugin.filepicker.FilePickerPlugin())
            plugins.add(dev.fluttercommunity.plus.share.SharePlusPlugin())
            plugins.add(dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin())
            coreRegistered = true
            Log.i(TAG, "Core plugins registered on demand")
        } catch (t: Throwable) {
            Log.e(TAG, "Core plugin registration failed", t)
        }
    }

    /** Load libVLC via reflection so the JVM does not touch VLC classes at startup. */
    private fun registerVlcPlugin(engine: FlutterEngine) {
        if (vlcRegistered) return
        try {
            val clazz = Class.forName("software.solid.fluttervlcplayer.FlutterVlcPlayerPlugin")
            val plugin = clazz.getDeclaredConstructor().newInstance() as FlutterPlugin
            engine.plugins.add(plugin)
            vlcRegistered = true
            Log.i(TAG, "libVLC plugin registered on demand")
        } catch (t: Throwable) {
            Log.e(TAG, "libVLC plugin registration failed", t)
        }
    }

    private fun isTvDevice(): Boolean {
        val pm = packageManager
        return pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK)
            || pm.hasSystemFeature(PackageManager.FEATURE_TELEVISION)
    }
}

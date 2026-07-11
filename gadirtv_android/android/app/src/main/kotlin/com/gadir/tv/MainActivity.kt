package com.gadir.tv

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterShellArgs
import io.flutter.plugin.common.MethodChannel
import software.solid.fluttervlcplayer.FlutterVlcPlayerPlugin

class MainActivity : FlutterActivity() {

    companion object {
        private const val TAG = "GadirTV"
        private const val PLUGINS_CHANNEL = "com.gadir.tv/plugins"
    }

    private var coreRegistered = false
    private var vlcRegistered = false

    override fun getFlutterShellArgs(): FlutterShellArgs {
        return FlutterShellArgs(arrayOf("--enable-impeller=false"))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Do NOT call GeneratedPluginRegistrant — it auto-includes libVLC and
        // crashes many TV boxes at cold start. We control registration here.
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

    private fun registerVlcPlugin(engine: FlutterEngine) {
        if (vlcRegistered) return
        try {
            engine.plugins.add(FlutterVlcPlayerPlugin())
            vlcRegistered = true
            Log.i(TAG, "libVLC plugin registered on demand")
        } catch (t: Throwable) {
            Log.e(TAG, "libVLC plugin registration failed", t)
        }
    }
}

package com.gadir.tv

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterShellArgs
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import software.solid.fluttervlcplayer.FlutterVlcPlayerPlugin

class MainActivity : FlutterActivity() {

    companion object {
        private const val TAG = "GadirTV"
        private const val VLC_CHANNEL = "com.gadir.tv/vlc"
    }

    private var vlcRegistered = false

    override fun getFlutterShellArgs(): FlutterShellArgs {
        // Manifest meta-data alone is not always honoured on TV firmware.
        return FlutterShellArgs(arrayOf("--enable-impeller=false"))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, VLC_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "register" -> {
                        registerVlcPlugin(flutterEngine)
                        result.success(vlcRegistered)
                    }
                    else -> result.notImplemented()
                }
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

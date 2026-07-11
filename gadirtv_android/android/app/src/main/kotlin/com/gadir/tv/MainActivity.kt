package com.gadir.tv

import android.content.pm.PackageManager
import android.os.Bundle
import android.view.KeyEvent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channelName = "com.gadir.tv/platform"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "isAndroidTv" -> result.success(isTvDevice())
                    else -> result.notImplemented()
                }
            }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Some TV firmwares leave a system nav bar overlay; keep content edge-to-edge.
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

    private fun isTvDevice(): Boolean {
        val pm = packageManager
        return pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK)
            || pm.hasSystemFeature(PackageManager.FEATURE_TELEVISION)
    }

    // Forward D-pad / remote keys to Flutter so Focus widgets receive them.
    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (isTvDevice() && event.keyCode != KeyEvent.KEYCODE_BACK) {
            val handled = super.dispatchKeyEvent(event)
            if (handled) return true
        }
        return super.dispatchKeyEvent(event)
    }
}

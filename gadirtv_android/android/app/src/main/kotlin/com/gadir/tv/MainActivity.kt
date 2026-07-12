package com.gadir.tv

import android.os.Build
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private var keysChannel: MethodChannel? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GadirPluginRegistrant.registerWith(flutterEngine)

        keysChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "com.gadir.tv/keys",
        )

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "com.gadir.tv/plugins",
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "registerCorePlugins" -> {
                    GadirPluginRegistrant.registerCorePlugins(flutterEngine)
                    result.success(null)
                }
                "registerVlc" -> {
                    GadirPluginRegistrant.registerVlc(flutterEngine)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "com.gadir.tv/platform",
        ).setMethodCallHandler { _, result ->
            result.success(
                mapOf(
                    "isTelevision" to isTelevisionDevice(),
                    "leanback" to packageManager.hasSystemFeature("android.software.leanback"),
                    "manufacturer" to Build.MANUFACTURER,
                    "model" to Build.MODEL,
                ),
            )
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.decorView.isFocusable = true
        window.decorView.isFocusableInTouchMode = true
    }

    override fun onPostResume() {
        super.onPostResume()
        window.decorView.requestFocus()
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN && forwardKeyToFlutter(event.keyCode)) {
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    private fun forwardKeyToFlutter(keyCode: Int): Boolean {
        if (!isNavigationKey(keyCode)) return false
        keysChannel?.invokeMethod(
            "onKeyDown",
            mapOf("keyCode" to keyCode),
        )
        return true
    }

    private fun isNavigationKey(keyCode: Int): Boolean {
        return when (keyCode) {
            KeyEvent.KEYCODE_DPAD_UP,
            KeyEvent.KEYCODE_DPAD_DOWN,
            KeyEvent.KEYCODE_DPAD_LEFT,
            KeyEvent.KEYCODE_DPAD_RIGHT,
            KeyEvent.KEYCODE_DPAD_CENTER,
            KeyEvent.KEYCODE_ENTER,
            KeyEvent.KEYCODE_NUMPAD_ENTER,
            KeyEvent.KEYCODE_BUTTON_A,
            KeyEvent.KEYCODE_BUTTON_SELECT -> true
            else -> false
        }
    }

    private fun isTelevisionDevice(): Boolean {
        val uiMode = resources.configuration.uiMode and android.content.res.Configuration.UI_MODE_TYPE_MASK
        if (uiMode == android.content.res.Configuration.UI_MODE_TYPE_TELEVISION) {
            return true
        }
        if (packageManager.hasSystemFeature("android.software.leanback")) {
            return true
        }
        val model = (Build.MODEL ?: "").lowercase()
        val manufacturer = (Build.MANUFACTURER ?: "").lowercase()
        return model.contains("tv") ||
            model.contains("box") ||
            manufacturer.contains("amlogic") ||
            manufacturer.contains("xiaomi")
    }
}

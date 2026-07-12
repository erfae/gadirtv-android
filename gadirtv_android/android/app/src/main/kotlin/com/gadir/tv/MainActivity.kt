package com.gadir.tv

import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.util.Log
import android.view.KeyEvent
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
        private const val KEYS_CHANNEL = "com.gadir.tv/keys"
        private const val HTTP_CHANNEL = "com.gadir.tv/http"
    }

    private var coreRegistered = false
    private var vlcRegistered = false
    private var keysChannel: MethodChannel? = null

    override fun getFlutterShellArgs(): FlutterShellArgs {
        return FlutterShellArgs(arrayOf("--enable-impeller=false"))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Do NOT call super — avoids GeneratedPluginRegistrant loading libVLC at cold start.
        GadirPluginRegistrant.registerWith(flutterEngine)

        keysChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            KEYS_CHANNEL,
        )

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
                    "openUrl" -> openExternalUrl(call.argument("url"), result)
                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, HTTP_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "request" -> {
                        val url = call.argument<String>("url")
                        val ua = call.argument<String>("userAgent") ?: "XCIPTV"
                        val method = call.argument<String>("method") ?: "GET"
                        if (url.isNullOrBlank()) {
                            result.error("BAD_ARGS", "url required", null)
                            return@setMethodCallHandler
                        }
                        httpRequest(url, ua, method, result)
                    }
                    else -> result.notImplemented()
                }
            }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.decorView.isFocusable = true
        window.decorView.isFocusableInTouchMode = true
        if (isTvDevice()) {
            @Suppress("DEPRECATION")
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
        if (isTvDevice()) {
            window.decorView.post { window.decorView.requestFocus() }
        }
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        // Only consume DPAD on leanback/TV — on phone emulators Flutter handles keys.
        if (isTvDevice() &&
            event.action == KeyEvent.ACTION_DOWN &&
            forwardKeyToFlutter(event.keyCode)
        ) {
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

    /** VIEW intent for trailers / external links — prefers YouTube TV on leanback. */
    private fun openExternalUrl(url: String?, result: MethodChannel.Result) {
        if (url.isNullOrBlank()) {
            result.error("BAD_ARGS", "url required", null)
            return
        }
        try {
            val uri = Uri.parse(url)
            val isYoutube = uri.scheme == "vnd.youtube"
                || uri.host?.contains("youtube") == true
                || uri.host == "youtu.be"

            if (isYoutube) {
                for (pkg in listOf(
                    "com.google.android.youtube.tv",
                    "com.google.android.youtube",
                )) {
                    val intent = Intent(Intent.ACTION_VIEW, uri).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        setPackage(pkg)
                    }
                    if (intent.resolveActivity(packageManager) != null) {
                        startActivity(intent)
                        result.success(true)
                        return
                    }
                }
            }

            val generic = Intent(Intent.ACTION_VIEW, uri).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            if (generic.resolveActivity(packageManager) != null) {
                startActivity(generic)
                result.success(true)
            } else {
                result.success(false)
            }
        } catch (t: Throwable) {
            Log.e(TAG, "openUrl failed: ${t.message}")
            result.success(false)
        }
    }

    /** OkHttp Xtream login — GET and POST (some panels only accept POST). */
    private fun httpRequest(url: String, userAgent: String, method: String, result: MethodChannel.Result) {
        Thread {
            try {
                val response = NativeHttpClient.request(url, userAgent, method)
                result.success(response)
            } catch (e: Exception) {
                Log.e(TAG, "OkHttp failed ($method): ${e.message}")
                result.success(
                    mapOf(
                        "status" to 0,
                        "body" to "",
                        "client" to "OkHttp",
                        "method" to method.uppercase(),
                        "error" to (e.message ?: e.javaClass.simpleName),
                    ),
                )
            }
        }.start()
    }
}

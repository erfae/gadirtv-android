package com.gadir.tv.util

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri

object YoutubeTrailerHelper {
    private val idPatterns = listOf(
        Regex("(?:youtube\\.com/watch\\?v=|youtu\\.be/|youtube\\.com/embed/)([\\w-]{6,})"),
        Regex("^([\\w-]{11})$"),
    )

    fun extractId(url: String): String? {
        val trimmed = url.trim()
        for (pattern in idPatterns) {
            val match = pattern.find(trimmed) ?: continue
            return match.groupValues[1]
        }
        return null
    }

    fun openInYoutubeApp(context: Context, videoId: String): Boolean {
        val watchUri = Uri.parse("https://www.youtube.com/watch?v=$videoId")
        val candidates = listOf(
            "com.google.android.youtube.tv",
            "com.google.android.youtube",
        )
        for (packageName in candidates) {
            if (!isPackageInstalled(context, packageName)) continue
            val intent = Intent(Intent.ACTION_VIEW, watchUri)
                .setPackage(packageName)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            if (intent.resolveActivity(context.packageManager) != null) {
                context.startActivity(intent)
                return true
            }
        }
        val generic = Intent(Intent.ACTION_VIEW, Uri.parse("vnd.youtube:$videoId"))
            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        if (generic.resolveActivity(context.packageManager) != null) {
            context.startActivity(generic)
            return true
        }
        return false
    }

    fun iframeApiHtml(videoId: String, origin: String): String = """
        <!DOCTYPE html>
        <html>
        <head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <style>
            html, body { margin:0; padding:0; background:#000; height:100%; overflow:hidden; }
            #player { position:absolute; top:0; left:0; width:100%; height:100%; }
          </style>
        </head>
        <body>
          <div id="player"></div>
          <script>
            var tag = document.createElement('script');
            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
            var player;
            function onYouTubeIframeAPIReady() {
              player = new YT.Player('player', {
                width: '100%',
                height: '100%',
                videoId: '$videoId',
                playerVars: {
                  autoplay: 1,
                  rel: 0,
                  modestbranding: 1,
                  fs: 1,
                  playsinline: 0,
                  controls: 1,
                  iv_load_policy: 3,
                  origin: '$origin'
                },
                events: {
                  onReady: function(event) {
                    event.target.playVideo();
                    if (window.TrailerBridge) TrailerBridge.onReady();
                  },
                  onError: function(event) {
                    if (window.TrailerBridge) TrailerBridge.onPlayerError(event.data);
                  },
                  onStateChange: function(event) {
                    if (event.data === YT.PlayerState.PLAYING && window.TrailerBridge) {
                      TrailerBridge.onPlaying();
                    }
                  }
                }
              });
            }
          </script>
        </body>
        </html>
    """.trimIndent()

    fun nocookieIframeHtml(videoId: String, origin: String): String = """
        <!DOCTYPE html>
        <html>
        <head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <style>
            html, body { margin:0; padding:0; background:#000; height:100%; overflow:hidden; }
            iframe { position:absolute; top:0; left:0; width:100%; height:100%; border:0; }
          </style>
        </head>
        <body>
          <iframe
            src="https://www.youtube-nocookie.com/embed/$videoId?autoplay=1&rel=0&modestbranding=1&fs=1&playsinline=0&controls=1&iv_load_policy=3&enablejsapi=1&origin=$origin"
            allow="autoplay; encrypted-media; fullscreen; picture-in-picture"
            allowfullscreen>
          </iframe>
        </body>
        </html>
    """.trimIndent()

    private fun isPackageInstalled(context: Context, packageName: String): Boolean {
        return try {
            context.packageManager.getPackageInfo(packageName, 0)
            true
        } catch (_: PackageManager.NameNotFoundException) {
            false
        }
    }
}

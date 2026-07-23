package com.gadir.tv.util

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

    fun directEmbedUrl(videoId: String, origin: String = "https://www.youtube.com"): String =
        "https://www.youtube.com/embed/$videoId" +
            "?autoplay=1&rel=0&modestbranding=1&fs=1&playsinline=1&controls=1" +
            "&enablejsapi=1&iv_load_policy=3&origin=$origin"

    fun pipedEmbedUrl(videoId: String): String =
        "https://piped.video/embed/$videoId?autoplay=1"

    fun invidiousEmbedUrls(videoId: String): List<String> = listOf(
        "https://yewtu.be/embed/$videoId?autoplay=1",
        "https://inv.nadeko.net/embed/$videoId?autoplay=1",
        "https://invidious.fdn.fr/embed/$videoId?autoplay=1",
    )

    fun dailymotionEmbedUrl(url: String): String? {
        val match = Regex("dailymotion\\.com/video/([\\w-]+)").find(url) ?: return null
        return "https://www.dailymotion.com/embed/video/${match.groupValues[1]}?autoplay=1"
    }

    fun isAllowedEmbedUrl(url: String): Boolean {
        val lower = url.lowercase()
        return lower.contains("/embed/") ||
            lower.contains("player.vimeo.com") ||
            lower.contains("piped.video/embed") ||
            lower.contains("yewtu.be/embed") ||
            lower.contains("inv.nadeko.net/embed") ||
            lower.contains("invidious.fdn.fr/embed") ||
            lower.contains("youtube-nocookie.com/embed") ||
            lower.contains("youtube.com/embed") ||
            lower.startsWith("data:text/html")
    }

    fun embedHeaders(): Map<String, String> = mapOf(
        "Referer" to "https://www.youtube.com",
        "Origin" to "https://www.youtube.com",
    )

    fun iframeApiHtml(videoId: String, host: String, origin: String): String = """
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
            function onYouTubeIframeAPIReady() {
              new YT.Player('player', {
                width: '100%',
                height: '100%',
                host: '$host',
                videoId: '$videoId',
                playerVars: {
                  autoplay: 1, rel: 0, modestbranding: 1, fs: 1,
                  playsinline: 1, controls: 1, iv_load_policy: 3, origin: '$origin'
                },
                events: {
                  onReady: function(e) { e.target.playVideo(); },
                  onError: function(e) {
                    if (window.TrailerBridge) TrailerBridge.onPlayerError(e.data);
                  },
                  onStateChange: function(e) {
                    if (!window.TrailerBridge) return;
                    if (e.data === YT.PlayerState.PLAYING) {
                      TrailerBridge.onPlaying();
                    } else if (e.data === YT.PlayerState.ENDED) {
                      // Close back to the app instead of letting YouTube show its own
                      // "up next" recommendations screen inside the embedded player.
                      TrailerBridge.onEnded();
                    }
                  }
                }
              });
            }
          </script>
        </body>
        </html>
    """.trimIndent()

    fun vimeoEmbedUrl(url: String): String? {
        val match = Regex("vimeo\\.com/(?:video/)?([0-9]+)").find(url) ?: return null
        return "https://player.vimeo.com/video/${match.groupValues[1]}?autoplay=1"
    }
}

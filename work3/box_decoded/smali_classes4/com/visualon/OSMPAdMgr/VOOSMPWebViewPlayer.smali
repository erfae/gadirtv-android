.class Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;
.super Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
.source "VOOSMPWebViewPlayer.java"


# instance fields
.field private mAppInf:Ljava/lang/Object;

.field private final mTag:Ljava/lang/String;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string p1, "@@@VOOSMPWebViewPlayer"

    .line 43
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mAppInf:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 50
    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mAppInf:Ljava/lang/Object;

    .line 51
    new-instance p1, Lcom/visualon/OSMPAdMgr/WebChromeClientCustomPoster;

    invoke-direct {p1}, Lcom/visualon/OSMPAdMgr/WebChromeClientCustomPoster;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 52
    new-instance p1, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$1;

    invoke-direct {p1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)V

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Landroid/webkit/WebChromeClient;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mAppInf:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public adjustUIOffset()V
    .locals 1

    const-string v0, "javascript:adjustOffset()"

    .line 145
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public configureUI(Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:configureUI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public destroyHelper()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPWebViewPlayer"

    const-string v2, "WebView destroyHelper"

    .line 156
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewPlayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewPlayer:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    .line 159
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const-string v1, "about:blank"

    .line 165
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 168
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 171
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewPlayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewPlayer:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    .line 134
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public playPause()V
    .locals 1

    const-string v0, "javascript:playPauseAd()"

    .line 123
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const-string v0, "javascript:resumeAd()"

    .line 118
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    const-string v0, "javascript:startAd()"

    .line 103
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const-string v0, "javascript:stopAd()"

    .line 108
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public suspend()V
    .locals 1

    const-string v0, "javascript:suspendAd()"

    .line 113
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public toggleAudio()V
    .locals 1

    const-string v0, "javascript:toggleAudio()"

    .line 128
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

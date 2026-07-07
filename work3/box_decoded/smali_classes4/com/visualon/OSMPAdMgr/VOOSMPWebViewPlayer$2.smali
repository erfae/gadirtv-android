.class Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;
.super Ljava/lang/Object;
.source "VOOSMPWebViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->load(Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$hideView:Z

.field final synthetic val$isUrl:Z

.field final synthetic val$urlOrData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iput-boolean p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$isUrl:Z

    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$urlOrData:Ljava/lang/String;

    iput-object p4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$baseUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$hideView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 66
    new-instance v6, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iput-object v6, v0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewPlayer:Landroid/view/View;

    const-string v0, "#000000"

    .line 68
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 70
    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 73
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 74
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 76
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "appInf"

    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$isUrl:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$urlOrData:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$urlOrData:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->val$hideView:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 94
    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

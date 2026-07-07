.class public Lcom/magoware/magoware/webtv/webview/WebViewFragment;
.super Landroid/app/Fragment;
.source "WebViewFragment.java"


# static fields
.field public static final FRAGMENT_WEB_URL:Ljava/lang/String; = "WEB_URL"


# instance fields
.field private mainWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initWebView()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/magoware/magoware/webtv/webview/WebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/webview/WebViewFragment$1;-><init>(Lcom/magoware/magoware/webtv/webview/WebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e0207

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03cf

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->initWebView()V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "WEB_URL"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/magoware/magoware/webtv/webview/WebViewFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getWebViewHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

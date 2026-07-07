.class public Lcom/magoware/magoware/webtv/login/HelpFragment;
.super Landroidx/fragment/app/Fragment;
.source "HelpFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "HelpFragment:Content"

.field public static final TAG:Ljava/lang/String; = "HelpFragment"


# instance fields
.field private mainWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    return-void
.end method

.method private getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 2

    .line 81
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://my.networx.bg/"

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://www1.magoware.tv/privacy-policy/"

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://mdu1.tv/faq"

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/help_support"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private initWebView()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/HelpFragment;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getWebViewHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/HelpFragment$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/HelpFragment$1;-><init>(Lcom/magoware/magoware/webtv/login/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

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

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03cf

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/HelpFragment;->mainWebView:Landroid/webkit/WebView;

    .line 47
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/HelpFragment;->initWebView()V

    return-object p1
.end method

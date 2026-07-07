.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepHotelInfoFragment.java"


# instance fields
.field activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainWebView:Landroid/webkit/WebView;

.field private privacyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    const-string v0, "https://www.google.com/"

    .line 28
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->privacyUrl:Ljava/lang/String;

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->privacyUrl:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getWebViewHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment$1;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 35
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

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

    const p3, 0x7f0e00bc

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06fe

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->mainWebView:Landroid/webkit/WebView;

    .line 43
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 45
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;->initWebView()V

    return-object p1
.end method

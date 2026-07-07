.class public Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;
.super Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;
.source "NetworkTestFragment.java"

# interfaces
.implements Lcom/novoda/merlin/Connectable;
.implements Lcom/novoda/merlin/Disconnectable;
.implements Lcom/novoda/merlin/Bindable;


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkTestFragment"

.field private static final URI_ERROR_ROUTER:Ljava/lang/String; = "file:///android_asset/gif/error_router.gif"

.field private static final URI_ERROR_SERVER:Ljava/lang/String; = "file:///android_asset/gif/error_server.gif"

.field private static final URI_SUCCESS_SERVER:Ljava/lang/String; = "file:///android_asset/gif/success_server.gif"


# instance fields
.field private merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

.field private networkStatusDisplayer:Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

.field networkTestImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b048f
    .end annotation
.end field

.field retryTestButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0106
    .end annotation
.end field

.field private viewToAttachDisplayerTo:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    return-void
.end method

.method private hasInternetAccess()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    new-instance v1, Lcom/magoware/magoware/webtv/network_test/presentation/-$$Lambda$NetworkTestFragment$wyYUzZMLg-ABLWqwOgcfQnAA3ZU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/network_test/presentation/-$$Lambda$NetworkTestFragment$wyYUzZMLg-ABLWqwOgcfQnAA3ZU;-><init>(Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;)V

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/MerlinsBeard;->hasInternetAccess(Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;)V

    return-void
.end method

.method private initNetworkListener()V
    .locals 1

    .line 53
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->registerConnectable(Lcom/novoda/merlin/Connectable;)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->registerBindable(Lcom/novoda/merlin/Bindable;)V

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->updateGif()V

    :cond_0
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinsBeard;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateGif()V
    .locals 3

    .line 130
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string v1, "file:///android_asset/gif/error_router.gif"

    .line 132
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkTestImageView:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 134
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkStatusDisplayer:Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

    const v1, 0x7f140133

    iget-object v2, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->displayNegativeMessage(ILandroid/view/View;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->hasInternetAccess()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createMerlin()Lcom/novoda/merlin/Merlin;
    .locals 2

    .line 68
    new-instance v0, Lcom/novoda/merlin/Merlin$Builder;

    invoke-direct {v0}, Lcom/novoda/merlin/Merlin$Builder;-><init>()V

    .line 69
    invoke-virtual {v0}, Lcom/novoda/merlin/Merlin$Builder;->withConnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinBuilder;->withDisconnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinBuilder;->withBindableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/MerlinBuilder;->build(Landroid/content/Context;)Lcom/novoda/merlin/Merlin;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$hasInternetAccess$0$NetworkTestFragment(Z)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "file:///android_asset/gif/success_server.gif"

    goto :goto_0

    :cond_0
    const-string v1, "file:///android_asset/gif/error_server.gif"

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkTestImageView:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkStatusDisplayer:Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

    const v0, 0x7f1400fb

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->displayPositiveMessage(ILandroid/view/View;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkStatusDisplayer:Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

    const v0, 0x7f140133

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->displayNegativeMessage(ILandroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onBind(Lcom/novoda/merlin/NetworkStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkStatus"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/novoda/merlin/NetworkStatus;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->onDisconnect()V

    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 0

    return-void
.end method

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

    .line 63
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    const p3, 0x7f0e0189

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 97
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    const p2, 0x7f0b00e5

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    new-instance p3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 102
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/request/RequestOptions;

    .line 103
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0803c5

    :goto_0
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/request/RequestOptions;

    .line 105
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 107
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    .line 108
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 110
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->retryTestButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 112
    new-instance p2, Lcom/novoda/merlin/MerlinsBeard$Builder;

    invoke-direct {p2}, Lcom/novoda/merlin/MerlinsBeard$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/novoda/merlin/MerlinsBeard$Builder;->build(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    .line 113
    new-instance p2, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    invoke-direct {p2, p3, v0}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;-><init>(Landroid/content/res/Resources;Lcom/novoda/merlin/MerlinsBeard;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkStatusDisplayer:Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;

    return-object p1
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method onTryClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0b0106
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->updateGif()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->viewToAttachDisplayerTo:Landroid/view/View;

    .line 121
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->initNetworkListener()V

    return-void
.end method

.method public requestTestButtonFocus()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->retryTestButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

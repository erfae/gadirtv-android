.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TvHomePageActivity.kt"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;
.implements Landroidx/leanback/widget/OnItemViewClickedListener;
.implements Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvHomePageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvHomePageActivity.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n+ 3 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,500:1\n14#2:501\n14#2:502\n14#2:503\n14#2:504\n33#3:505\n*E\n*S KotlinDebug\n*F\n+ 1 TvHomePageActivity.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity\n*L\n133#1:501\n135#1:502\n136#1:503\n137#1:504\n450#1:505\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0010\u0010^\u001a\u00020[2\u0006\u0010_\u001a\u00020&H\u0016J\u0010\u0010`\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0010\u0010a\u001a\u00020[2\u0006\u0010b\u001a\u00020cH\u0002J\u0008\u0010d\u001a\u00020[H\u0002J\u0008\u0010e\u001a\u00020[H\u0002J\u0008\u0010f\u001a\u00020[H\u0016J\u0008\u0010g\u001a\u00020[H\u0002J\u0008\u0010h\u001a\u00020[H\u0002J\u0008\u0010i\u001a\u00020[H\u0002J\u0008\u0010j\u001a\u00020[H\u0002J\u0008\u0010k\u001a\u00020[H\u0002J\u0006\u0010l\u001a\u00020[J\"\u0010m\u001a\u00020[2\u0006\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020o2\u0008\u0010q\u001a\u0004\u0018\u00010rH\u0014J\u0012\u0010s\u001a\u00020[2\u0008\u0010t\u001a\u0004\u0018\u00010uH\u0014J0\u0010v\u001a\u00020[2\u0008\u0010w\u001a\u0004\u0018\u00010x2\u0008\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010{\u001a\u0004\u0018\u00010|2\u0008\u0010}\u001a\u0004\u0018\u00010~H\u0016J\u001d\u0010\u007f\u001a\u00020&2\u0007\u0010\u0080\u0001\u001a\u00020o2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0016J\u0014\u0010\u0083\u0001\u001a\u00020[2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010rH\u0014J\t\u0010\u0085\u0001\u001a\u00020[H\u0014J\u0011\u0010\u0086\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0011\u0010\u0087\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0011\u0010\u0088\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0011\u0010\u0089\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0011\u0010\u008a\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u0011\u0010\u008b\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0002J\u000f\u0010\u008c\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]J\t\u0010\u008d\u0001\u001a\u00020[H\u0002J\t\u0010\u008e\u0001\u001a\u00020[H\u0002J\u0015\u0010\u008f\u0001\u001a\u00020[2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0002J\u000f\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0019\u0010\u0093\u0001\u001a\u0014\u0012\u000f\u0012\r\u0012\u0006\u0012\u0004\u0018\u00010o\u0018\u00010\u0095\u00010\u0094\u0001J\t\u0010\u0096\u0001\u001a\u00020[H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u00100\u001a\u0002018\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000207X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u00020=X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010B\u001a\u00020CX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010H\u001a\u00020IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010N\u001a\u00020OX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u001e\u0010T\u001a\u00020U8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010Y\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Ldagger/android/support/HasSupportFragmentInjector;",
        "Landroidx/leanback/widget/OnItemViewClickedListener;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;",
        "()V",
        "accountViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "getAccountViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "setAccountViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V",
        "dimFilter",
        "Landroid/widget/ImageView;",
        "getDimFilter",
        "()Landroid/widget/ImageView;",
        "setDimFilter",
        "(Landroid/widget/ImageView;)V",
        "dispatchingAndroidInjector",
        "Ldagger/android/DispatchingAndroidInjector;",
        "Landroidx/fragment/app/Fragment;",
        "getDispatchingAndroidInjector",
        "()Ldagger/android/DispatchingAndroidInjector;",
        "setDispatchingAndroidInjector",
        "(Ldagger/android/DispatchingAndroidInjector;)V",
        "homeFeedComingChannelsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;",
        "getHomeFeedComingChannelsViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;",
        "setHomeFeedComingChannelsViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)V",
        "homeFeedMovieNewViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;",
        "getHomeFeedMovieNewViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;",
        "setHomeFeedMovieNewViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;)V",
        "isKeyInputBlocked",
        "",
        "()Z",
        "setKeyInputBlocked",
        "(Z)V",
        "magowareViewModel",
        "Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;",
        "getMagowareViewModel",
        "()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;",
        "setMagowareViewModel",
        "(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;)V",
        "mediaRepository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
        "getMediaRepository",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
        "setMediaRepository",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)V",
        "popUpLayout",
        "Landroid/view/View;",
        "getPopUpLayout",
        "()Landroid/view/View;",
        "setPopUpLayout",
        "(Landroid/view/View;)V",
        "progresbar",
        "Landroid/widget/ProgressBar;",
        "getProgresbar",
        "()Landroid/widget/ProgressBar;",
        "setProgresbar",
        "(Landroid/widget/ProgressBar;)V",
        "requestOptions",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "getRequestOptions",
        "()Lcom/bumptech/glide/request/RequestOptions;",
        "setRequestOptions",
        "(Lcom/bumptech/glide/request/RequestOptions;)V",
        "simpleDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "getSimpleDateFormat",
        "()Ljava/text/SimpleDateFormat;",
        "setSimpleDateFormat",
        "(Ljava/text/SimpleDateFormat;)V",
        "viewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
        "getViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
        "setViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)V",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "addOrRemoveFromList",
        "",
        "card",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        "blockScreen",
        "showProgressDialog",
        "continuePausedMovie",
        "downloadImageToPopUpImageView",
        "url",
        "",
        "findViews",
        "getAccountInfo",
        "initWorkerForAndroidChannels",
        "injectViewModels",
        "intentApplications",
        "intentLogin",
        "intentPersonal",
        "intentSettings",
        "logOut",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onItemClicked",
        "itemViewHolder",
        "Landroidx/leanback/widget/Presenter$ViewHolder;",
        "item",
        "",
        "rowViewHolder",
        "Landroidx/leanback/widget/RowPresenter$ViewHolder;",
        "row",
        "Landroidx/leanback/widget/Row;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onNewIntent",
        "intent",
        "onResume",
        "onSettingCardClicked",
        "openAddToMyList",
        "openChannel",
        "openMovie",
        "openSchedulePopUp",
        "openTrendingPopUp",
        "openTvShow",
        "pleaseLoginFirst",
        "setLoginButton",
        "setWelcomeMessage",
        "accountInfo",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
        "supportFragmentInjector",
        "syncScheduledList",
        "Ljava/util/concurrent/CompletableFuture;",
        "",
        "unBlockScreen",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field public dimFilter:Landroid/widget/ImageView;

.field public dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

.field public homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

.field private isKeyInputBlocked:Z

.field public magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field public mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public popUpLayout:Landroid/view/View;

.field public progresbar:Landroid/widget/ProgressBar;

.field public requestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final synthetic access$addOrRemoveFromList(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->addOrRemoveFromList(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public static final synthetic access$intentLogin(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->intentLogin()V

    return-void
.end method

.method public static final synthetic access$openChannel(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openChannel(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public static final synthetic access$setWelcomeMessage(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->setWelcomeMessage(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V

    return-void
.end method

.method private final addOrRemoveFromList(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 10

    .line 396
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "popUpLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f14005c

    goto :goto_0

    :cond_1
    const v1, 0x7f14036b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 397
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    if-nez v0, :cond_2

    const-string v1, "homeFeedMovieNewViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v9, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v3, "card.title"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v6

    const-string v3, "card.releaseDate"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v7

    const-string v3, "card.posterPath"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v9

    .line 397
    invoke-direct/range {v3 .. v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2, v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->setVodFavorite(IILcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;)V

    .line 399
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setWatched(Z)V

    return-void
.end method

.method private final continuePausedMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 4

    .line 215
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    if-nez v1, :cond_0

    const-string v2, "magowareViewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodDetailsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final downloadImageToPopUpImageView(Ljava/lang/String;)V
    .locals 2

    .line 427
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 428
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 429
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    const-string v1, "requestOptions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "popUpLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private final findViews()V
    .locals 2

    const v0, 0x7f0b021d

    .line 154
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.dynamic_home_page_tv_pop_up)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    const v0, 0x7f0b0206

    .line 155
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.dim_filter)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dimFilter:Landroid/widget/ImageView;

    const v0, 0x7f0b069e

    .line 156
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.tv_home_progress_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->progresbar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final getAccountInfo()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->getAccountInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$getAccountInfo$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$getAccountInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final injectViewModels()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    const-string v1, "viewModelFactory"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 501
    :cond_0
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    .line 134
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v3, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v3, "ViewModelProvider(this).\u2026areViewModel::class.java)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 135
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 502
    :cond_1
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    .line 136
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 503
    :cond_2
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    .line 137
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 504
    :cond_3
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    return-void
.end method

.method private final intentApplications()V
    .locals 3

    .line 389
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(this, AppsActivit\u2026s(FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final intentLogin()V
    .locals 3

    .line 197
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_login_fragment"

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final intentPersonal()V
    .locals 3

    .line 378
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(this, GuidedStepP\u2026s(FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final intentSettings()V
    .locals 2

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final onSettingCardClicked(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 1

    .line 348
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140255

    .line 349
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->logOut()V

    goto :goto_0

    :cond_0
    const v0, 0x7f1403b7

    .line 350
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->intentSettings()V

    goto :goto_0

    :cond_1
    const v0, 0x7f140320

    .line 351
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->intentPersonal()V

    goto :goto_0

    :cond_2
    const v0, 0x7f140076

    .line 352
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->intentApplications()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final openAddToMyList(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 5

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->blockScreen(Z)V

    .line 319
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    const-string v2, "popUpLayout"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 322
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0b0662

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "popUpLayout.findViewById\u2026title_of_program_clicked)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v1, 0x7f0b0590

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "popUpLayout.findViewById\u2026id.secondary_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card.posterPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->downloadImageToPopUpImageView(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched()Z

    move-result v0

    const v1, 0x7f0b039a

    if-eqz v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f14036b

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f14005c

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v3, 0x7f0b054b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f14007a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openAddToMyList$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openAddToMyList$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openAddToMyList$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openAddToMyList$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final openChannel(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 5

    .line 257
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    const/16 v1, 0x77f

    if-eq v0, v1, :cond_0

    .line 258
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final openMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    const/16 v1, 0x849

    if-ne v0, v1, :cond_0

    .line 206
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Video"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "intent.putExtra(DetailAc\u2026DEO, Gson().toJson(card))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    const/16 v0, 0xc9

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final openSchedulePopUp(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 8

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->blockScreen(Z)V

    .line 268
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    const-string v2, "popUpLayout"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 270
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const v3, 0x7f0b03cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026extView>(R.id.main_title)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v3, 0x7f0b0662

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026title_of_program_clicked)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const v3, 0x7f0b0564

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026uled_program_description)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getDescription()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const v3, 0x7f0b0590

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026id.secondary_description)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramStart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->getHourFromDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    sget-object v6, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramEnd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->getHourFromDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s - %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->downloadImageToPopUpImageView(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const v3, 0x7f0b039a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getScheduled()Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f140396

    goto :goto_0

    :cond_7
    const v0, 0x7f14039a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    const v0, 0x7f0b054b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f14007a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private final openTrendingPopUp(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 8

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->blockScreen(Z)V

    .line 231
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    const-string v2, "popUpLayout"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 233
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const v3, 0x7f0b03cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026extView>(R.id.main_title)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v3, 0x7f0b0662

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026title_of_program_clicked)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const v3, 0x7f0b0564

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026uled_program_description)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getDescription()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const v3, 0x7f0b0590

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById\u2026id.secondary_description)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 237
    sget-object v5, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramStart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->getHourFromDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    .line 238
    sget-object v6, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramEnd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->getHourFromDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 236
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s - %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->downloadImageToPopUpImageView(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openTrendingPopUp$1;

    invoke-direct {v3, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openTrendingPopUp$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f14033e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const v0, 0x7f0b054b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openTrendingPopUp$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openTrendingPopUp$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f14007a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private final pleaseLoginFirst()V
    .locals 5

    .line 404
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0092

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "layoutInflater.inflate(R\u2026amic_custom_dialog, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0b065f

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f14024e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b054b

    .line 408
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.right_button)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b039a

    .line 409
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.left_button)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f14024d

    .line 411
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f140083

    .line 413
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 415
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$pleaseLoginFirst$1;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$pleaseLoginFirst$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$pleaseLoginFirst$2;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$pleaseLoginFirst$2;-><init>(Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setLoginButton()V
    .locals 3

    .line 167
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v0

    const v1, 0x7f0b03b3

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById<Button>(R.id.login_btn)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0b0701

    .line 169
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById<TextView>(R.id.welcome_text)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$setLoginButton$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$setLoginButton$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setWelcomeMessage(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    const v0, 0x7f0b0701

    .line 161
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TextView>(R.id.welcome_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getFirstName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Guest"

    :goto_0
    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Welcome %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public blockScreen(Z)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dimFilter:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "dimFilter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    if-eqz p1, :cond_2

    .line 437
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->progresbar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    const-string v0, "progresbar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final getAccountViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "accountViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDimFilter()Landroid/widget/ImageView;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dimFilter:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "dimFilter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDispatchingAndroidInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    if-nez v0, :cond_0

    const-string v1, "dispatchingAndroidInjector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getHomeFeedComingChannelsViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    if-nez v0, :cond_0

    const-string v1, "homeFeedComingChannelsViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getHomeFeedMovieNewViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    if-nez v0, :cond_0

    const-string v1, "homeFeedMovieNewViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMagowareViewModel()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    if-nez v0, :cond_0

    const-string v1, "magowareViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMediaRepository()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    if-nez v0, :cond_0

    const-string v1, "mediaRepository"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPopUpLayout()Landroid/view/View;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "popUpLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProgresbar()Landroid/widget/ProgressBar;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->progresbar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progresbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    const-string v1, "requestOptions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public initWorkerForAndroidChannels()V
    .locals 5

    .line 447
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0xdbba0

    .line 450
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 505
    new-instance v3, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v0, 0x0

    .line 451
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/work/PeriodicWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 452
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 453
    sget-object v2, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 455
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    const-string v1, "PeriodicWorkRequestBuild\u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 456
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 458
    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    const-string v3, "requstBuilderID"

    .line 456
    invoke-virtual {v1, v3, v2, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final isKeyInputBlocked()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    return v0
.end method

.method public final logOut()V
    .locals 5

    .line 357
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0092

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "layoutInflater.inflate(R\u2026amic_custom_dialog, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0b065f

    .line 359
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f140078

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b054b

    .line 361
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.right_button)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b039a

    .line 362
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.left_button)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f140255

    .line 364
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f140083

    .line 365
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$logOut$1;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$logOut$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$logOut$2;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$logOut$2;-><init>(Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 487
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "HomePageRows"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.magoware.magoware.webtv.mobile_homepage.tv.HomePageRows"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->updatePausedMoviesList()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01ef

    .line 101
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->injectViewModels()V

    .line 103
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->findViews()V

    .line 104
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getAccountInfo()V

    .line 105
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->setLoginButton()V

    .line 106
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070105

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 106
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 108
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    const-string v0, "RequestOptions().overrid\u2026gy(DiskCacheStrategy.ALL)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 114
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    if-nez p1, :cond_0

    const-string v0, "mediaRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->truncateDatabaseInfo()V

    return-void
.end method

.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 176
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    if-eqz p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->pleaseLoginFirst()V

    return-void

    :cond_1
    const-string p1, "null cannot be cast to non-null type com.magoware.magoware.webtv.network.mvvm.models.Card"

    .line 182
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getType()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openAddToMyList(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openSchedulePopUp(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openChannel(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openTrendingPopUp(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->continuePausedMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 184
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 183
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->onSettingCardClicked(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 463
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const-string v0, "popUpLayout"

    if-eqz p2, :cond_2

    .line 464
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 465
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->unBlockScreen()V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v3, 0x7f0b054b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 469
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 470
    :cond_4
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    if-nez v2, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const v0, 0x7f0b039a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_7

    .line 471
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 475
    :cond_6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_7
    :goto_0
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 494
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const/16 v0, 0xc9

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "HomePageRows"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.magoware.magoware.webtv.mobile_homepage.tv.HomePageRows"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->updatePausedMoviesList()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 121
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 122
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final openTvShow(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAccountViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setDimFilter(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dimFilter:Landroid/widget/ImageView;

    return-void
.end method

.method public final setDispatchingAndroidInjector(Ldagger/android/DispatchingAndroidInjector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public final setHomeFeedComingChannelsViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    return-void
.end method

.method public final setHomeFeedMovieNewViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    return-void
.end method

.method public final setKeyInputBlocked(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    return-void
.end method

.method public final setMagowareViewModel(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-void
.end method

.method public final setMediaRepository(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    return-void
.end method

.method public final setPopUpLayout(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->popUpLayout:Landroid/view/View;

    return-void
.end method

.method public final setProgresbar(Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->progresbar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public bridge synthetic supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    check-cast v0, Ldagger/android/AndroidInjector;

    return-object v0
.end method

.method public supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    if-nez v0, :cond_0

    const-string v1, "dispatchingAndroidInjector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final syncScheduledList()Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 479
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public unBlockScreen()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dimFilter:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "dimFilter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->progresbar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    const-string v2, "progresbar"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->isKeyInputBlocked:Z

    return-void
.end method

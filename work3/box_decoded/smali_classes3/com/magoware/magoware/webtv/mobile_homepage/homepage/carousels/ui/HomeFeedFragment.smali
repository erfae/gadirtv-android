.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFeedFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;
.implements Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFeedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFeedFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,461:1\n18#2:462\n18#2:463\n18#2:464\n18#2:465\n18#2:466\n18#2:467\n18#2:468\n18#2:469\n18#2:470\n*E\n*S KotlinDebug\n*F\n+ 1 HomeFeedFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment\n*L\n110#1:462\n111#1:463\n112#1:464\n113#1:465\n114#1:466\n115#1:467\n116#1:468\n117#1:469\n119#1:470\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u00108\u001a\u000209H\u0002J\u0006\u0010:\u001a\u000209J\u0008\u0010;\u001a\u000209H\u0002J\u0016\u0010<\u001a\u0002092\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020>0*H\u0002J\u0010\u0010?\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010B\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010C\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010D\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010E\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010F\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010G\u001a\u0002092\u0006\u0010@\u001a\u00020AH\u0002J\u0008\u0010H\u001a\u000209H\u0002J\u0008\u0010I\u001a\u000209H\u0002J\u0018\u0010J\u001a\u0002092\u0006\u0010K\u001a\u00020!2\u0006\u0010L\u001a\u00020!H\u0016J\"\u0010M\u001a\u0002092\u0006\u0010N\u001a\u00020!2\u0006\u0010O\u001a\u00020!2\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0016J&\u0010R\u001a\u0004\u0018\u00010A2\u0006\u0010S\u001a\u00020T2\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0016J\u0008\u0010Y\u001a\u000209H\u0016J\u0008\u0010Z\u001a\u000209H\u0016J\u0012\u0010[\u001a\u0002092\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0002J\u0008\u0010^\u001a\u000209H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020$X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020!0*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010,\u001a\u00020-X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001e\u00102\u001a\u0002038\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006_"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;",
        "()V",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;",
        "comingChannelList",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        "guestLoginDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "homeFeedChannelsTrendingViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;",
        "homeFeedComingChannelsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;",
        "homeFeedMovieNewViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;",
        "homeFeedMoviePausedViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;",
        "homeFeedMovieViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;",
        "homeFeedTvChannelsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;",
        "homeFeedTvShowsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;",
        "homeFeedViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;",
        "isGuestUser",
        "",
        "layoutRectagnleHeight",
        "",
        "layoutSquareHeight",
        "pausedAdapter",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;",
        "getPausedAdapter",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;",
        "setPausedAdapter",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;)V",
        "scheduleChannelsList",
        "",
        "tvChannelPosterHeight",
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
        "getAccountInfo",
        "",
        "getCarousel",
        "getMoviesPaused",
        "initAdapters",
        "carousels",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
        "initComingChannelsAdapter",
        "carouselLinear",
        "Landroid/view/View;",
        "initMoviesAdapter",
        "initMoviesNewAdapter",
        "initMoviesPausedAdapter",
        "initTvChannelsAdapter",
        "initTvShowsAdapter",
        "initTvTrendingAdapter",
        "intentLogin",
        "intentTvChannels",
        "moviePaused",
        "id",
        "movie_position",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRefresh",
        "showLoginDialog",
        "subscribeUi",
        "accountInfo",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
        "syncScheduledChannels",
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

.field private binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

.field private comingChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;"
        }
    .end annotation
.end field

.field private guestLoginDialog:Landroidx/appcompat/app/AlertDialog;

.field private homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

.field private homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

.field private homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

.field private homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

.field private homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

.field private homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

.field private homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

.field private homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

.field private isGuestUser:Z

.field private layoutRectagnleHeight:I

.field private layoutSquareHeight:I

.field public pausedAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

.field private scheduleChannelsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tvChannelPosterHeight:I

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->comingChannelList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->scheduleChannelsList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getComingChannelList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->comingChannelList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getGuestLoginDialog$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->guestLoginDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const-string v0, "guestLoginDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getHomeFeedComingChannelsViewModel$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    if-nez p0, :cond_0

    const-string v0, "homeFeedComingChannelsViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScheduleChannelsList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->scheduleChannelsList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$initAdapters(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initAdapters(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$intentLogin(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->intentLogin()V

    return-void
.end method

.method public static final synthetic access$intentTvChannels(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->intentTvChannels()V

    return-void
.end method

.method public static final synthetic access$isGuestUser$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    return p0
.end method

.method public static final synthetic access$setBinding$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    return-void
.end method

.method public static final synthetic access$setComingChannelList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->comingChannelList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setGuestLoginDialog$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->guestLoginDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$setGuestUser$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    return-void
.end method

.method public static final synthetic access$setHomeFeedComingChannelsViewModel$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    return-void
.end method

.method public static final synthetic access$setScheduleChannelsList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->scheduleChannelsList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$subscribeUi(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->subscribeUi(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V

    return-void
.end method

.method private final getAccountInfo()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->getAccountInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getAccountInfo$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getAccountInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final getMoviesPaused()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    const-string v1, "homeFeedMoviePausedViewModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v2, :cond_1

    const-string v2, "apiv3/guest/feeds/movies/paused"

    goto :goto_0

    :cond_1
    const-string v2, "apiv3/feeds/movies/paused"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;->setUrl(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;->homeFeedMoviesPaused()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getMoviesPaused$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getMoviesPaused$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initAdapters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;)V"
        }
    .end annotation

    .line 183
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 184
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;

    .line 185
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e012c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v4, "carouselLinear"

    .line 186
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "carouselLinear.feed_carousel_title"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez v4, :cond_0

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v4, v4, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->homeFeedLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "feed_movies_paused"

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initMoviesPausedAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_1
    const-string v4, "feed_movies"

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initMoviesAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_2
    const-string v4, "feed_movies_shows"

    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initTvShowsAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_3
    const-string v4, "feed_tv_schedulable"

    .line 192
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initComingChannelsAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_4
    const-string v4, "feed_tv_channels"

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initTvChannelsAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_5
    const-string v4, "feed_movies_new_arrivals"

    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initMoviesNewAdapter(Landroid/view/View;)V

    goto :goto_1

    :sswitch_6
    const-string v4, "feed_tv_trending"

    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initTvTrendingAdapter(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1faf8edf -> :sswitch_6
        -0x1e07a94c -> :sswitch_5
        -0x1d70c034 -> :sswitch_4
        -0x9d5ef94 -> :sswitch_3
        -0x55419e5 -> :sswitch_2
        0x28d1d104 -> :sswitch_1
        0x555258c9 -> :sswitch_0
    .end sparse-switch
.end method

.method private final initComingChannelsAdapter(Landroid/view/View;)V
    .locals 4

    .line 256
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;-><init>()V

    .line 257
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    const/4 v1, 0x4

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    const-string v2, "homeFeedComingChannelsViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->bind(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)V

    .line 260
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 262
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_2

    const-string v3, "apiv3/guest/feeds/tv/coming"

    goto :goto_0

    :cond_2
    const-string v3, "apiv3/feeds/tv/coming"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->setUrl(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->getComingChannels()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 293
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->syncScheduledChannels()V

    return-void
.end method

.method private final initMoviesAdapter(Landroid/view/View;)V
    .locals 4

    .line 359
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;-><init>()V

    .line 360
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    const/4 v1, 0x4

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 364
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "carouselLinear.feed_carousel_see_all"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesAdapter$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    const-string v2, "homeFeedMovieViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_1

    const-string v3, "apiv3/guest/feeds/movies"

    goto :goto_0

    :cond_1
    const-string v3, "apiv3/feeds/movies"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;->setUrl(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;->getHomeFeedMovies()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesAdapter$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initMoviesNewAdapter(Landroid/view/View;)V
    .locals 4

    .line 308
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;-><init>()V

    .line 309
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    const/4 v1, 0x4

    .line 310
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    const-string v2, "homeFeedMovieNewViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->bind(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;)V

    .line 313
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_2

    const-string v3, "apiv3/guest/feeds/movies/new"

    goto :goto_0

    :cond_2
    const-string v3, "apiv3/feeds/movies/new"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->setUrl(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->getHomeFeedMoviesNew()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesNewAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initMoviesNewAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initMoviesPausedAdapter(Landroid/view/View;)V
    .locals 4

    .line 334
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->pausedAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    const-string v1, "pausedAdapter"

    if-nez v0, :cond_0

    .line 335
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, p0

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    move-object v3, p0

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;

    invoke-virtual {v0, v2, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/MoviePausedListener;)V

    .line 336
    sget v0, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "carouselLinear.feed_carousel_recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->pausedAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 337
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getMoviesPaused()V

    return-void
.end method

.method private final initTvChannelsAdapter(Landroid/view/View;)V
    .locals 5

    .line 204
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;-><init>()V

    .line 205
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    const/4 v1, 0x4

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "carouselLinear.feed_carousel_see_all"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvChannelsAdapter$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvChannelsAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    const-string v2, "homeFeedTvChannelsViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_1

    const-string v3, "apiv3/guest/feeds/tv/channels"

    goto :goto_0

    :cond_1
    const-string v3, "apiv3/feeds/tv/channels"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;->setUrl(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;->getHomeFeedTvChannels()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvChannelsAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvChannelsAdapter$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initTvShowsAdapter(Landroid/view/View;)V
    .locals 4

    .line 387
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;-><init>()V

    .line 388
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    .line 389
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 390
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "carouselLinear.feed_carousel_see_all"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_see_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    const-string v2, "homeFeedTvShowsViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_1

    const-string v3, "apiv3/guest/feeds/shows"

    goto :goto_0

    :cond_1
    const-string v3, "apiv3/feeds/shows"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;->setUrl(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;->getHomeFeedTvShows()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvShowsAdapter$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initTvTrendingAdapter(Landroid/view/View;)V
    .locals 4

    .line 232
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter;-><init>()V

    .line 233
    move-object v1, p0

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter;->setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V

    const/4 v1, 0x4

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    sget v1, Lcom/magoware/magoware/webtv/R$id;->feed_carousel_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "carouselLinear.feed_carousel_recycler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    const-string v2, "homeFeedChannelsTrendingViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v3, :cond_1

    const-string v3, "apiv3/guest/feeds/tv/trending"

    goto :goto_0

    :cond_1
    const-string v3, "apiv3/feeds/tv/trending"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->setUrl(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->homeFeedChannelsTrending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvTrendingAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initTvTrendingAdapter$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final intentLogin()V
    .locals 3

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "first_open_homepage"

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final intentTvChannels()V
    .locals 3

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final subscribeUi(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 3

    .line 144
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    const-string v1, "binding.loginToolbarTitle"

    const-string v2, "binding"

    if-eqz v0, :cond_2

    .line 146
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->loginToolbarTitle:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f14024c

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->loginToolbarTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$subscribeUi$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$subscribeUi$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 150
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->loginToolbarTitle:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getFirstName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->loginToolbarTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$subscribeUi$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$subscribeUi$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getCarousel()V

    .line 156
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->homeFeedSwipeRefresh:Lcom/magoware/magoware/webtv/mobile_homepage/SwipeRefreshLayoutExtension;

    move-object v0, p0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/SwipeRefreshLayoutExtension;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->layoutSquareHeight:I

    .line 158
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->tvChannelPosterHeight:I

    return-void
.end method

.method private final syncScheduledChannels()V
    .locals 7

    .line 297
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$syncScheduledChannels$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$syncScheduledChannels$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getCarousel()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.magoware.magoware.webtv.mobile_homepage.HomePageActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->setRefresh()V

    .line 163
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/ViewExtensionKt;->show(Landroid/widget/ProgressBar;)V

    .line 164
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    const-string v1, "homeFeedViewModel"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->isGuestUser:Z

    if-eqz v2, :cond_2

    const-string v2, "apiv3/guest/feeds/carousels"

    goto :goto_0

    :cond_2
    const-string v2, "apiv3/feeds/carousels"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->setUrl(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->getHomeFeedCarousels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getCarousel$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$getCarousel$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final getPausedAdapter()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->pausedAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    if-nez v0, :cond_0

    const-string v1, "pausedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public moviePaused(II)V
    .locals 3

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vod_id"

    .line 450
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "vod_position"

    .line 451
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0xc9

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getMoviesPaused()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    const-string v0, "viewModelFactory"

    if-nez p3, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    invoke-virtual {p3, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    .line 111
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 463
    :cond_1
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    .line 112
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 464
    :cond_2
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    .line 113
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 465
    :cond_3
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    .line 114
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 466
    :cond_4
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    .line 115
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 467
    :cond_5
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    .line 116
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 468
    :cond_6
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    .line 117
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 469
    :cond_7
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    .line 119
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 470
    :cond_8
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    const/4 p3, 0x0

    .line 121
    invoke-static {p1, p2, p3}, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    move-result-object p1

    const-string p2, "FragmentHomeFeedBinding.\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    .line 122
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "binding"

    if-eqz p1, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getAccountInfo()V

    .line 126
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 122
    :cond_a
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->binding:Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    if-nez p1, :cond_b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    if-nez v0, :cond_0

    const-string v1, "homeFeedViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->getHomeFeedCarousels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 442
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$onRefresh$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$onRefresh$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setPausedAdapter(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->pausedAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviesPausedAdapter;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public showLoginDialog()V
    .locals 4

    .line 426
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f150191

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 427
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "view"

    .line 428
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/magoware/magoware/webtv/R$id;->guest_cancel_dialog_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$showLoginDialog$1;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$showLoginDialog$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    sget v2, Lcom/magoware/magoware/webtv/R$id;->guest_login_dialog_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$showLoginDialog$2;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$showLoginDialog$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "builder.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->guestLoginDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v1, "guestLoginDialog"

    .line 437
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

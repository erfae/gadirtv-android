.class public Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "DashboardActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "DashboardActivity"

.field public static channel_to_be_played:I

.field public static defaultOrExo:Z

.field public static force_local:Z

.field public static force_remote:Z

.field public static fromEPGactivity:Z

.field public static fromGcminfoactivity:Z

.field public static fromInfo:Z

.field public static layoutWidth:I

.field private static mWakeLook:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private MENU_LANGUAGE_REQUEST:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private application:Lcom/magoware/magoware/webtv/MagowareApplication;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private channel_category_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private coverFlowBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

.field deviceTypeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00c4
    .end annotation
.end field

.field private fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private firstTimeActivityRunning:Z

.field private forced_logout:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private lastClickedItem:I

.field private logo_view:Landroid/widget/ImageView;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mRequestStartTimeMenu:J

.field private mSettingsCounter:I

.field private mUsername:Ljava/lang/String;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainWebView:Landroid/webkit/WebView;

.field private menuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;"
        }
    .end annotation
.end field

.field menu_background_image:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03f4
    .end annotation
.end field

.field private menu_items_max_position:I

.field private subscription_expired_notification:Landroid/widget/TextView;

.field private final timeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private timings:Landroid/util/TimingLogger;

.field private tvShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private user_txt:Landroid/widget/TextView;

.field private version_txt:Landroid/widget/TextView;

.field private wakeLockReceiver:Landroid/content/BroadcastReceiver;

.field private webViewContent:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lastClickedItem:I

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->forced_logout:Z

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    .line 183
    iput-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    .line 191
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mSettingsCounter:I

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->coverFlowBitmaps:Ljava/util/HashMap;

    .line 194
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 1555
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1571
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$4;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->wakeLockReceiver:Landroid/content/BroadcastReceiver;

    .line 1592
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$5;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$5;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1603
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$6;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$6;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 150
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mWakeLook:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private disableWIFISleep()V
    .locals 3

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    .line 437
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayCarousel(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cover_image_adapter"
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->coverFlowBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->coverFlowBitmaps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;->putImage(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupCoverFlow(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method private drawMenuElementnew(Lcom/magoware/magoware/webtv/database/objects/MenuObject;ILcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "menu_object",
            "k",
            "coverImageAdapter"
        }
    .end annotation

    const v0, 0x7f0802e0

    .line 740
    :try_start_0
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 741
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 742
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 744
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;

    invoke-direct {v0, p0, p1, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;-><init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/database/objects/MenuObject;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 746
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;

    invoke-direct {v0, p0, p1, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;-><init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/database/objects/MenuObject;Landroid/graphics/Bitmap;)V

    :goto_1
    if-nez v1, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->loadBitmapFromView(Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 754
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->coverFlowBitmaps:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->firstTimeActivityRunning:Z

    if-eqz v0, :cond_1

    .line 756
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;

    invoke-direct {v0, p3, p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 749
    :goto_2
    new-instance p3, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;-><init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/database/objects/MenuObject;Landroid/graphics/Bitmap;)V

    .line 750
    throw p2
.end method

.method private getDashboardMenu()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getDeviceMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$6drk1YcmXgTjIVgBc8JibBP1GP0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$6drk1YcmXgTjIVgBc8JibBP1GP0;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getHotelDashboardInfo()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getHotelDashboardObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$rYn08TE43QNZVwlu3J2s-9M5NDQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$rYn08TE43QNZVwlu3J2s-9M5NDQ;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getOrientation()I
    .locals 1

    .line 1614
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getPallyconToken()V
    .locals 5

    .line 1270
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1272
    sget-wide v2, Lcom/magoware/magoware/webtv/global/Global;->updatedTok:J

    .line 1273
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 1274
    sget-object v2, Lcom/magoware/magoware/webtv/global/Global;->pallyTok:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getPallyTokenObservable()V

    :cond_1
    return-void
.end method

.method private getSettings()V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$t8QPqwZgnLLiG8Cr_R-7SFPopG4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$t8QPqwZgnLLiG8Cr_R-7SFPopG4;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getTvChannels()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getLiveTvChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$10hvPpCH8BW4gxsGLS92EovHP7M;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$10hvPpCH8BW4gxsGLS92EovHP7M;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodMenu()V
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$tG_VvJYdTbHgqkdFxOsXv5yKAsw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$tG_VvJYdTbHgqkdFxOsXv5yKAsw;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodTvShows()V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$if5QlXONr5n2OWfRhTS_8d12uGw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$if5QlXONr5n2OWfRhTS_8d12uGw;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getWeatherData()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getWeatherData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$Xv89XWItWuWtA25SyqW0GWduAfs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$Xv89XWItWuWtA25SyqW0GWduAfs;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initMainView()V
    .locals 6

    .line 447
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 449
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showNetworkDialog(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->logo_view:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_background_image:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->version_txt:Landroid/widget/TextView;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f140477

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "%s%s"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mUsername:Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->initYesTvView()V

    .line 468
    :cond_2
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getHotelDashboardInfo()V

    .line 470
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getWeatherData()V

    .line 473
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupWebViewWidget()V

    .line 474
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    const-string v1, " -B-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 476
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    const-string v1, " -M-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 478
    :cond_5
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 479
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    const-string v1, " -S-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    const v0, 0x7f0b0166

    .line 482
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 483
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 485
    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 497
    :cond_7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->keepCpuWake()V

    return-void
.end method

.method private initYesTvView()V
    .locals 2

    const v0, 0x7f0b06bb

    .line 1038
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getTvChannels()V

    .line 1040
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getVodMenu()V

    .line 1041
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getVodTvShows()V

    return-void
.end method

.method private intentAccount()V
    .locals 3

    .line 1439
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_0

    .line 1440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1441
    const-class v2, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1445
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1446
    const-class v2, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1447
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1448
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private intentApps()V
    .locals 2

    .line 1632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1633
    const-class v1, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1634
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1635
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentAssets()V
    .locals 3

    .line 1485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1486
    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "assets_type"

    const/4 v2, 0x1

    .line 1487
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 1488
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1489
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentLiveTv()V
    .locals 2

    .line 1453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1454
    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1456
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1457
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentNetworkTest()V
    .locals 2

    .line 1461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1462
    const-class v1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1463
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1464
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentTvShows()V
    .locals 3

    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vod_type"

    const-string v2, "tvShow"

    .line 1480
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentVod()V
    .locals 2

    .line 1468
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1469
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 1472
    :cond_0
    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x14000000

    .line 1474
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1475
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isAuthorized()V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->isAuthorizedObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$HDJP3qRlZP1Hf_htvwC1DYnQg6c;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$HDJP3qRlZP1Hf_htvwC1DYnQg6c;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$drawMenuElementnew$2(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;->putImage(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x15

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, p1, :cond_3

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    return p3

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v0

    .line 572
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    .line 575
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSelection(IZ)V

    return v0

    .line 558
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getSelectedItemPosition()I

    move-result p1

    sub-int/2addr p1, v0

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move p3, p1

    .line 562
    :goto_1
    invoke-virtual {p0, p3, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSelection(IZ)V

    return v0
.end method

.method static synthetic lambda$showLogOutDialog$25(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1431
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->refresh()V

    return-void
.end method

.method private quitThreads()V
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method private refreshLogo()V
    .locals 4

    .line 869
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DEFAULT_URL_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v2, 0x7f0802e1

    .line 872
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 873
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 874
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 876
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 877
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 878
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->logo_view:Landroid/widget/ImageView;

    .line 879
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setCarouselFocusedItem()V
    .locals 2

    .line 1618
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lastClickedItem:I

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_items_max_position:I

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSelection(I)V

    goto :goto_1

    .line 1619
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSelection(I)V

    :goto_1
    return-void
.end method

.method private setHotelWelcomeMessage(Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "hotelDashboard"
        }
    .end annotation

    .line 1626
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmWelcomeMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmWelcomeMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1401ec

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1627
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmCustomerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmCustomerName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ","

    :goto_1
    const v1, 0x7f1401eb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 1628
    invoke-virtual {p0, v1, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setMenuBackgroundImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 854
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 855
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 856
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getDefaultBackgroundImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 857
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getDefaultBackgroundImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 859
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 861
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getBackgroundImageUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_background_image:Landroid/widget/ImageView;

    .line 862
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 864
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->refreshLogo()V

    :cond_0
    return-void
.end method

.method private setupCoverFlow(Landroid/widget/BaseAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cover_image_adapter"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 517
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 518
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 520
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 521
    sput v0, Lcom/magoware/magoware/webtv/global/Global;->screenWidth:I

    .line 522
    sget v0, Lcom/magoware/magoware/webtv/global/Global;->screenWidth:I

    .line 527
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageHeight(F)V

    .line 530
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageWidth(F)V

    .line 531
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSpacing(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x578

    if-lt v0, v2, :cond_2

    .line 532
    sget v0, Lcom/magoware/magoware/webtv/global/Global;->screenWidth:I

    if-ge v0, v1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const v1, 0x445e8000    # 890.0f

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageHeight(F)V

    .line 534
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageWidth(F)V

    .line 535
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSpacing(I)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSpacing(I)V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/16 v1, -0x50

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setMaxZoom(I)V

    goto :goto_1

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageHeight(F)V

    .line 543
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07028f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setImageWidth(F)V

    .line 544
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setSpacing(I)V

    .line 545
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const/16 v1, -0x8c

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setMaxZoom(I)V

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 549
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setCarouselFocusedItem()V

    .line 550
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupListeners(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;)V

    return-void
.end method

.method private setupHotelMenu()V
    .locals 5

    .line 986
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->sortHotelMenu()V

    .line 987
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lastClickedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b032d

    .line 988
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 989
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 990
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 991
    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 992
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 993
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->notifyDataSetChanged()V

    .line 994
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setupListeners(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cover_flow"
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$0eg1XimYAbP3PGqR2MT-lJ-83m0;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$0eg1XimYAbP3PGqR2MT-lJ-83m0;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;)V

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 581
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3jpR4P_kkPcGAolkzL1cJnhNwWk;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3jpR4P_kkPcGAolkzL1cJnhNwWk;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setupWebViewWidget()V
    .locals 4

    .line 1344
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->COTT:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b06fc

    .line 1345
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    goto :goto_0

    .line 1346
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b03ce

    .line 1347
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    .line 1351
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1353
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1354
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1355
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1356
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1358
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 1372
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api/htmlContentApp/1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getWebViewHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1375
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/magoware/magoware/webtv/webview/MagoWebViewClient;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/webview/MagoWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1377
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$MmQ-6y6yd45ql3EiOYZmomj-uKE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$MmQ-6y6yd45ql3EiOYZmomj-uKE;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private setupWebViewWidgetWelcomeMsg()V
    .locals 2

    .line 1400
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->COTT:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getWelcomeMsg()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$xV-8maIhzbpqIJYzymQ7prvQWqk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$xV-8maIhzbpqIJYzymQ7prvQWqk;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private showAfricaGetMovie()V
    .locals 3

    .line 827
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const v1, 0x7f0b03fd

    .line 828
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08034b

    .line 829
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRandomMovieObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;

    invoke-direct {v2, p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private showCarouselMenu()V
    .locals 3

    .line 1051
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;-><init>()V

    .line 1052
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->firstTimeActivityRunning:Z

    if-nez v1, :cond_0

    .line 1053
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->displayCarousel(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V

    .line 1056
    :cond_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$WtsWT0We12YFNiftuuCbG03xhq8;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$WtsWT0We12YFNiftuuCbG03xhq8;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLogOutDialog()V
    .locals 4

    .line 1416
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140078

    .line 1417
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f14049c

    .line 1418
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$vhJA9fERcxAAUlVK6bR-TuYQcT4;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$vhJA9fERcxAAUlVK6bR-TuYQcT4;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1402e2

    .line 1426
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$mndBYHU5fLorJM3l_f1r_U-sgoY;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$mndBYHU5fLorJM3l_f1r_U-sgoY;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1428
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1430
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f140361

    .line 1431
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$II6WbOdI9thlFQHlXuR1vNqxMG8;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$II6WbOdI9thlFQHlXuR1vNqxMG8;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1433
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1434
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1435
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showNetworkDialog(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 886
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140485

    .line 887
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 888
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v2, 0x0

    .line 889
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 890
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 895
    :cond_0
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->isOnline(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    .line 899
    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 901
    :cond_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 905
    :cond_2
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " "

    const v2, 0x7f1402dc

    const/4 v3, 0x2

    if-ge p1, v3, :cond_3

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    if-ne p1, v3, :cond_4

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/3 "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1402ef

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 911
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 912
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 913
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method private showYesTvMenu()V
    .locals 6

    const v0, 0x7f0b01c4

    .line 1070
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01c9

    .line 1071
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1073
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 1074
    iget-object v4, v3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 1075
    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v4, v3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1077
    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1080
    :cond_2
    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$T-AwHa7apLUKTc-YnjGRejwuioE;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$T-AwHa7apLUKTc-YnjGRejwuioE;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$Cowe_e91El1A2u9oRP0Gta4ej78;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$Cowe_e91El1A2u9oRP0Gta4ej78;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sortHotelMenu()V
    .locals 7

    .line 1639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 1643
    iget-object v5, v4, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    .line 1644
    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1645
    :cond_0
    iget-object v5, v4, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 1647
    :cond_1
    iget-object v5, v4, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 1650
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 1654
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    .line 1656
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    :cond_5
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    return-void
.end method

.method private startThreads()V
    .locals 2

    .line 1668
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackGround_Glide_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 1669
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public getVodTvShowsEpisodes(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "seasonNumber"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$SWDvHr0AmTwqunLRWW5ExnaF5tE;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$SWDvHr0AmTwqunLRWW5ExnaF5tE;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public getVodTvShowsSeasons(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvShowPosition"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b01cb

    .line 1243
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b01cc

    .line 1244
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1245
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1246
    new-instance v3, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3, v0, v4, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;-><init>(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/content/Context;)V

    .line 1247
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1249
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getVodTvShowsEpisodes(II)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0587

    .line 1251
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initDateChangeListeners()V
    .locals 3

    .line 1535
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 1536
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 1537
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 1538
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1540
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public isOnline(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1494
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1495
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1500
    :cond_0
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1502
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    return p1
.end method

.method public keepCpuWake()V
    .locals 4

    .line 1506
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1507
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->wakeLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "power"

    .line 1513
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 1514
    sget-object v3, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mWakeLook:Landroid/os/PowerManager$WakeLock;

    .line 1515
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1518
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1521
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1525
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "TiboTV WIFI"

    .line 1526
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    .line 1527
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 1528
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$getDashboardMenu$5$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_7

    .line 922
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timings:Landroid/util/TimingLogger;

    const-string v2, "work A"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 925
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 927
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 928
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 930
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 932
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_items_max_position:I

    .line 935
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showYesTvMenu()V

    goto :goto_1

    .line 937
    :cond_1
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 938
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupHotelMenu()V

    goto :goto_1

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showCarouselMenu()V

    .line 943
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f140464

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timings:Landroid/util/TimingLogger;

    invoke-virtual {p1}, Landroid/util/TimingLogger;->dumpToLog()V

    goto :goto_2

    .line 945
    :cond_3
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    sget v2, Lcom/magoware/magoware/webtv/util/Utils;->RESPONSE_CODE_NOT_MODIFIED:I

    if-ne v0, v2, :cond_6

    .line 946
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 947
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    .line 948
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_items_max_position:I

    .line 950
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 951
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showYesTvMenu()V

    goto :goto_2

    .line 952
    :cond_4
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 953
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupHotelMenu()V

    goto :goto_2

    .line 955
    :cond_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showCarouselMenu()V

    goto :goto_2

    .line 959
    :cond_6
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mRequestStartTimeMenu:J

    sub-long/2addr v0, v2

    .line 961
    invoke-static {v2, v3, v0, v1}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logMainMenuLoadingTime(JJ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public synthetic lambda$getHotelDashboardInfo$6$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;)V
    .locals 7

    if-eqz p1, :cond_0

    const v0, 0x7f0b0339

    .line 970
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setHotelWelcomeMessage(Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0337

    .line 971
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1401ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mUsername:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b033a

    .line 972
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const v6, 0x7f1401f0

    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmWifiPassword()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0324

    .line 973
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmContactInfo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, ": "

    aput-object v2, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0335

    .line 974
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmContactPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/HotelExoplayerFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/HotelExoplayerFragment;-><init>()V

    .line 977
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 978
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;->getmVideoUrl()Ljava/lang/String;

    move-result-object p1

    const-string v2, "videoUrl"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/HotelExoplayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 980
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0b0336

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public synthetic lambda$getSettings$12$DashboardActivity(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1120
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$getSettings$13$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 6

    if-eqz p1, :cond_9

    .line 1087
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1090
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 1091
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    .line 1093
    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 1094
    iget-boolean v3, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->auto_timezone:Z

    sput-boolean v3, Lcom/magoware/magoware/webtv/global/Global;->auto_timezone:Z

    .line 1095
    iget v3, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->timezone:I

    sput v3, Lcom/magoware/magoware/webtv/global/Global;->time_zone:I

    .line 1096
    iget-wide v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v3, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 1097
    iget-wide v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/global/Global;->setTokenTimestamp(J)V

    .line 1098
    iget p1, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    .line 1099
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DAYSLEFT:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 1100
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->player:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->showadult:Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 1103
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->background_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->portrait_background_url:Ljava/lang/String;

    const-string v5, "main_menu_portrait_background_url"

    invoke-virtual {v3, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    iget v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->activity_timeout:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 1106
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->CHANNEL_LOG_TIME:Ljava/lang/String;

    iget v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->channel_log_time:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 1107
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->available_upgrade:Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 1109
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->logo_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_BACKGROUND_URL:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vod_background_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOG_EVENT_INTERVAL:Ljava/lang/String;

    iget v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->log_event_interval:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 1112
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->get_ads:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 1113
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vast_ad_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->online_payment_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f14010f

    const/4 v3, 0x3

    if-gt p1, v3, :cond_1

    if-nez p1, :cond_0

    .line 1117
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    const v5, 0x7f14041d

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "%s"

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1118
    :cond_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f140418

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "%s %d %s"

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    :goto_0
    new-instance v3, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$o3Z5jndUu2ObMLxWvk15M6ekrNs;

    invoke-direct {v3, p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$o3Z5jndUu2ObMLxWvk15M6ekrNs;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1123
    :cond_1
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TUTVNOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez p1, :cond_2

    const/4 v2, 0x7

    if-ge p1, v2, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->subscription_expired_notification:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f140419

    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-gtz p1, :cond_3

    .line 1129
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->subscription_expired_notification:Landroid/widget/TextView;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->subscription_expired_notification:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 1135
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1136
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1137
    invoke-static {p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getUpgradeDetails(Landroid/content/Context;)V

    goto :goto_2

    .line 1140
    :cond_5
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x2bf

    if-ne p1, v0, :cond_6

    const-string p1, "0"

    .line 1141
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 1142
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 1143
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1144
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1148
    :cond_6
    :goto_2
    new-instance p1, Landroid/util/TimingLogger;

    const-string v0, "MainMenu"

    const-string v1, "methodA"

    invoke-direct {p1, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timings:Landroid/util/TimingLogger;

    .line 1150
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setMenuBackgroundImage(I)V

    .line 1151
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getDashboardMenu()V

    goto :goto_3

    .line 1152
    :cond_7
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x2c0

    if-ne v0, v2, :cond_8

    .line 1153
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    goto :goto_3

    .line 1155
    :cond_8
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_3
    return-void
.end method

.method public synthetic lambda$getTvChannels$14$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1164
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 1166
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 1167
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 1168
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 1170
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 1172
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_category_list:Ljava/util/ArrayList;

    .line 1173
    new-instance p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;-><init>()V

    const v0, 0x7f140068

    .line 1174
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1175
    iput v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    .line 1176
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    .line 1178
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_category_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0b01c7

    .line 1179
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b01c8

    .line 1180
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1183
    new-instance v2, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;

    invoke-direct {v2, v1}, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1184
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 1186
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1187
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_category_list:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1188
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f0b03aa

    .line 1190
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1193
    :cond_3
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$getVodMenu$15$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 1201
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1202
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1203
    :goto_0
    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1204
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1208
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0b01d0

    .line 1209
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b01cf

    .line 1210
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1211
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1212
    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;-><init>(Ljava/util/List;)V

    .line 1213
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    :cond_3
    const p1, 0x7f0b06e6

    .line 1215
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1218
    :cond_4
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$getVodTvShows$16$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1225
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b01cd

    .line 1226
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->tvShowList:Ljava/util/ArrayList;

    const p1, 0x7f0b01ce

    .line 1228
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1229
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1230
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->tvShowList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 1231
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b06a5

    .line 1233
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0587

    .line 1234
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b024d

    .line 1235
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getVodTvShowsEpisodes$17$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1257
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b01c6

    .line 1258
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01c5

    .line 1259
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1260
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1261
    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1262
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b024d

    .line 1264
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getWeatherData$7$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1001
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const v1, 0x7f0b06f8

    .line 1003
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b06f9

    .line 1004
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b06f7

    .line 1005
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b06f4

    .line 1006
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1008
    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    .line 1009
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->getWeather()Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    move-result-object v6

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->getMain()Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->getTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u00b0C"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weather_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->getWeather()Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    move-result-object v6

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v2, v3, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1015
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->getWeather()Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1014
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1017
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 1018
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1019
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 1022
    :cond_0
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 1023
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1024
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f0b06fa

    .line 1025
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1026
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1027
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/WeatherAdapter;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/WeatherAdapter;-><init>(Ljava/util/List;)V

    .line 1028
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0b031f

    .line 1032
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$isAuthorized$18$DashboardActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->isAuthorized()V

    return-void
.end method

.method public synthetic lambda$isAuthorized$19$DashboardActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1329
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1331
    const-class p2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1332
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$isAuthorized$20$DashboardActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 1283
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1284
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/4 v2, 0x1

    const/16 v3, 0x12c

    const-string v4, ""

    if-ge v0, v3, :cond_2

    .line 1285
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->forced_logout:Z

    if-eqz v0, :cond_0

    const-string v0, "forced"

    .line 1286
    invoke-static {v0}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logLogout(Ljava/lang/String;)V

    .line 1287
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mUsername:Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f140464

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mUsername:Ljava/lang/String;

    aput-object v5, v3, v2

    const-string v2, "%s%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1292
    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1295
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    .line 1296
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1302
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    .line 1303
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 1305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1309
    :cond_2
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-le v0, v3, :cond_7

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1310
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1311
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1312
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1313
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1314
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DATAVERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1317
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1319
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1320
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1323
    :cond_5
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14037d

    .line 1324
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f14049c

    .line 1325
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$EI0F0m-SEmzlpPx2LCHnxq_NQY0;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$EI0F0m-SEmzlpPx2LCHnxq_NQY0;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1402e2

    .line 1327
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$dwW2c9wbqTqHP3ureVSCncFvuE8;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$dwW2c9wbqTqHP3ureVSCncFvuE8;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1334
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_6
    const p1, 0x7f140344

    .line 1337
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic lambda$setupListeners$1$DashboardActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 582
    iput p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lastClickedItem:I

    .line 583
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->application:Lcom/magoware/magoware/webtv/MagowareApplication;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/MagowareApplication;->setPreviousOrientation(I)V

    .line 586
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentLiveTv()V

    goto/16 :goto_0

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x16

    const/high16 p5, 0x10000000

    if-ne p1, p4, :cond_1

    .line 593
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 594
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->INFO_CHANNEL:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x15

    if-ne p1, p4, :cond_2

    .line 600
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 601
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p1, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->CATCHUP_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 604
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 608
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x14

    if-ne p1, p4, :cond_3

    .line 609
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentAccount()V

    goto/16 :goto_0

    .line 612
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x2

    if-ne p1, p4, :cond_5

    .line 614
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 615
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->isAuthorized()V

    goto/16 :goto_0

    .line 617
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 620
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 625
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x3

    if-ne p1, p4, :cond_6

    .line 626
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showLogOutDialog()V

    goto/16 :goto_0

    .line 629
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_7

    .line 631
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentApps()V

    goto/16 :goto_0

    .line 663
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xa

    if-ne p1, p4, :cond_8

    .line 664
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentNetworkTest()V

    goto/16 :goto_0

    .line 667
    :cond_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xb

    if-ne p1, p4, :cond_9

    .line 668
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentVod()V

    goto/16 :goto_0

    .line 669
    :cond_9
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x19

    if-ne p1, p4, :cond_a

    .line 670
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentTvShows()V

    goto/16 :goto_0

    .line 671
    :cond_a
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xc

    if-ne p1, p4, :cond_b

    .line 673
    new-instance p1, Landroid/content/Intent;

    const/4 p2, 0x0

    const-string p4, "android.intent.action.MAIN"

    invoke-direct {p1, p4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.LAUNCHER"

    .line 674
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 679
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 682
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 686
    :cond_b
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    .line 688
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?username="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 689
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 690
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 693
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 695
    :cond_c
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x8

    if-ne p1, p4, :cond_f

    .line 697
    :cond_e
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 698
    const-class p2, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "WEB_URL"

    .line 699
    iget-object p4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 705
    :cond_f
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xe

    if-ne p1, p4, :cond_10

    .line 706
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 707
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MENU_VIDEO:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 708
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 709
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setMovieUrl(Ljava/lang/String;)V

    .line 710
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 711
    new-instance p4, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    invoke-direct {p4}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;-><init>()V

    .line 712
    iget-object p5, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->setUrl(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodSubtitles(Ljava/util/List;)V

    .line 714
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodStream(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;)V

    .line 715
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 716
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 717
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "movieJson"

    .line 718
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 720
    :cond_10
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x6

    if-ne p1, p4, :cond_12

    sget-object p1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 721
    :cond_11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 722
    const-class p3, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    sget-object p3, Lcom/magoware/magoware/webtv/util/Utils;->IS_MENU_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 726
    :cond_12
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p4, :cond_13

    .line 727
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 728
    sget-object p3, Lcom/magoware/magoware/webtv/util/Utils;->IS_MENU_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    iget p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->MENU_LANGUAGE_REQUEST:I

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_13
    :goto_0
    return-void
.end method

.method public synthetic lambda$setupWebViewWidget$21$DashboardActivity()V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public synthetic lambda$setupWebViewWidgetWelcomeMsg$22$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;)V
    .locals 9

    if-eqz p1, :cond_0

    const v0, 0x7f0b06fd

    .line 1403
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 1404
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1406
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1407
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1408
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;->getWelcomeMessages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const-string v8, ""

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->webViewContent:Landroid/webkit/WebView;

    new-instance v0, Lcom/magoware/magoware/webtv/webview/MagoWebViewClient;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/webview/MagoWebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showAfricaGetMovie$3$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 2

    .line 841
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 842
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "vod_card"

    .line 844
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 845
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showAfricaGetMovie$4$DashboardActivity(Landroid/widget/ImageView;Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 2

    .line 833
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 836
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 837
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getBackdropPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 838
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 840
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$j-oQST5-jb4HqO3OaWBE6mc9HHU;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$j-oQST5-jb4HqO3OaWBE6mc9HHU;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showCarouselMenu$8$DashboardActivity(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupCoverFlow(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public synthetic lambda$showCarouselMenu$9$DashboardActivity(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V
    .locals 5

    .line 1058
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 1059
    iget-object v3, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1060
    invoke-direct {p0, v2, v1, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->drawMenuElementnew(Lcom/magoware/magoware/webtv/database/objects/MenuObject;ILcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V

    add-int/2addr v1, v4

    goto :goto_0

    .line 1063
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->firstTimeActivityRunning:Z

    if-eqz v0, :cond_1

    .line 1064
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$23$DashboardActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1420
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    .line 1421
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 1422
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1423
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$24$DashboardActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1427
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showYesTvMenu$10$DashboardActivity(Landroid/view/View;)V
    .locals 0

    .line 1080
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentAccount()V

    return-void
.end method

.method public synthetic lambda$showYesTvMenu$11$DashboardActivity(Landroid/view/View;)V
    .locals 0

    .line 1081
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showLogOutDialog()V

    return-void
.end method

.method public loadBitmapFromView(Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    .line 1545
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->measure(II)V

    .line 1547
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->layout(IIII)V

    .line 1548
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1550
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1551
    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public menuRecyclerListener(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 762
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lastClickedItem:I

    .line 764
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentLiveTv()V

    goto/16 :goto_0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentApps()V

    goto/16 :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    .line 772
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentAccount()V

    goto/16 :goto_0

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 774
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->showLogOutDialog()V

    goto/16 :goto_0

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 776
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentApps()V

    goto/16 :goto_0

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 780
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentNetworkTest()V

    goto/16 :goto_0

    .line 783
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 784
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentVod()V

    goto/16 :goto_0

    .line 785
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc

    const/high16 v2, 0x10000000

    if-ne v0, v1, :cond_7

    .line 787
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 788
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 793
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 796
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 800
    :cond_7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 802
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?username="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 804
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 807
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 809
    :cond_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 811
    :cond_a
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 812
    const-class v1, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "WEB_URL"

    .line 813
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 815
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 817
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 819
    :cond_b
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_c

    .line 820
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentAccount()V

    goto :goto_0

    .line 821
    :cond_c
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_d

    .line 822
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->intentAssets()V

    :cond_d
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 357
    iget p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->MENU_LANGUAGE_REQUEST:I

    if-ne p1, p2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->finish()V

    .line 359
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 425
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 426
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->application:Lcom/magoware/magoware/webtv/MagowareApplication;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->setPreviousOrientation(I)V

    .line 427
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 428
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setMenuBackgroundImage(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 198
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->firstTimeActivityRunning:Z

    .line 201
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 205
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 207
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setRequestedOrientation(I)V

    .line 212
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00da

    .line 213
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setContentView(I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e013d

    .line 215
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setContentView(I)V

    goto :goto_0

    .line 216
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0035

    .line 217
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setContentView(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0e013e

    .line 219
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setContentView(I)V

    .line 222
    :goto_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const v0, 0x7f0b03bc

    .line 224
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->logo_view:Landroid/widget/ImageView;

    .line 225
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x8

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0b0125

    .line 226
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->cover_flow:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    const p1, 0x7f0b00c4

    .line 227
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    const p1, 0x7f0b06b7

    .line 228
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    const p1, 0x7f0b06bd

    .line 229
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->version_txt:Landroid/widget/TextView;

    const p1, 0x7f0b0604

    .line 230
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->subscription_expired_notification:Landroid/widget/TextView;

    .line 232
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->initializeGlobalVariables()V

    .line 233
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->initUtil()V

    .line 234
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/MagowareApplication;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->application:Lcom/magoware/magoware/webtv/MagowareApplication;

    .line 235
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    .line 237
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getPallyconToken()V

    .line 238
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setMenuBackgroundImage(I)V

    .line 239
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->disableWIFISleep()V

    .line 240
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->initMainView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 346
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    .line 348
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mWakeLook:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->wakeLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0329

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 369
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 370
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->moveTaskToBack(Z)Z

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x8c

    const/high16 v2, 0x10000000

    if-ne p1, v1, :cond_5

    .line 379
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 380
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_5
    const/16 v1, 0x89

    if-ne p1, v1, :cond_6

    .line 396
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 397
    const-class p2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 399
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->CATCHUP_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_6
    const/16 v1, 0x88

    if-ne p1, v1, :cond_7

    .line 404
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 405
    const-class p2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_7
    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    .line 410
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 411
    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mSettingsCounter:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mSettingsCounter:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 413
    iput v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mSettingsCounter:I

    .line 414
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 418
    :cond_8
    iput v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->mSettingsCounter:I

    .line 420
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->firstTimeActivityRunning:Z

    .line 320
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    .line 321
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "main_menu"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    .line 323
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 255
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    .line 256
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "main_menu"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->subscribeTo(Ljava/lang/String;)V

    .line 258
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fcmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_FCM_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 260
    :cond_1
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 261
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 264
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupWebViewWidgetWelcomeMsg()V

    .line 270
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setCarouselFocusedItem()V

    .line 271
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getSettings()V

    .line 273
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_3
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_local:Z

    if-eqz v0, :cond_6

    .line 278
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 280
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->user_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_6
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_local:Z

    if-nez v0, :cond_7

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    const-class v1, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 293
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    .line 294
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 296
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 299
    :cond_8
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 300
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 301
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v0, :cond_a

    .line 303
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 307
    :cond_9
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->subscription_expired_notification:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 311
    :cond_a
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->initTimezone()V

    .line 313
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_local:Z

    .line 314
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_remote:Z

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 245
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStart()V

    .line 246
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_FCM_TOKEN_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 249
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->startThreads()V

    .line 250
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->initDateChangeListeners()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    .line 334
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->quitThreads()V

    .line 338
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->alertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

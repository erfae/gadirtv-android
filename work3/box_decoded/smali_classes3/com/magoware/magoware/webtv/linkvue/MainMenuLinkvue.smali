.class public Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "MainMenuLinkvue.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;
.implements Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;
.implements Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;


# static fields
.field public static final TAG:Ljava/lang/String; = "MainMenuLinkvue"

.field private static menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;"
        }
    .end annotation
.end field

.field public static width:I


# instance fields
.field adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

.field private checkNetworkStatus:Ljava/util/Timer;

.field private defaultBackgroundResource:I

.field private focusedView:Landroid/view/View;

.field private isInteractive:Z

.field private isOnline:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private load_data:Ljava/lang/Boolean;

.field private loadingMsg:Ljava/lang/String;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private main_layout:Landroid/widget/RelativeLayout;

.field private menu_background_image:Landroid/widget/ImageView;

.field private menu_description:Landroid/widget/TextView;

.field private paused:Ljava/lang/Boolean;

.field private progress_dialog_get_menu:Landroid/app/ProgressDialog;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->load_data:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->paused:Ljava/lang/Boolean;

    .line 78
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isInteractive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isOnline:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)Ljava/lang/Boolean;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->load_data:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->load_data:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)Ljava/lang/Boolean;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->paused:Ljava/lang/Boolean;

    return-object p0
.end method

.method private getSettings()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$u5tJv5ivwMVUqitxdkuDBD7HCdg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$u5tJv5ivwMVUqitxdkuDBD7HCdg;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private isAppInteractive()Z
    .locals 4

    const-string v0, "power"

    .line 455
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 457
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic lambda$getMenuLayer2$4(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 381
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private setLocalMenuBackgroundImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f0803c5

    goto :goto_0

    :cond_0
    const p1, 0x7f0803c6

    .line 444
    :goto_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 445
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 446
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 448
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 450
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_background_image:Landroid/widget/ImageView;

    .line 451
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setMenuBackgroundImage(Landroid/content/res/Configuration;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0803c5

    goto :goto_0

    :cond_0
    const v0, 0x7f0803c6

    :goto_0
    iput v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->defaultBackgroundResource:I

    .line 418
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    const-string v4, "main_menu_portrait_background_url"

    invoke-virtual {v2, v4, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 422
    :goto_1
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->updateBackgroundImage(Ljava/lang/String;)V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingMsg"
        }
    .end annotation

    .line 464
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    .line 465
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 467
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 468
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private updateBackgroundImage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundUrl"
        }
    .end annotation

    const-string v0, "-"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->defaultBackgroundResource:I

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->setLocalMenuBackgroundImage(I)V

    return-void

    .line 431
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 432
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->defaultBackgroundResource:I

    .line 433
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 435
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 436
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_background_image:Landroid/widget/ImageView;

    .line 438
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method


# virtual methods
.method public getMenuLayer1()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const v0, 0x7f14013d

    .line 279
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadingMsg:Ljava/lang/String;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadingMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->showProgressDialog(Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/apiv2/main/device_menu_levelone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$vP6MX1P9hmLRHKmC-ftNCg1ujSA;

    invoke-direct {v5, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$vP6MX1P9hmLRHKmC-ftNCg1ujSA;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 318
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$gG_i431sjwd8WeXliv2amM3nxnw;

    invoke-direct {v6, v1}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$gG_i431sjwd8WeXliv2amM3nxnw;-><init>(Ljava/io/PrintStream;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 342
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getMenuLayer2()V
    .locals 7

    .line 347
    new-instance v6, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/main/device_menu_leveltwo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$U5t7oF_enX_8apBmESrC6tyTdv0;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$U5t7oF_enX_8apBmESrC6tyTdv0;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    sget-object v5, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$MyEJag15biet3dovVGuH2_PSFQk;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$MyEJag15biet3dovVGuH2_PSFQk;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$4;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x1

    .line 405
    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 406
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public synthetic lambda$getMenuLayer1$2$MainMenuLinkvue(Ljava/lang/String;)V
    .locals 3

    .line 288
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 289
    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$3;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$3;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    .line 290
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 292
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 297
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 298
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 299
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 301
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 302
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 306
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 307
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 308
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_list:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 311
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 314
    :cond_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getMenuLayer2()V

    return-void
.end method

.method public synthetic lambda$getMenuLayer2$3$MainMenuLinkvue(Ljava/lang/String;)V
    .locals 3

    .line 350
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 351
    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$5;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$5;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    .line 352
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 354
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 357
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 359
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 361
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 362
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 366
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 367
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 368
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 369
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 371
    :cond_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 372
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadData()V

    .line 377
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 378
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$getSettings$1$MainMenuLinkvue(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 220
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    .line 225
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 226
    iget-boolean v1, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->auto_timezone:Z

    sput-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->auto_timezone:Z

    .line 227
    iget v1, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->timezone:I

    sput v1, Lcom/magoware/magoware/webtv/global/Global;->time_zone:I

    .line 228
    iget-wide v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v1, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 229
    iget p1, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DAYSLEFT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 231
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->player:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->pin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->showadult:Z

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 234
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->background_url:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    iget-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->portrait_background_url:Ljava/lang/String;

    const-string v2, "main_menu_portrait_background_url"

    invoke-virtual {p1, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->activity_timeout:I

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 237
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->CHANNEL_LOG_TIME:Ljava/lang/String;

    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->channel_log_time:I

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 238
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->available_upgrade:Z

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 240
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->logo_url:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_BACKGROUND_URL:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vod_background_url:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOG_EVENT_INTERVAL:Ljava/lang/String;

    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->log_event_interval:I

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 243
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->get_ads:I

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 244
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vast_ad_url:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->online_payment_url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-static {p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getUpgradeDetails(Landroid/content/Context;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->setMenuBackgroundImage(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 253
    :cond_1
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x2bf

    if-ne v0, v1, :cond_2

    const-string p1, "0"

    .line 254
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 255
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 256
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 257
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    :cond_2
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x2c0

    if-ne p1, v0, :cond_3

    .line 260
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    .line 263
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getMenuLayer1()V

    goto :goto_1

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    :cond_5
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreate$0$MainMenuLinkvue(Ljava/lang/Boolean;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->checkNetworkStatus:Ljava/util/Timer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->checkNetworkStatus:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 115
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getSettings()V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 3

    .line 410
    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_list:Ljava/util/ArrayList;

    sget v2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->width:I

    invoke-direct {v0, p0, v1, v2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    .line 411
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->setClickListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->setSelectListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;)V

    .line 413
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

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

    .line 85
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const p1, 0x7f0e0034

    .line 87
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->setContentView(I)V

    .line 88
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_list:Ljava/util/ArrayList;

    const p1, 0x7f0b03f7

    .line 90
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_description:Landroid/widget/TextView;

    const p1, 0x7f0b03cb

    .line 91
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->main_layout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b03f4

    .line 92
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_background_image:Landroid/widget/ImageView;

    .line 93
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isOnline:Landroidx/lifecycle/MutableLiveData;

    .line 95
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->width:I

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    const p1, 0x7f0b0372

    .line 104
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_description:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isOnline:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$Ht47w_1LGzOyqs-Zx08JEmEvotY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$Ht47w_1LGzOyqs-Zx08JEmEvotY;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "menucode"
        }
    .end annotation

    return-void
.end method

.method public onItemSelect(Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "pos_adapter"
        }
    .end annotation

    .line 179
    new-instance p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;-><init>()V

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent_id"

    .line 181
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->setArguments(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0b0373

    .line 186
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 188
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 189
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_description:Landroid/widget/TextView;

    sget-object p2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onItemSelectedLayer2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->menu_description:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    .line 201
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 204
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    return v0

    :cond_2
    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->focusedView:Landroid/view/View;

    if-ne v0, v1, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 214
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isAppInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isInteractive:Z

    .line 157
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->progress_dialog_get_menu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 122
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    .line 124
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isInteractive:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isAppInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->checkNetworkStatus:Ljava/util/Timer;

    .line 135
    new-instance v2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const v0, 0x7f140486

    .line 141
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadingMsg:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isAppInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f14013d

    .line 143
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadingMsg:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getSettings()V

    .line 147
    :cond_2
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->loadingMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->showProgressDialog(Ljava/lang/String;)V

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isAppInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->isInteractive:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    .line 166
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->checkNetworkStatus:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

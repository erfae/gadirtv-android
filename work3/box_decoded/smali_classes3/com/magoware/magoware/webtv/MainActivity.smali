.class public Lcom/magoware/magoware/webtv/MainActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;
.implements Lcom/magoware/magoware/webtv/login/AutoLoginListener;


# static fields
.field public static CONTENT:[Ljava/lang/String;


# instance fields
.field private final DEVICE_ADMIN_REQUEST_CODE:I

.field private final TAG:Ljava/lang/String;

.field isNetworkTestFragmentShown:Z

.field private final mLayoutKeyboardVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSettingsCounter:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private progress_dialog_login:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/16 v0, 0x2f

    .line 72
    iput v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->DEVICE_ADMIN_REQUEST_CODE:I

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$LD6KjFobTjlwnq6sIBgQwFjFP7A;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$LD6KjFobTjlwnq6sIBgQwFjFP7A;-><init>(Lcom/magoware/magoware/webtv/MainActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->mLayoutKeyboardVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->isNetworkTestFragmentShown:Z

    .line 87
    iput v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->mSettingsCounter:I

    return-void
.end method

.method private askDeviceAdminPermission()V
    .locals 3

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/magoware/magoware/webtv/DeviceAdmin;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    .line 175
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "Explanation"

    .line 176
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2f

    .line 177
    invoke-virtual {p0, v1, v0}, Lcom/magoware/magoware/webtv/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private attemptAutoLogin()V
    .locals 2

    .line 380
    new-instance v0, Lcom/magoware/magoware/webtv/login/AutoLogin;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-direct {v0, p0, v1, p0}, Lcom/magoware/magoware/webtv/login/AutoLogin;-><init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;Lcom/magoware/magoware/webtv/login/AutoLoginListener;)V

    .line 381
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/AutoLogin;->tryAutoLogin()V

    return-void
.end method

.method private disableWIFISleep()V
    .locals 3

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    .line 328
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private inflateContentLayout()V
    .locals 1

    const v0, 0x7f0e0032

    .line 411
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/MainActivity;->setContentView(I)V

    return-void
.end method

.method static synthetic lambda$sendFirebaseToken$2(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private openLoginFragment()V
    .locals 2

    .line 370
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    move-result-object v0

    const-string v1, "LoginFirstStep"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFragment;

    move-result-object v0

    const-string v1, "LoginFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendFirebaseToken()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Long;

    .line 358
    invoke-static {v0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;-><init>(Lcom/magoware/magoware/webtv/MainActivity;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;->INSTANCE:Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private setupMainTabs()V
    .locals 2

    .line 338
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/MainActivity;->CONTENT:[Ljava/lang/String;

    goto :goto_1

    .line 339
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/MainActivity;->CONTENT:[Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "tag"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->inflateContentLayout()V

    .line 297
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b03c6

    .line 299
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 300
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public synthetic lambda$new$0$MainActivity()V
    .locals 3

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    return-void
.end method

.method public synthetic lambda$sendFirebaseToken$1$MainActivity(Ljava/util/HashMap;Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 1

    .line 361
    invoke-interface {p2}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p2

    const-string v0, "google_app_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 363
    iget-object p2, p0, Lcom/magoware/magoware/webtv/MainActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setFirebaseIdObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
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

    .line 182
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 183
    invoke-virtual {v1, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_1

    return-void

    .line 189
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAllAppsSelected()V
    .locals 2

    .line 322
    new-instance v0, Lcom/magoware/magoware/webtv/deviceApps/AppsFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/deviceApps/AppsFragment;-><init>()V

    const-string v1, "AppsFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/MainActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 103
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->initializeGlobalVariables()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/MainActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 112
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/MainActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->setRequestedOrientation(I)V

    .line 118
    :cond_1
    :goto_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->initUtil()V

    .line 120
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->attemptAutoLogin()V

    .line 123
    :try_start_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "TiboTV WIFI"

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 132
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :goto_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->disableWIFISleep()V

    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 142
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 143
    sput v2, Lcom/magoware/magoware/webtv/global/Global;->screenWidth:I

    .line 144
    sput v0, Lcom/magoware/magoware/webtv/global/Global;->screenHeight:I

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    const-string v0, "http.agent"

    .line 146
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "("

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p1

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    .line 149
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isHDMIPluggedIn()Z

    move-result p1

    sput-boolean p1, Lcom/magoware/magoware/webtv/global/Global;->hdmi:Z

    .line 152
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 155
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 156
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->setupMainTabs()V

    .line 161
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->BOXID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->sendFirebaseToken()V

    .line 164
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->askDeviceAdminPermission()V

    .line 167
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAppValid()Z

    move-result p1

    if-nez p1, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 234
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onFailedLogin(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 393
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 394
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_open_homepage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "open_login_fragment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 397
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isTvHomePageView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 401
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/MainActivity;->openLoginFragment()V

    :goto_0
    return-void
.end method

.method public onHelpSelected()V
    .locals 2

    .line 317
    new-instance v0, Lcom/magoware/magoware/webtv/login/HelpFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/login/HelpFragment;-><init>()V

    const-string v1, "HelpFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
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

    .line 244
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 247
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->isNetworkTestFragmentShown:Z

    .line 249
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isTvHomePageView()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return v4

    .line 254
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 256
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v0, Lcom/magoware/magoware/webtv/login/LoginFragment;

    if-eqz v3, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 258
    instance-of v0, v0, Lcom/magoware/magoware/webtv/login/LoginFragment;

    if-nez v0, :cond_6

    .line 259
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->onLoginSelected()V

    return v4

    :cond_6
    if-ne p1, v2, :cond_7

    .line 261
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    if-ne p1, v2, :cond_8

    .line 264
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finishAffinity()V

    return v4

    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    .line 266
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    iget v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->mSettingsCounter:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->mSettingsCounter:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 269
    iput v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->mSettingsCounter:I

    .line 270
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 273
    :cond_9
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->isNetworkTestFragmentShown:Z

    if-eqz v0, :cond_b

    .line 274
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 275
    instance-of v2, v1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    if-eqz v2, :cond_a

    .line 276
    check-cast v1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->requestTestButtonFocus()V

    return v4

    .line 281
    :cond_b
    iput v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->mSettingsCounter:I

    .line 283
    :cond_c
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoginSelected()V
    .locals 2

    .line 288
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    move-result-object v0

    const-string v1, "LoginFirstStep"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFragment;

    move-result-object v0

    const-string v1, "LoginFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNetworkTestSelected()V
    .locals 2

    .line 306
    new-instance v0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;-><init>()V

    const-string v1, "NetworkTestFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->isNetworkTestFragmentShown:Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 212
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->mLayoutKeyboardVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 195
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/MainActivity;->mLayoutKeyboardVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 201
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 203
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_1
    return-void
.end method

.method public onSignUpSelected()V
    .locals 2

    .line 312
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/SignUpFragment;

    move-result-object v0

    const-string v1, "SignUpFragment"

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/MainActivity;->changeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/magoware/magoware/webtv/MainActivity;->progress_dialog_login:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onSuccessfulLogin()V
    .locals 1

    .line 386
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/Login;->getIntentForSuccessfulLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    return-void
.end method

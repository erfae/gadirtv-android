.class public Lcom/magoware/magoware/webtv/CustomActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CustomActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomActivity"


# instance fields
.field private apkName:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private permissionsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/magoware/magoware/webtv/CustomActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity;->location:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/magoware/magoware/webtv/CustomActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity;->apkName:Ljava/lang/String;

    return-object p1
.end method

.method private hideNavigationBar()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/CustomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x1706

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 72
    new-instance v2, Lcom/magoware/magoware/webtv/CustomActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/magoware/magoware/webtv/CustomActivity$2;-><init>(Lcom/magoware/magoware/webtv/CustomActivity;Landroid/view/View;I)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
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

    .line 31
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

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

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/magoware/magoware/webtv/CustomActivity$1;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/CustomActivity$1;-><init>(Lcom/magoware/magoware/webtv/CustomActivity;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity;->permissionsReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.magoware.action.ASK_STORAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/CustomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/magoware/magoware/webtv/CustomActivity;->permissionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/CustomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_0

    .line 100
    array-length p1, p3

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity;->location:Ljava/lang/String;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/CustomActivity;->apkName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;->hideNavigationBar()V

    .line 56
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestStoragePermissions()V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/CustomActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

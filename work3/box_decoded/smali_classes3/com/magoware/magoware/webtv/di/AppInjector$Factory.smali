.class public final Lcom/magoware/magoware/webtv/di/AppInjector$Factory;
.super Ljava/lang/Object;
.source "AppInjector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/AppInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/di/AppInjector$Factory;",
        "",
        "()V",
        "handleActivity",
        "",
        "activity",
        "Landroid/app/Activity;",
        "initApp",
        "application",
        "Lcom/magoware/magoware/webtv/MagowareApplication;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleActivity(Lcom/magoware/magoware/webtv/di/AppInjector$Factory;Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory;->handleActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private final handleActivity(Landroid/app/Activity;)V
    .locals 2

    .line 59
    instance-of v0, p1, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 62
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppInjector$Factory$handleActivity$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory$handleActivity$1;-><init>()V

    check-cast v0, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final initApp(Lcom/magoware/magoware/webtv/MagowareApplication;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->builder()Lcom/magoware/magoware/webtv/di/AppComponent$Builder;

    move-result-object v0

    .line 22
    move-object v1, p1

    check-cast v1, Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/magoware/magoware/webtv/di/AppComponent$Builder;->application(Landroid/app/Application;)Lcom/magoware/magoware/webtv/di/AppComponent$Builder;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/magoware/magoware/webtv/di/AppComponent$Builder;->build()Lcom/magoware/magoware/webtv/di/AppComponent;

    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/di/AppComponent;->inject(Lcom/magoware/magoware/webtv/MagowareApplication;)V

    .line 27
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppInjector$Factory$initApp$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory$initApp$1;-><init>()V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

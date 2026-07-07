.class public final Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomePageActivity.kt"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0006\u0010\u001f\u001a\u00020\u001cJ\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0006\u0010!\u001a\u00020\u001cJ\u0012\u0010\"\u001a\u00020\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0014J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$H\u0014J\u0008\u0010&\u001a\u00020\u001cH\u0014J\u0008\u0010\'\u001a\u00020\u0015H\u0016J\u0006\u0010(\u001a\u00020\u001cJ\u0008\u0010)\u001a\u00020\u001cH\u0002J\u000e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0006\u0010+\u001a\u00020\u001cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Ldagger/android/support/HasSupportFragmentInjector;",
        "()V",
        "bottomNavigationView",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "getBottomNavigationView",
        "()Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "setBottomNavigationView",
        "(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V",
        "currentNavController",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/navigation/NavController;",
        "dispatchingAndroidInjector",
        "Ldagger/android/DispatchingAndroidInjector;",
        "Landroidx/fragment/app/Fragment;",
        "getDispatchingAndroidInjector",
        "()Ldagger/android/DispatchingAndroidInjector;",
        "setDispatchingAndroidInjector",
        "(Ldagger/android/DispatchingAndroidInjector;)V",
        "isGuestUser",
        "",
        "shouldRefresh",
        "getShouldRefresh",
        "()Z",
        "setShouldRefresh",
        "(Z)V",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "changeLanguage",
        "initHandler",
        "intentMore",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRestoreInstanceState",
        "onResume",
        "onSupportNavigateUp",
        "setRefresh",
        "setupBottomNavigationBar",
        "supportFragmentInjector",
        "updateLocale",
        "Companion",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$Companion;

.field public static final REFRESH_TIME:J = 0xdbba0L


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private currentNavController:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/navigation/NavController;",
            ">;"
        }
    .end annotation
.end field

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

.field private isGuestUser:Z

.field private shouldRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->isGuestUser:Z

    return-void
.end method

.method private final initHandler()V
    .locals 7

    .line 118
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;)V

    .line 123
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xdbba0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private final setupBottomNavigationBar()V
    .locals 7

    const v0, 0x7f0b0483

    .line 95
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nav_home_page_bottom)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f110001

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f110004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f110005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/high16 v1, 0x7f110000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v2, "bottomNavigationView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "supportFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0b0484

    .line 104
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "intent"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {v1, v0, v3, v4, v5}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->currentNavController:Landroidx/lifecycle/LiveData;

    .line 113
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b0488

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final changeLanguage()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->finish()V

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final getBottomNavigationView()Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_0

    const-string v1, "bottomNavigationView"

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

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    if-nez v0, :cond_0

    const-string v1, "dispatchingAndroidInjector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getShouldRefresh()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->shouldRefresh:Z

    return v0
.end method

.method public final intentMore()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_0

    const-string v1, "bottomNavigationView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f0b0473

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->updateLocale()V

    const v0, 0x7f0e0031

    .line 38
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->setupBottomNavigationBar()V

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->initHandler()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->setupBottomNavigationBar()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 76
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v2, "supportFragmentManager.fragments"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "supportFragmentManager.fragments.first()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v4, "supportFragmentManager.f\u2026st().childFragmentManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 79
    instance-of v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->shouldRefresh:Z

    if-eqz v1, :cond_2

    .line 80
    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->getCarousel()V

    .line 84
    :cond_2
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    if-eqz v0, :cond_3

    .line 85
    sput-boolean v5, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->currentNavController:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setBottomNavigationView(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

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

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public final setRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->shouldRefresh:Z

    return-void
.end method

.method public final setShouldRefresh(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->shouldRefresh:Z

    return-void
.end method

.method public bridge synthetic supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

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

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    if-nez v0, :cond_0

    const-string v1, "dispatchingAndroidInjector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final updateLocale()V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "res"

    .line 50
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 52
    iput-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.class final Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;
.super Ljava/lang/Object;
.source "NavigationExtensions.kt"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onBackStackChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $firstFragmentGraphId:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $firstFragmentTag:Ljava/lang/String;

.field final synthetic $fragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic $isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $selectedNavController:Landroidx/lifecycle/MutableLiveData;

.field final synthetic $this_setupWithNavController:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$this_setupWithNavController:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$firstFragmentTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$firstFragmentGraphId:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$selectedNavController:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$firstFragmentTag:Ljava/lang/String;

    const-string v2, "firstFragmentTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->access$isOnBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$this_setupWithNavController:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$firstFragmentGraphId:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;->$selectedNavController:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    if-eqz v0, :cond_1

    const-string v1, "controller"

    .line 150
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    const-string v2, "controller.graph"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_1
    return-void
.end method

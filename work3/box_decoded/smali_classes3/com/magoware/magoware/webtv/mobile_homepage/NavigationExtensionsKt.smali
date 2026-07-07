.class public final Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;
.super Ljava/lang/Object;
.source "NavigationExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationExtensions.kt\ncom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,252:1\n1828#2,2:253\n1830#2:256\n1828#2,3:257\n30#3:255\n1#4:260\n*E\n*S KotlinDebug\n*F\n+ 1 NavigationExtensions.kt\ncom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt\n*L\n51#1,2:253\n51#1:256\n164#1,3:257\n70#1:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0018\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a(\u0010\r\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0002\u001a\u0014\u0010\u0011\u001a\u00020\u0007*\u00020\u00032\u0006\u0010\u0012\u001a\u00020\nH\u0002\u001a2\u0010\u0013\u001a\u00020\u0001*\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00162\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002\u001a\"\u0010\u0019\u001a\u00020\u0001*\u00020\u00142\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a6\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00162\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "attachNavHostFragment",
        "",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "navHostFragment",
        "Landroidx/navigation/fragment/NavHostFragment;",
        "isPrimaryNavFragment",
        "",
        "detachNavHostFragment",
        "getFragmentTag",
        "",
        "index",
        "",
        "obtainNavHostFragment",
        "fragmentTag",
        "navGraphId",
        "containerId",
        "isOnBackStack",
        "backStackName",
        "setupDeepLinks",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "navGraphIds",
        "",
        "intent",
        "Landroid/content/Intent;",
        "setupItemReselected",
        "graphIdToTagMap",
        "Landroid/util/SparseArray;",
        "setupWithNavController",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/navigation/NavController;",
        "app_dmcenterRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic access$isOnBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->isOnBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final attachNavHostFragment(Landroidx/fragment/app/FragmentManager;Landroidx/navigation/fragment/NavHostFragment;Z)V
    .locals 0

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 213
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method private static final detachNavHostFragment(Landroidx/fragment/app/FragmentManager;Landroidx/navigation/fragment/NavHostFragment;)V
    .locals 0

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 203
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method private static final getFragmentTag(I)Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomNavigation#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final isOnBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z
    .locals 5

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 244
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v3

    const-string v4, "getBackStackEntryAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final obtainNavHostFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 234
    :cond_0
    invoke-static {p2}, Landroidx/navigation/fragment/NavHostFragment;->create(I)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p2

    const-string v0, "NavHostFragment.create(navGraphId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 236
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p3, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-object p2
.end method

.method private static final setupDeepLinks(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 164
    check-cast p1, Ljava/lang/Iterable;

    .line 258
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 165
    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->getFragmentTag(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {p2, v0, v1, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->obtainNavHostFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v3

    const-string v4, "navHostFragment.navController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v3

    const-string v5, "navHostFragment.navController.graph"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getId()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 177
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final setupItemReselected(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/util/SparseArray;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupItemReselected$1;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupItemReselected$1;-><init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentManager;)V

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V

    return-void
.end method

.method public static final setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)Landroidx/lifecycle/LiveData;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/navigation/NavController;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const-string v2, "$this$setupWithNavController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "navGraphIds"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fragmentManager"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intent"

    move-object/from16 v10, p4

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 46
    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 48
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 51
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 52
    invoke-static {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->getFragmentTag(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v14, p3

    .line 55
    invoke-static {v9, v7, v5, v14}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->obtainNavHostFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v8

    const-string v15, "navHostFragment.navController"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v8

    const-string v15, "navHostFragment.navController.graph"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getId()I

    move-result v8

    if-nez v4, :cond_1

    .line 66
    iput v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 255
    :cond_1
    invoke-virtual {v11, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 75
    invoke-virtual {v5}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 76
    :goto_1
    invoke-static {v9, v5, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->attachNavHostFragment(Landroidx/fragment/app/FragmentManager;Landroidx/navigation/fragment/NavHostFragment;Z)V

    goto :goto_2

    .line 78
    :cond_3
    invoke-static {v9, v5}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->detachNavHostFragment(Landroidx/fragment/app/FragmentManager;Landroidx/navigation/fragment/NavHostFragment;)V

    :goto_2
    move v4, v6

    goto :goto_0

    :cond_4
    move/from16 v14, p3

    .line 83
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 84
    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 85
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 88
    new-instance v16, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v11

    move-object v6, v15

    move-object v7, v8

    move-object/from16 v17, v8

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/util/SparseArray;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/lifecycle/MutableLiveData;)V

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 136
    invoke-static {v1, v11, v9}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->setupItemReselected(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/util/SparseArray;Landroidx/fragment/app/FragmentManager;)V

    .line 139
    invoke-static/range {p0 .. p4}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->setupDeepLinks(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)V

    .line 142
    new-instance v7, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v4, v15

    move-object v5, v13

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$3;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/lifecycle/MutableLiveData;)V

    check-cast v7, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v9, v7}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 155
    check-cast v12, Landroidx/lifecycle/LiveData;

    return-object v12
.end method

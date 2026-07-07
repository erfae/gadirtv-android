.class final Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;
.super Ljava/lang/Object;
.source "NavigationExtensions.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt;->setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/util/List;Landroidx/fragment/app/FragmentManager;ILandroid/content/Intent;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationExtensions.kt\ncom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2\n+ 2 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,252:1\n74#2,4:253\n*E\n*S KotlinDebug\n*F\n+ 1 NavigationExtensions.kt\ncom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2\n*L\n115#1,4:253\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onNavigationItemSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $firstFragmentTag:Ljava/lang/String;

.field final synthetic $fragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic $graphIdToTagMap:Landroid/util/SparseArray;

.field final synthetic $isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $selectedItemTag:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $selectedNavController:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/util/SparseArray;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$graphIdToTagMap:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedItemTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedNavController:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$graphIdToTagMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedItemTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 102
    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f01002b

    const v5, 0x7f01002c

    const v6, 0x7f01002d

    const v7, 0x7f01002e

    .line 106
    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 111
    move-object v4, v0

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$graphIdToTagMap:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_2

    .line 254
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 116
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v7, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedItemTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$isOnFirstFragment:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedItemTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$firstFragmentTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 127
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/NavigationExtensionsKt$setupWithNavController$2;->$selectedNavController:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

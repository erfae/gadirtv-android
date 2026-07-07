.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AccountSubscriptionsFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountSubscriptionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountSubscriptionsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,56:1\n18#2:57\n*E\n*S KotlinDebug\n*F\n+ 1 AccountSubscriptionsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment\n*L\n28#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J&\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "mView",
        "Landroid/view/View;",
        "getMView",
        "()Landroid/view/View;",
        "setMView",
        "(Landroid/view/View;)V",
        "viewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;",
        "getViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;",
        "setViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;)V",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "getAccountSubscriptions",
        "",
        "view",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

.field public mView:Landroid/view/View;

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getAccountSubscriptions(Landroid/view/View;)V
    .locals 4

    .line 37
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;-><init>()V

    .line 38
    sget v1, Lcom/magoware/magoware/webtv/R$id;->account_subscription_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "view.account_subscription_recycler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    if-nez v1, :cond_0

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;->getAccountSubscriptions()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;Landroid/view/View;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getMView()Landroid/view/View;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "mView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00ae

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ptions, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    .line 28
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p1, :cond_0

    const-string p2, "viewModelFactory"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {p0, p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    .line 29
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    const-string p2, "mView"

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget p3, Lcom/magoware/magoware/webtv/R$id;->account_subscription_toolbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->getAccountSubscriptions(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setMView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->mView:Landroid/view/View;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

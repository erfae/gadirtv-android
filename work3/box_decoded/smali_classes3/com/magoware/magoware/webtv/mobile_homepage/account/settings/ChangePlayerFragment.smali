.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChangePlayerFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangePlayerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangePlayerFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,74:1\n18#2:75\n*E\n*S KotlinDebug\n*F\n+ 1 ChangePlayerFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment\n*L\n30#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J0\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0016\u0010#\u001a\u00020\u001b2\u000c\u0010$\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001dH\u0016J\u0016\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020(R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "()V",
        "mView",
        "Landroid/view/View;",
        "viewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "getViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "setViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "p1",
        "position",
        "",
        "p3",
        "",
        "onNothingSelected",
        "p0",
        "setPlayer",
        "view",
        "player",
        "",
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

.field private mView:Landroid/view/View;

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;)Landroid/view/View;
    .locals 1

    .line 23
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "mView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;Landroid/view/View;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_0

    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    const p3, 0x7f0e00b3

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026player, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    const-string p2, "mView"

    if-nez p1, :cond_1

    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget p3, Lcom/magoware/magoware/webtv/R$id;->settings_player_toolbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f030010

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "player"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 38
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01d5

    invoke-direct {p3, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    .line 39
    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 40
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/magoware/magoware/webtv/R$id;->settings_spinner_player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v0, "mView.settings_spinner_player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget p3, Lcom/magoware/magoware/webtv/R$id;->settings_spinner_player:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    const/high16 p3, -0x80000000

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    .line 42
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget p3, Lcom/magoware/magoware/webtv/R$id;->settings_spinner_player:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p0

    check-cast p3, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 44
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 67
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->mView:Landroid/view/View;

    if-nez p2, :cond_0

    const-string p4, "mView"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->setPlayer(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final setPlayer(Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment$setPlayer$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment$setPlayer$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;Ljava/util/HashMap;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

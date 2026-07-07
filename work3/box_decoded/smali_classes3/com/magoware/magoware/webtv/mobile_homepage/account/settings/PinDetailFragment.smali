.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "PinDetailFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinDetailFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n+ 3 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n*L\n1#1,92:1\n18#2:93\n41#3,3:94\n*E\n*S KotlinDebug\n*F\n+ 1 PinDetailFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment\n*L\n36#1:93\n29#1,3:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020$H\u0002J\u0010\u0010-\u001a\u00020!2\u0006\u0010,\u001a\u00020$H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "accountPin",
        "",
        "args",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;",
        "getArgs",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "dialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "getDialog",
        "()Landroidx/appcompat/app/AlertDialog;",
        "setDialog",
        "(Landroidx/appcompat/app/AlertDialog;)V",
        "showAdult",
        "",
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
        "intentChangePin",
        "",
        "intentEnterPin",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "resetPin",
        "view",
        "showForgotDialog",
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

.field private accountPin:Ljava/lang/String;

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field public dialog:Landroidx/appcompat/app/AlertDialog;

.field private showAdult:Z

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$$special$$inlined$navArgs$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 96
    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    return-void
.end method

.method public static final synthetic access$getShowAdult$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->showAdult:Z

    return p0
.end method

.method public static final synthetic access$intentChangePin(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->intentChangePin()V

    return-void
.end method

.method public static final synthetic access$intentEnterPin(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->intentEnterPin(Z)V

    return-void
.end method

.method public static final synthetic access$resetPin(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->resetPin(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setShowAdult$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->showAdult:Z

    return-void
.end method

.method public static final synthetic access$showForgotDialog(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->showForgotDialog(Landroid/view/View;)V

    return-void
.end method

.method private final getArgs()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast v0, Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;

    return-object v0
.end method

.method private final intentChangePin()V
    .locals 3

    .line 84
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->accountPin:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "accountPin"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections$Companion;->actionNavAccountPinDetailToNavAccountChangePin(Ljava/lang/String;)Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 85
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentEnterPin(Z)V
    .locals 3

    .line 89
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->accountPin:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "accountPin"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentDirections$Companion;->actionNavAccountPinDetailToNavAccountPin(Ljava/lang/String;Z)Landroidx/navigation/NavDirections;

    move-result-object p1

    .line 90
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final resetPin(Landroid/view/View;)V
    .locals 7

    .line 69
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final showForgotDialog(Landroid/view/View;)V
    .locals 3

    .line 56
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f150192

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f14032b

    .line 57
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f14032c

    .line 58
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$showForgotDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$showForgotDialog$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const p1, 0x7f1402fe

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$showForgotDialog$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$showForgotDialog$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f140083

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    const-string v0, "dialog"

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v1, "dialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

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

    .line 36
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_0

    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    .line 37
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->getArgs()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;->getShowAdult()Z

    move-result p3

    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->showAdult:Z

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->getArgs()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragmentArgs;->getPin()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->accountPin:Ljava/lang/String;

    const p3, 0x7f0e00c7

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView"

    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/magoware/magoware/webtv/R$id;->pin_detail_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget p2, Lcom/magoware/magoware/webtv/R$id;->change_pin_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p2, Lcom/magoware/magoware/webtv/R$id;->reset_pin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$3;

    invoke-direct {p3, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_switch_pin_protection:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_switch_pin_protection:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    const-string p3, "mView.account_switch_pin_protection"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->showAdult:Z

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 49
    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_switch_pin_protection:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$4;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$onCreateView$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

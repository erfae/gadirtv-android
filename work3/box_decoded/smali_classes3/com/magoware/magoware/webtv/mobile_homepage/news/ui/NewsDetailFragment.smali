.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "NewsDetailFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewsDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewsDetailFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n+ 3 LiveData.kt\nandroidx/lifecycle/LiveDataKt\n+ 4 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n*L\n1#1,51:1\n18#2:52\n47#3,3:53\n41#4,3:56\n*E\n*S KotlinDebug\n*F\n+ 1 NewsDetailFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment\n*L\n31#1:52\n43#1,3:53\n27#1,3:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "args",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;",
        "getArgs",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "newsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "subscribeUi",
        "",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;",
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

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$$special$$inlined$navArgs$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 58
    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    return-void
.end method

.method private final getArgs()Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast v0, Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    return-object v0
.end method

.method private final subscribeUi(Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    if-nez v0, :cond_0

    const-string v1, "newsViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->getNews()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$subscribeUi$$inlined$observe$1;

    invoke-direct {v2, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$subscribeUi$$inlined$observe$1;-><init>(Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    .line 54
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

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

    .line 31
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_0

    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    if-nez p3, :cond_1

    const-string v0, "newsViewModel"

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->getArgs()Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->getId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;->setId(J)V

    const p3, 0x7f0e00c6

    const/4 v0, 0x0

    .line 33
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 34
    check-cast p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    const-string p2, "binding"

    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->subscribeUi(Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;)V

    .line 37
    iget-object p2, p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

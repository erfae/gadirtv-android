.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;
.super Landroidx/fragment/app/Fragment;
.source "NewsFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,78:1\n18#2:79\n*E\n*S KotlinDebug\n*F\n+ 1 NewsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment\n*L\n32#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "newsViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;",
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
        "page",
        "",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;",
        "adapter",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;",
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

.field private newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$subscribeUi(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->subscribeUi(ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V

    return-void
.end method

.method private final subscribeUi(ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V
    .locals 3

    .line 57
    iget-object v0, p2, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.newsProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/ViewExtensionKt;->show(Landroid/widget/ProgressBar;)V

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    const-string v1, "newsViewModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "apiv3/news/list"

    goto :goto_0

    :cond_1
    const-string v2, "apiv3/guest/news/list"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->newsFeeds(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;

    invoke-direct {v1, p2, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$subscribeUi$1;-><init>(Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_0

    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    const/4 p3, 0x0

    .line 34
    invoke-static {p1, p2, p3}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;

    move-result-object p1

    const-string p2, "FragmentNewsBinding.infl\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p2, p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsFeedToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->newsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    if-nez p2, :cond_1

    const-string v0, "newsViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->getClearTable()Lkotlinx/coroutines/Job;

    .line 39
    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;-><init>()V

    .line 40
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {v5, p2, v0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 41
    iget-object p2, p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsFeedRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "binding.newsFeedRecycler"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    iget-object p2, p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsFeedRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, v3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    invoke-direct {p0, v0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->subscribeUi(ILcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;)V

    .line 46
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment$onCreateView$scrollListener$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    check-cast p2, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;

    .line 51
    iget-object p3, p1, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->newsFeedRecycler:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 53
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

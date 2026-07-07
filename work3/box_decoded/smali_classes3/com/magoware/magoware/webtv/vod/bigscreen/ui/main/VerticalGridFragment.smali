.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;
.super Landroidx/leanback/app/VerticalGridSupportFragment;
.source "VerticalGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;,
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final ALL_VIDEOS_LOADER:I = 0x1

.field private static final NUM_COLUMNS:I = 0x5


# instance fields
.field private adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private clickedItemViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private page:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->page:I

    return-void
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-object p0
.end method

.method static synthetic access$202(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-object p1
.end method

.method static synthetic access$302(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->clickedItemViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->loadMovieDetails()V

    return-void
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->page:I

    return p0
.end method

.method static synthetic access$608(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->page:I

    return v0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->loadMovies(I)V

    return-void
.end method

.method private loadMovieDetails()V
    .locals 4

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->clickedItemViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    .line 115
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getPosterIV()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "hero"

    .line 113
    invoke-static {v1, v2, v3}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private loadMovies(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSeeMoreObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$UatWPW4Z6oIlvYxRDReIqx6JMaY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$UatWPW4Z6oIlvYxRDReIqx6JMaY;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setupFragment()V
    .locals 2

    .line 71
    new-instance v0, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    const/4 v1, 0x5

    .line 72
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 75
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->startEntranceTransition()V

    .line 77
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$z_hTWupu5tPs1gv6hB5aZzCtLgo;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$z_hTWupu5tPs1gv6hB5aZzCtLgo;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 83
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 85
    iget v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->page:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->loadMovies(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadMovies$1$VerticalGridFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 92
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 93
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setupFragment$0$VerticalGridFragment(Landroid/view/View;)V
    .locals 2

    .line 78
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->loadMovieDetails()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget-object v0, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_shortcut"

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "category_id"

    const-string v3, ""

    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/apiv3/vod/vod_list?category_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "-"

    const-string v5, "category_url"

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->url:Ljava/lang/String;

    .line 58
    :goto_0
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    invoke-direct {v1, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 59
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    if-nez p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->prepareEntranceTransition()V

    .line 65
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 67
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->setupFragment()V

    return-void
.end method

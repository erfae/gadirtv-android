.class public Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;
.super Landroidx/fragment/app/Fragment;
.source "RelatedMoviesFragment.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;


# instance fields
.field private context:Landroid/content/Context;

.field emptyList:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0233
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private movieId:I

.field moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0425
    .end annotation
.end field

.field private relatedMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private similarMoviesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->getRelatedMovies(I)V

    return-void
.end method

.method private getRelatedMovies(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->movieId:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRelatedMoviesObservable(III)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$RelatedMoviesFragment$oqoSsqfpDVugjOJCiIdU8jK4Lu4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$RelatedMoviesFragment$oqoSsqfpDVugjOJCiIdU8jK4Lu4;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(I)Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieId"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vod_id"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public OnVodItemAdultListener()V
    .locals 3

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->context:Landroid/content/Context;

    check-cast v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$getRelatedMovies$0$RelatedMoviesFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->relatedMovies:Ljava/util/List;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->relatedMovies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->emptyList:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->emptyList:Landroid/widget/TextView;

    const v0, 0x7f140491

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->emptyList:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 111
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->similarMoviesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
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

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->similarMoviesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->intentVodDetail()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->relatedMovies:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "vod_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->movieId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00c0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 78
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700e9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 79
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;

    invoke-direct {v1, p2}, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 80
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->context:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p2, p3, v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 82
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    new-instance p3, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment$1;

    invoke-direct {p3, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 91
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 92
    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->relatedMovies:Ljava/util/List;

    invoke-direct {p2, p3}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->similarMoviesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    .line 93
    invoke-virtual {p2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V

    .line 94
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->moviesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->similarMoviesAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->getRelatedMovies(I)V

    return-object p1
.end method

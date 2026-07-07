.class public Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;
.super Landroidx/fragment/app/Fragment;
.source "EpisodesTvShowFragment.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final episodeCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field episodes_recycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b024e
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field tv_show_seasons_spinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06a0
    .end annotation
.end field

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->episodeCards:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getTvShowEpisodes(I)V

    return-void
.end method

.method private getIntentData()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "vod_card"

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    :cond_0
    return-void
.end method

.method private getTvShowEpisodes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonId"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$EpisodesTvShowFragment$Gf_X6h7FxuhOkHy0jVxJI8Btv1c;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$EpisodesTvShowFragment$Gf_X6h7FxuhOkHy0jVxJI8Btv1c;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vod_card"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setSeasons()V
    .locals 8

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 115
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->context:Landroid/content/Context;

    const v7, 0x7f1403a3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodLastWatched()Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    move-result-object v5

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->getSeasonNumber()I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->context:Landroid/content/Context;

    const v6, 0x7f0e01c3

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x7f0e01c2

    .line 122
    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    if-eqz v4, :cond_2

    .line 125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->tv_show_seasons_spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getTvShowEpisodes(I)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getTvShowEpisodes(I)V

    .line 130
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->tv_show_seasons_spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->tv_show_seasons_spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getTvShowEpisodes$0$EpisodesTvShowFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    .line 101
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 102
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->episodes_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string p1, "TAG"

    const-string v0, "getTvShowEpisodes: No Objects"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
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

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->context:Landroid/content/Context;

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

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 62
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->getIntentData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00ba

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 84
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->episodes_recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->context:Landroid/content/Context;

    invoke-direct {p3, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->setSeasons()V

    :cond_0
    return-void
.end method

.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SearchVodActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;


# instance fields
.field private isVodMovie:Z

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04b8
    .end annotation
.end field

.field progress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0512
    .end annotation
.end field

.field searchResults:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b057f
    .end annotation
.end field

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

.field vodSearchedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field vod_search_toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->isVodMovie:Z

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method private checkIfListEmpty()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->noResultsTextView:Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->isVodMovie:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f14039f

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f1403a2

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 164
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    return-void
.end method

.method private searchFor(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->isVodMovie:Z

    if-eqz v0, :cond_0

    const-string v0, "apiv3/vod/vod_list"

    goto :goto_0

    :cond_0
    const-string v0, "apiv3/tv_show/tv_show_list"

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodSearchListObservable(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SearchVodActivity$im1uo53kuXX0jviIjnLqerlixug;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SearchVodActivity$im1uo53kuXX0jviIjnLqerlixug;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public OnVodItemAdultListener()V
    .locals 2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$searchFor$0$SearchVodActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 147
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->checkIfListEmpty()V

    .line 151
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 152
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->intentVodDetail()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0036

    .line 69
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->setContentView(I)V

    .line 70
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vod_search_toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 73
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "vod_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->isVodMovie:Z

    .line 77
    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;

    invoke-direct {v1, p1}, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 83
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    .line 84
    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0008

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b056d

    .line 100
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "search"

    .line 104
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 108
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 109
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 114
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity$2;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 127
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->initView()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchFor(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->vodSearchedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->notifyDataSetChanged()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 170
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeeAllMoviesActivity.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;


# instance fields
.field private carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private movieUrl:Ljava/lang/String;

.field private moviesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0595
    .end annotation
.end field

.field seeAllVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b066e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->loadData(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "carousel"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    .line 73
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->movieUrl:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;

    invoke-direct {v2, v0}, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 80
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->moviesList:Ljava/util/ArrayList;

    .line 82
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->loadData(I)V

    .line 84
    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 90
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->moviesList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->seeAllVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

    .line 91
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->seeAllVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private loadData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->movieUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodCategoriesObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SeeAllMoviesActivity$o7EHLfnxv7pcwWeu2emFOktckw4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SeeAllMoviesActivity$o7EHLfnxv7pcwWeu2emFOktckw4;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public OnVodItemAdultListener()V
    .locals 2

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 46
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$loadData$0$SeeAllMoviesActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->setCategory(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    .line 103
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->moviesList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->seeAllVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
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

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->seeAllVodAdapter:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->intentVodDetail()V

    :cond_0
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

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01c7

    .line 52
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 55
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 61
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 62
    new-instance p1, Landroid/transition/Slide;

    const/16 v1, 0x50

    invoke-direct {p1, v1}, Landroid/transition/Slide;-><init>(I)V

    .line 63
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 64
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->initView()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

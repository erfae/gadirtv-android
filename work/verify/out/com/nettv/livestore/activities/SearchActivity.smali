.class public Lcom/nettv/livestore/activities/SearchActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SearchActivity.java"


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public epgChannels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public et_search:Landroid/widget/EditText;

.field public is_live:Z

.field public liveAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public movieModels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation
.end field

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

.field public recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

.field public recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

.field public seriesModels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation
.end field

.field public str_live:Landroid/widget/TextView;

.field public str_movies:Landroid/widget/TextView;

.field public str_series:Landroid/widget/TextView;

.field public vodAdapter:Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

.field public vod_search_key:Ljava/lang/String;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$N_I7LjdNXKADw4POuahMX3gFzYA(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->lambda$searchModels$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TwmHXaTpKqPmvf-Fnb4Ryf9jSVg(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/MovieModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->lambda$searchModels$2(Lcom/nettv/livestore/models/MovieModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WCTfw3DP2FE2mdlhCDdZUOViyjc(Lcom/nettv/livestore/activities/SearchActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->lambda$initView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aZlLbwoqX2svxoYXvnI8lz13CjE(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/SeriesModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->lambda$searchModels$3(Lcom/nettv/livestore/models/SeriesModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$toHWNVruL7pdCUhrbIGZ9ruY2GI()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/activities/SearchActivity;->lambda$searchModels$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->is_live:Z

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->vod_search_key:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/SearchActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->searchModels(Ljava/lang/String;)V

    return-void
.end method

.method private checkAdultMovie(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p2, "xxx"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    const-string p2, "porn"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    const-string p2, "adult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    .line 3
    :cond_25
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 2
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const-string p1, "UnNamed Category"

    return-object p1
.end method

.method private getSeriesCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 2
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const-string p1, "UnNamed Category"

    return-object p1
.end method

.method private initView()V
    .registers 7

    const v0, 0x7f0b0088

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b012d

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b0366

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_live:Landroid/widget/TextView;

    const v0, 0x7f0b036b

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_movies:Landroid/widget/TextView;

    const v0, 0x7f0b0371

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_series:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02ec

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    const v0, 0x7f0b02f5

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    const v0, 0x7f0b02f2

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    .line 10
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_84

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveHorizontalGridView;->setLoop(Z)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 13
    iget-object v4, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/SearchActivity$3;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/SearchActivity$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_93

    .line 14
    :cond_84
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 16
    :goto_93
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveHorizontalGridView;->setLoop(Z)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 19
    iget-object v4, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/SearchActivity$4;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/SearchActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_c1

    .line 20
    :cond_b2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 22
    :goto_c1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveHorizontalGridView;->setLoop(Z)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/SearchActivity$5;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/SearchActivity$5;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_ef

    .line 26
    :cond_e0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :goto_ef
    return-void
.end method

.method private synthetic lambda$initView$4(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_changed"

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$searchModels$0()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$searchModels$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$17:Lio/realm/Realm$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1, v0}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->saveCategoryAndChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 4
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->is_live:Z

    if-eqz p1, :cond_2f

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "is_changed"

    const-string p3, "from_search"

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 7
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_52

    .line 9
    :cond_2f
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "is_full"

    if-eqz p1, :cond_45

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_52

    .line 13
    :cond_45
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_52
    :goto_52
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$searchModels$2(Lcom/nettv/livestore/models/MovieModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->checkAdultMovie(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/nettv/livestore/activities/SearchActivity;->showLockDlgFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 4
    :cond_20
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "name"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "stream_id"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p3, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p3

    const-string v0, "category_name"

    if-eqz p3, :cond_4b

    .line 8
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_56

    .line 9
    :cond_4b
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :goto_56
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_59
    :goto_59
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$searchModels$3(Lcom/nettv/livestore/models/SeriesModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/SeriesInfoActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "name"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "series_id"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p3

    const-string v0, "category_name"

    if-eqz p3, :cond_31

    .line 6
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 7
    :cond_31
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->getSeriesCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :goto_3c
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method private saveCategoryAndChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_55

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_33
    const/4 v3, 0x0

    goto :goto_55

    .line 7
    :cond_35
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_55

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    move v3, v4

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 10
    :cond_55
    :goto_55
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v1, v0, v6, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :goto_72
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v4

    if-ge v1, v4, :cond_91

    .line 12
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    move v2, v1

    goto :goto_91

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 13
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    return-void
.end method

.method private searchModels(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByKey(Ljava/lang/String;Z)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->epgChannels:Lio/realm/RealmResults;

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/helper/RealmController;->getMoviesByKey(Ljava/lang/String;Z)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->movieModels:Lio/realm/RealmResults;

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getSeriesByKey(Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->seriesModels:Lio/realm/RealmResults;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->epgChannels:Lio/realm/RealmResults;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_5f

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_live:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/SearchActivity;I)V

    invoke-direct {p1, p0, v2, v3}, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->liveAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

    .line 8
    iget-object v2, p0, Lcom/nettv/livestore/activities/SearchActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;->setEpgChannels(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SearchActivity;->liveAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_69

    .line 10
    :cond_5f
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_live:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_69
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->movieModels:Lio/realm/RealmResults;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_9c

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_movies:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/SearchActivity;I)V

    invoke-direct {p1, p0, v2, v3}, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->vodAdapter:Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

    .line 16
    iget-object v2, p0, Lcom/nettv/livestore/activities/SearchActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;->setModels(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SearchActivity;->vodAdapter:Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_a6

    .line 18
    :cond_9c
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_movies:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_a6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->seriesModels:Lio/realm/RealmResults;

    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_cd

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_series:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->seriesModels:Lio/realm/RealmResults;

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/SearchActivity;I)V

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_d7

    .line 25
    :cond_cd
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_series:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerSeries:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_d7
    return-void
.end method

.method private showLockDlgFragment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_lock"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/SearchActivity$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/nettv/livestore/activities/SearchActivity$2;-><init>(Lcom/nettv/livestore/activities/SearchActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_63

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_50

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq v0, v1, :cond_42

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1b

    goto :goto_63

    .line 3
    :cond_1b
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 6
    :cond_2f
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 9
    :cond_42
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerChannels:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 11
    :cond_50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, ""

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    :cond_63
    :goto_63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002e

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SearchActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_live"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->is_live:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "search_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->vod_search_key:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_live:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_movies:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->str_series:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSearch_by_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/nettv/livestore/activities/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SearchActivity$1;-><init>(Lcom/nettv/livestore/activities/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->vod_search_key:Ljava/lang/String;

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity;->vod_search_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->recyclerMovies:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_91

    .line 19
    :cond_8c
    iget-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_91
    return-void
.end method

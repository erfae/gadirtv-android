.class public Lcom/nettv/livestore/activities/SeriesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_pos:I

.field public et_search:Landroid/widget/EditText;

.field public ly_back:Landroid/widget/LinearLayout;

.field public ly_search:Landroid/widget/LinearLayout;

.field public pre_category_pos:I

.field public pre_series_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

.field public seriesModels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation
.end field

.field public sortLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sort_pos:I

.field public sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

.field public txt_back:Landroid/widget/TextView;

.field public txt_category:Landroid/widget/TextView;

.field public txt_home:Landroid/widget/TextView;

.field public txt_live:Landroid/widget/TextView;

.field public txt_movie:Landroid/widget/TextView;

.field public txt_search:Landroid/widget/TextView;

.field public txt_series:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$6kGPXyh9Nwg7Tpsrfv8QwjRRsmA(Lcom/nettv/livestore/activities/SeriesActivity;Lorg/json/JSONObject;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/SeriesActivity;->lambda$GetLoginFromSubtitle$1(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nA-ggdGGJMBcGHjEdAhQV1IOePo(Lcom/nettv/livestore/activities/SeriesActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeriesActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sortLists:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    return-void
.end method

.method private GetLoginFromSubtitle()V
    .registers 5

    .line 1
    new-instance v0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;-><init>(Landroid/content/Context;I)V

    .line 2
    sget-object v1, Lcom/nettv/livestore/apps/Constants;->USERNAME:Ljava/lang/String;

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->PASSWORD:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Security;->getUserObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_LOGIN:Ljava/lang/String;

    sget-object v3, Lcom/nettv/livestore/apps/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->setOnGetLinkModelListener(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/SeriesActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesActivity;->getSeriesCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/SeriesActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesActivity;->searchModels(Ljava/lang/String;)V

    return-void
.end method

.method private getAvailableCategoryPosition()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    const-string v5, ""

    invoke-virtual {v2, v3, v5, v4, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-lez v2, :cond_29

    return v1

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    return v0
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

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

    const v0, 0x7f0b0233

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    const v0, 0x7f0b024e

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    const v0, 0x7f0b03d9

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03c0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_category:Landroid/widget/TextView;

    const v0, 0x7f0b03f4

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_search:Landroid/widget/TextView;

    const v0, 0x7f0b03bc

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_back:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02f2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b02ea

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b033d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/CustomSpinner;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    .line 14
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_b6

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 18
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/SeriesActivity$4;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/SeriesActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_c5

    .line 19
    :cond_b6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 21
    :goto_c5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x5

    if-eqz v0, :cond_ea

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/SeriesActivity$5;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/SeriesActivity$5;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_f9

    .line 26
    :cond_ea
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    :goto_f9
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_search:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_back:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getBack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$GetLoginFromSubtitle$1(Lorg/json/JSONObject;I)V
    .registers 4

    if-eqz p1, :cond_18

    .line 1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/nettv/livestore/models/SubTitleUserModel;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubTitleUserModel;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleLoginModel(Lcom/nettv/livestore/models/SubTitleUserModel;)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_63

    .line 2
    iget p3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_69

    .line 3
    iget-object p3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p3

    iget v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_category:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_69

    .line 9
    :cond_63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    :cond_69
    :goto_69
    const/4 p1, 0x0

    return-object p1
.end method

.method private searchModels(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method private setFocusTopView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19f

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19c

    const/16 v1, 0x59

    const/16 v2, 0xa

    if-eq v0, v1, :cond_172

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_134

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a4

    goto/16 :goto_19f

    .line 3
    :pswitch_1e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 5
    :cond_2c
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 6
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 8
    :cond_3d
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    :cond_4d
    return v2

    .line 9
    :pswitch_4e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 10
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 12
    :cond_5f
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    :cond_77
    return v2

    .line 13
    :pswitch_78
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 15
    :cond_86
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_d9

    .line 16
    :cond_97
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a8

    goto :goto_d0

    .line 17
    :cond_a8
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_c7

    .line 18
    :cond_b9
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 20
    :cond_c7
    :goto_c7
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 22
    :cond_d0
    :goto_d0
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 24
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 25
    :pswitch_df
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f4

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    if-nez v0, :cond_f4

    .line 26
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 28
    :cond_f4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 30
    :cond_102
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 32
    :cond_110
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_123

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_123

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 34
    :cond_123
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 35
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 37
    :cond_134
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 38
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_19f

    .line 39
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    .line 40
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_19f

    .line 41
    :cond_153
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 42
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_19f

    .line 43
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    .line 44
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_19f

    .line 45
    :cond_172
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 46
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    if-le v0, v2, :cond_19f

    sub-int/2addr v0, v2

    .line 47
    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_category_pos:I

    .line 48
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_19f

    .line 49
    :cond_187
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 50
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    if-le v0, v2, :cond_19f

    sub-int/2addr v0, v2

    .line 51
    iput v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->pre_series_pos:I

    .line 52
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_19f

    .line 53
    :cond_19c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 54
    :cond_19f
    :goto_19f
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_1a4
    .packed-switch 0x13
        :pswitch_df
        :pswitch_78
        :pswitch_4e
        :pswitch_1e
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_4a

    goto :goto_49

    .line 2
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/MovieActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_49

    .line 4
    :sswitch_16
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    .line 6
    :cond_27
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    :goto_31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_49

    .line 8
    :sswitch_35
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-string v1, "is_live"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_49

    .line 11
    :sswitch_46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_49
    return-void

    :sswitch_data_4a
    .sparse-switch
        0x7f0b0233 -> :sswitch_46
        0x7f0b024e -> :sswitch_35
        0x7f0b03d9 -> :sswitch_46
        0x7f0b03dc -> :sswitch_16
        0x7f0b03e2 -> :sswitch_8
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0030

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesActivity;->initView()V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->getVodSortLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sortLists:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleSeriesCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getSeriesGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 9
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesActivity;->getAvailableCategoryPosition()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesOrder()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget v2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->txt_category:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    iget-object v3, p0, Lcom/nettv/livestore/activities/SeriesActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    new-instance v8, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/4 v0, 0x5

    invoke-direct {v8, p0, v0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 17
    new-instance p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesModels:Lio/realm/RealmResults;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;-><init>(Landroid/content/Context;Lio/realm/RealmResults;Z)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    .line 18
    new-instance v0, Lcom/nettv/livestore/activities/SeriesActivity$1;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesActivity$1;-><init>(Lcom/nettv/livestore/activities/SeriesActivity;)V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->setItemClickListener(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance p1, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sortLists:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_pos:I

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    new-instance v0, Lcom/nettv/livestore/activities/SeriesActivity$2;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesActivity$2;-><init>(Lcom/nettv/livestore/activities/SeriesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/nettv/livestore/activities/SeriesActivity$3;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesActivity$3;-><init>(Lcom/nettv/livestore/activities/SeriesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 26
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesActivity;->setFocusTopView(Z)V

    .line 27
    :cond_fd
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesActivity;->GetLoginFromSubtitle()V

    return-void
.end method

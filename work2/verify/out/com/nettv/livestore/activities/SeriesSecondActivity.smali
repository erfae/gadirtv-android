.class public Lcom/nettv/livestore/activities/SeriesSecondActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeriesSecondActivity.java"

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

.field public pre_series_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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

.field public txt_series:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sortLists:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/SeriesSecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->getSeriesCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/SeriesSecondActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->searchModels(Ljava/lang/String;)V

    return-void
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
    .registers 5

    const v0, 0x7f0b03d9

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03c0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_category:Landroid/widget/TextView;

    const v0, 0x7f0b03bc

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_back:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02f2

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b033d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/CustomSpinner;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    .line 10
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_8b

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 14
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/SeriesSecondActivity$4;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/SeriesSecondActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_9a

    .line 15
    :cond_8b
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 17
    :goto_9a
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_back:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getBack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_back:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private searchModels(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method private setFocusTopView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_back:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9e

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9b

    const/16 v1, 0x59

    const/16 v2, 0xc

    if-eq v0, v1, :cond_86

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_67

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_a4

    goto/16 :goto_9e

    .line 3
    :pswitch_1d
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_2d
    return v1

    .line 4
    :pswitch_2e
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_back:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_3e
    return v1

    .line 5
    :pswitch_3f
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->setFocusTopView(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 8
    :pswitch_51
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_9e

    .line 9
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->setFocusTopView(Z)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 11
    :cond_67
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 12
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    if-ge v0, v1, :cond_9e

    .line 13
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    .line 14
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_9e

    .line 15
    :cond_86
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 16
    iget v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    if-le v0, v2, :cond_9e

    sub-int/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->pre_series_pos:I

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_9e

    .line 19
    :cond_9b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    :cond_9e
    :goto_9e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_a4
    .packed-switch 0x13
        :pswitch_51
        :pswitch_3f
        :pswitch_2e
        :pswitch_1d
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "is_changed"

    sparse-switch p1, :sswitch_data_42

    goto :goto_41

    .line 2
    :sswitch_b
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "movie"

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_41

    .line 6
    :sswitch_1c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "live"

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_41

    .line 10
    :sswitch_2d
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "home"

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_41

    .line 14
    :sswitch_3e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0x7f0b03bc -> :sswitch_3e
        0x7f0b03d9 -> :sswitch_2d
        0x7f0b03dc -> :sswitch_1c
        0x7f0b03e2 -> :sswitch_b
        0x7f0b03f7 -> :sswitch_3e
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0034

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->initView()V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->getVodSortLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sortLists:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleSeriesCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getSeriesGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 9
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_pos"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesOrder()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    const-string v4, ""

    invoke-virtual {p1, v0, v4, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->txt_category:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesModels:Lio/realm/RealmResults;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v0, v2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;-><init>(Landroid/content/Context;Lio/realm/RealmResults;Z)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    .line 15
    new-instance v0, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesSecondActivity$1;-><init>(Lcom/nettv/livestore/activities/SeriesSecondActivity;)V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->setItemClickListener(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->recycler_series:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->seriesAdapter:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    new-instance p1, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sortLists:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    iget v0, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_pos:I

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    new-instance v0, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesSecondActivity$2;-><init>(Lcom/nettv/livestore/activities/SeriesSecondActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesSecondActivity;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/nettv/livestore/activities/SeriesSecondActivity$3;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SeriesSecondActivity$3;-><init>(Lcom/nettv/livestore/activities/SeriesSecondActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 23
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/SeriesSecondActivity;->setFocusTopView(Z)V

    :cond_df
    return-void
.end method

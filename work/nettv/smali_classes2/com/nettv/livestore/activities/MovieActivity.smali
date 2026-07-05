.class public Lcom/nettv/livestore/activities/MovieActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MovieActivity.java"

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

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public ly_back:Landroid/widget/LinearLayout;

.field public ly_search:Landroid/widget/LinearLayout;

.field public movieModels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation
.end field

.field public pre_category_pos:I

.field public pre_movie_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

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

.field public vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$4tdl_nac7kplscf7ABrkLWpl-14(Lcom/nettv/livestore/activities/MovieActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BIcz99_C4Ttz14KLEr_TEsQG90w(Lcom/nettv/livestore/activities/MovieActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieActivity;->lambda$showExternalPlayerDialog$2(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzddsGnzMUC-_UF6lpIN6qFrOaI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->lambda$showExternalPlayerDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$maGMyf4czg_eU4HmKE-OZ-aokag(Lcom/nettv/livestore/activities/MovieActivity;Lorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->lambda$GetLoginFromSubtitle$1(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nettv/livestore/activities/MovieActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sortLists:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    return-void
.end method

.method private GetLoginFromSubtitle()V
    .locals 4

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

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->setOnGetLinkModelListener(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/MovieActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->checkAdultMovie(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/MovieActivity;Lcom/nettv/livestore/models/MovieModel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->showMovieLockDlgFragment(Lcom/nettv/livestore/models/MovieModel;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/MovieActivity;Lcom/nettv/livestore/models/MovieModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->playRecentMovie(Lcom/nettv/livestore/models/MovieModel;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/MovieActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/MovieActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->searchModels(Ljava/lang/String;)V

    return-void
.end method

.method private checkAdultMovie(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "xxx"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "porn"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "adult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 3
    :cond_2
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private externalMXplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application/x-mpegURL"

    .line 5
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private externalvlcplayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.videolan.vlc"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "video/*"

    .line 4
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from_start"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "position"

    const-wide/32 v2, 0x15f90

    .line 7
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "org.videolan.vlc.gui.video.VideoPlayerActivity"

    invoke-direct {p1, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getAvailableCategoryPosition()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    const-string v5, ""

    invoke-virtual {v2, v3, v5, v4, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 2
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "UnNamed Category"

    return-object p1
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0b0233

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    const v0, 0x7f0b024e

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    const v0, 0x7f0b03d9

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03f4

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_search:Landroid/widget/TextView;

    const v0, 0x7f0b03bc

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_back:Landroid/widget/TextView;

    const v0, 0x7f0b03c0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_category:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02f0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b02ea

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b033d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/CustomSpinner;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    .line 14
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 18
    iget-object v4, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/MovieActivity$4;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/MovieActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 21
    :goto_0
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x5

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/MovieActivity$5;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/MovieActivity$5;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_back:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getBack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_search:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$GetLoginFromSubtitle$1(Lorg/json/JSONObject;I)V
    .locals 1

    if-eqz p1, :cond_0

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
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleLoginModel(Lcom/nettv/livestore/models/SubTitleUserModel;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    iget p3, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 4
    sget-object p3, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->showLockDlgFragment(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_category:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;->setSelectedPosition(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$showExternalPlayerDialog$2(ILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    const-string p3, "android.intent.action.VIEW"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "https://play.google.com/store/apps/details?id=org.videolan.vlc&hl=en_US"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$showExternalPlayerDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private playRecentMovie(Lcom/nettv/livestore/models/MovieModel;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceExternalPlayer()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nettv/livestore/helper/GetSharedInfo;->getMovieUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getMXPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$MXPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, v0, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/MovieActivity;->externalMXplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->showExternalPlayerDialog(I)V

    goto :goto_3

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getVlcPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$VLCPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/nettv/livestore/activities/MovieActivity;->externalvlcplayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :cond_4
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/MovieActivity;->showExternalPlayerDialog(I)V

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 13
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    const-string v2, ""

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieActivity;->getMovieCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v1, "category_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method private searchModels(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->updateData(Lio/realm/OrderedRealmCollection;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method private setFocusTopView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private showExternalPlayerDialog(I)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getInstall_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getWant_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v2}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;II)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLockDlgFragment(I)V
    .locals 4

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

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/activities/MovieActivity$6;-><init>(Lcom/nettv/livestore/activities/MovieActivity;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showMovieLockDlgFragment(Lcom/nettv/livestore/models/MovieModel;I)V
    .locals 4

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

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$7;

    invoke-direct {v3, p0, p2, p1}, Lcom/nettv/livestore/activities/MovieActivity$7;-><init>(Lcom/nettv/livestore/activities/MovieActivity;ILcom/nettv/livestore/models/MovieModel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/16 v1, 0x59

    const/16 v2, 0xa

    if-eq v0, v1, :cond_12

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_2
    return v2

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_4
    return v2

    .line 13
    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 18
    :cond_8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 20
    :cond_9
    :goto_0
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 22
    :cond_a
    :goto_1
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 24
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    if-nez v0, :cond_c

    .line 26
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 28
    :cond_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_back:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 30
    :cond_d
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 32
    :cond_e
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 34
    :cond_f
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 35
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 37
    :cond_10
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_15

    .line 39
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    .line 40
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3

    .line 41
    :cond_11
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 42
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_15

    .line 43
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    .line 44
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3

    .line 45
    :cond_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    if-le v0, v2, :cond_15

    sub-int/2addr v0, v2

    .line 47
    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_category_pos:I

    .line 48
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3

    .line 49
    :cond_13
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 50
    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    if-le v0, v2, :cond_15

    sub-int/2addr v0, v2

    .line 51
    iput v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->pre_movie_pos:I

    .line 52
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3

    .line 53
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 54
    :cond_15
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SeriesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 4
    :sswitch_1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 8
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-string v1, "is_live"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 11
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0233 -> :sswitch_3
        0x7f0b024e -> :sswitch_2
        0x7f0b03d9 -> :sswitch_3
        0x7f0b03dc -> :sswitch_1
        0x7f0b03f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0028

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieActivity;->initView()V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->getVodSortLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sortLists:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleVodCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getVodGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 9
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieActivity;->getAvailableCategoryPosition()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceVodOrder()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->txt_category:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

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

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    new-instance v8, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/4 v0, 0x3

    invoke-direct {v8, p0, v0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 17
    new-instance p1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->movieModels:Lio/realm/RealmResults;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;-><init>(Landroid/content/Context;Lio/realm/RealmResults;Z)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    .line 18
    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/MovieActivity$1;-><init>(Lcom/nettv/livestore/activities/MovieActivity;)V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;->setItemClickListener(Lcom/nettv/livestore/adapter/VodRecyclerAdapter$ItemClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_movie:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->vodAdapter:Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance p1, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sortLists:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/SortSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_pos:I

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->sort_spinner:Lcom/nettv/livestore/view/CustomSpinner;

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/MovieActivity$2;-><init>(Lcom/nettv/livestore/activities/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$3;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/MovieActivity$3;-><init>(Lcom/nettv/livestore/activities/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/MovieActivity;->setFocusTopView(Z)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieActivity;->GetLoginFromSubtitle()V

    return-void
.end method

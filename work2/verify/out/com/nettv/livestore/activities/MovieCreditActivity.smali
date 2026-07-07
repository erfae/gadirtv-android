.class public Lcom/nettv/livestore/activities/MovieCreditActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MovieCreditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_play:Landroid/widget/Button;

.field public btn_trailer:Landroid/widget/Button;

.field public currentMovieModel:Lcom/nettv/livestore/models/MovieCreditModel;

.field public modelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieCreditModel;",
            ">;"
        }
    .end annotation
.end field

.field public movie_bg:Landroid/widget/ImageView;

.field public movie_logo:Landroid/widget/ImageView;

.field public person_id:I

.field public ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

.field public recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

.field public txt_description:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_rating:Landroid/widget/TextView;

.field public txt_year:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/MovieCreditActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieCreditActivity;->getNewModelList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/MovieCreditActivity;Lcom/nettv/livestore/models/MovieCreditModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieCreditActivity;->setMovieInfo(Lcom/nettv/livestore/models/MovieCreditModel;)V

    return-void
.end method

.method private getMovieCredit()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->person_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/movie_credits?api_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d96abf17668601f56b3d7b8336a61933"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&language=en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nettv/livestore/apps/Constants;->PERSON_API:Ljava/lang/String;

    invoke-static {v1}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nettv/livestore/remote/APIService;->getMovieCreditModels(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/MovieCreditActivity$1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MovieCreditActivity$1;-><init>(Lcom/nettv/livestore/activities/MovieCreditActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getNewModelList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieCreditModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_47

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/MovieCreditModel;

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getContainMoviesByTitle(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object v1

    if-nez v1, :cond_c

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 5
    :cond_2c
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->adapter:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->setMovieCreditModels(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_47

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/MovieCreditModel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieCreditActivity;->setMovieInfo(Lcom/nettv/livestore/models/MovieCreditModel;)V

    :cond_47
    return-void
.end method

.method private getTrailerVideoId()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->currentMovieModel:Lcom/nettv/livestore/models/MovieCreditModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieCreditModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/videos?api_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d96abf17668601f56b3d7b8336a61933"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nettv/livestore/apps/Constants;->IMDB_API:Ljava/lang/String;

    invoke-static {v1}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nettv/livestore/remote/APIService;->getTmdbVideoModels(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/MovieCreditActivity$2;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MovieCreditActivity$2;-><init>(Lcom/nettv/livestore/activities/MovieCreditActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .registers 5

    const v0, 0x7f0b0291

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_bg:Landroid/widget/ImageView;

    const v0, 0x7f0b01dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_logo:Landroid/widget/ImageView;

    const v0, 0x7f0b0088

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b02f5

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    const v0, 0x7f0b03e4

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b0405

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_year:Landroid/widget/TextView;

    const v0, 0x7f0b03d5

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b03f0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_rating:Landroid/widget/TextView;

    const v0, 0x7f0b03cd

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b03ba

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b02e6

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const v0, 0x7f0b008d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v0, 0x7f0b0098

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    const v0, 0x7f0b00a3

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_trailer:Landroid/widget/Button;

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_trailer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->adapter:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

    .line 20
    new-instance v1, Lcom/nettv/livestore/activities/MovieCreditActivity$3;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MovieCreditActivity$3;-><init>(Lcom/nettv/livestore/activities/MovieCreditActivity;)V

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->setItemClickListener(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->adapter:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e9

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveHorizontalGridView;->setLoop(Z)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/MovieCreditActivity$4;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/MovieCreditActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_f8

    .line 26
    :cond_e9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->recycler_vod:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    :goto_f8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFind_movie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_trailer:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getWatch_trailer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMovieInfo(Lcom/nettv/livestore/models/MovieCreditModel;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->currentMovieModel:Lcom/nettv/livestore/models/MovieCreditModel;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_year:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getRelease_date()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :try_start_1d
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_rating:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getVote_average()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getVote_average()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_52

    .line 7
    :catch_45
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->txt_rating:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    .line 9
    :goto_52
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->IMDB_IMAGE_PREF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_bg:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_a1

    .line 13
    :cond_89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f08007a

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_bg:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 16
    :goto_a1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->IMDB_IMAGE_PREF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_logo:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_f0

    .line 20
    :cond_d8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const v0, 0x7f0800a9

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->movie_logo:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_f0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_43

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq v0, v1, :cond_28

    const/16 v1, 0x14

    if-eq v0, v1, :cond_14

    goto :goto_43

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 6
    :cond_28
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_trailer:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 7
    :cond_38
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 9
    :cond_43
    :goto_43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0088

    if-eq p1, v0, :cond_32

    const v0, 0x7f0b0098

    if-eq p1, v0, :cond_18

    const v0, 0x7f0b00a3

    if-eq p1, v0, :cond_14

    goto :goto_35

    .line 2
    :cond_14
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieCreditActivity;->getTrailerVideoId()V

    goto :goto_35

    .line 3
    :cond_18
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->currentMovieModel:Lcom/nettv/livestore/models/MovieCreditModel;

    if-eqz p1, :cond_35

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->currentMovieModel:Lcom/nettv/livestore/models/MovieCreditModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 7
    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_35
    :goto_35
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0029

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieCreditActivity;->initView()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "person_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->person_id:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->person_id:I

    if-lez p1, :cond_32

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieCreditActivity;->getMovieCredit()V

    .line 10
    :cond_32
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity;->btn_play:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

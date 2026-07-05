.class public Lcom/nettv/livestore/activities/MovieInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MovieInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_favorite:Landroid/widget/RelativeLayout;

.field public btn_play:Landroid/widget/RelativeLayout;

.field public btn_show_cast:Landroid/widget/Button;

.field public btn_trailer:Landroid/widget/RelativeLayout;

.field public castModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;"
        }
    .end annotation
.end field

.field public cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

.field public category_name:Ljava/lang/String;

.field public currentMovie:Lcom/nettv/livestore/models/MovieModel;

.field public focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

.field public image_fav:Landroid/widget/ImageView;

.field public is_fav:Z

.field public main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

.field public movie_bg:Landroid/widget/ImageView;

.field public movie_logo:Landroid/widget/ImageView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

.field public str_added:Landroid/widget/TextView;

.field public str_cast:Landroid/widget/TextView;

.field public stream_id:Ljava/lang/String;

.field public tmdb_id:Ljava/lang/String;

.field public txt_added:Landroid/widget/TextView;

.field public txt_description:Landroid/widget/TextView;

.field public txt_duration:Landroid/widget/TextView;

.field public txt_genre:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_play:Landroid/widget/TextView;

.field public txt_rating:Landroid/widget/TextView;

.field public txt_trailer:Landroid/widget/TextView;

.field public txt_year:Landroid/widget/TextView;

.field public vod_url:Ljava/lang/String;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$5m9SiBTS8yBQVijko9nPW8yOyOc(Lcom/nettv/livestore/activities/MovieInfoActivity;Lcom/nettv/livestore/models/CastModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieInfoActivity;->lambda$initView$0(Lcom/nettv/livestore/models/CastModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7qHrnODC6RhcOKUqn7aAjjg--is(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->lambda$onClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bq6wS7sMfAP_vttrOQPIWv-Bq8A(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->lambda$onClick$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NcpmXRAh3YcnEzga33Z9y4oEQe4(Lcom/nettv/livestore/activities/MovieInfoActivity;ILandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MovieInfoActivity;->lambda$showExternalPlayerDialog$3(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$URGfJqt_QTnfOWLImt33NgFEx-Q(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->lambda$showExternalPlayerDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->castModels:Ljava/util/List;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->tmdb_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->category_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->vod_url:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->is_fav:Z

    .line 6
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setModelInfo()V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setNoDescriptionData()V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/MovieInfoActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setCastAdapter(Ljava/util/List;)V

    return-void
.end method

.method private checkAdultMovies(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "xxx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "porn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "adult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private externalMXplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

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
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method private externalvlcplayer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "org.videolan.vlc"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "video/*"

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method private getCastModels()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->tmdb_id:Ljava/lang/String;

    const-string v2, "/credits?api_key="

    const-string v3, "d96abf17668601f56b3d7b8336a61933"

    .line 2
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/nettv/livestore/apps/Constants;->IMDB_API:Ljava/lang/String;

    invoke-static {v1}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nettv/livestore/remote/APIService;->getCastModels(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/nettv/livestore/activities/MovieInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MovieInfoActivity$2;-><init>(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getMovieInfo()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/nettv/livestore/remote/APIService;->get_vod_info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/nettv/livestore/activities/MovieInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MovieInfoActivity$1;-><init>(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .registers 5

    const v0, 0x7f0b017b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0291

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movie_bg:Landroid/widget/ImageView;

    const v0, 0x7f0b01dd

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movie_logo:Landroid/widget/ImageView;

    const v0, 0x7f0b01d6

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f0b03e4

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b0405

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_year:Landroid/widget/TextView;

    const v0, 0x7f0b03f0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_rating:Landroid/widget/TextView;

    const v0, 0x7f0b03cd

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_duration:Landroid/widget/TextView;

    const v0, 0x7f0b03ba

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_added:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b03ea

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_play:Landroid/widget/TextView;

    const v0, 0x7f0b03ff

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_trailer:Landroid/widget/TextView;

    const v0, 0x7f0b0098

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b008d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00a3

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0088

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    const v0, 0x7f0b0356

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_added:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02e6

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const v0, 0x7f0b03d5

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_genre:Landroid/widget/TextView;

    const v0, 0x7f0b0358

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_cast:Landroid/widget/TextView;

    const v0, 0x7f0b02e2

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v0, 0x7f0b00af

    .line 28
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveHorizontalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    .line 29
    new-instance v0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p0, v1, v2}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->adapter:Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

    .line 30
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_154

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/view/LiveHorizontalGridView;->setLoop(Z)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 34
    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v3, Lcom/nettv/livestore/activities/MovieInfoActivity$3;

    invoke-direct {v3, v0}, Lcom/nettv/livestore/activities/MovieInfoActivity$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15e

    .line 36
    :cond_154
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    :goto_15e
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_added:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getDate_added()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_play:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getPlay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_trailer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getTrailer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_cast:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getCast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private synthetic lambda$initView$0(Lcom/nettv/livestore/models/CastModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CastModel;->getId()I

    move-result p2

    if-lez p2, :cond_2a

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/MovieCreditActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CastModel;->getId()I

    move-result p1

    const-string p3, "person_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "name"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onClick$1()V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getFavMovieNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceVodFavNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getFavMovieNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceVodFavNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$showExternalPlayerDialog$3(ILandroid/content/DialogInterface;I)V
    .registers 4

    const/4 p2, 0x1

    const-string p3, "android.intent.action.VIEW"

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    const/4 p1, 0x0

    goto :goto_29

    .line 1
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_29

    .line 2
    :cond_1a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "https://play.google.com/store/apps/details?id=org.videolan.vlc&hl=en_US"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    :goto_29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$showExternalPlayerDialog$4(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private playMovie()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_15

    .line 3
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    :goto_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->category_name:Ljava/lang/String;

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->tmdb_id:Ljava/lang/String;

    const-string v2, "tmdb_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCastAdapter(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->castModels:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_14
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_cast:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->adapter:Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->setMovieData(Ljava/util/List;)V

    goto :goto_3f

    .line 8
    :cond_24
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->str_cast:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->adapter:Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->setMovieData(Ljava/util/List;)V

    :goto_3f
    return-void
.end method

.method private setFull()V
    .registers 8

    .line 1
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    sget-object v0, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b0193

    const v3, 0x7f0b0192

    const v4, 0x7f0b0191

    if-eq v0, v1, :cond_52

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    goto :goto_75

    :cond_26
    const/4 v0, 0x0

    .line 4
    invoke-virtual {v6, v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v0, 0x3f19999a    # 0.6f

    .line 5
    invoke-virtual {v6, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v6, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x7f0b01dd

    const/4 v2, 0x3

    const v3, 0x7f0b00a5

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x4

    const v3, 0x7f0b0192

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const v1, 0x7f0b0358

    const/4 v2, 0x3

    const/4 v4, 0x3

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_75

    :cond_52
    const v0, 0x3ec28f5c    # 0.38f

    .line 10
    invoke-virtual {v6, v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v0, 0x3f59999a    # 0.85f

    .line 11
    invoke-virtual {v6, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 12
    invoke-virtual {v6, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x7f0b01dd

    const/4 v2, 0x4

    const v3, 0x7f0b0191

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x3

    const/4 v4, 0x3

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 15
    :goto_75
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private setModelInfo()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_added:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getAdded()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Utils;->getDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :try_start_22
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_rating:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getRating()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_55} :catch_56

    goto :goto_63

    .line 5
    :catch_56
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_rating:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    .line 7
    :goto_63
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_year:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    const-string v3, "yyyy"

    invoke-static {v2, v3, v1}, Lcom/nettv/livestore/utils/Utils;->formateDateFromstring(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_duration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_genre:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfo;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfo;->getCover_big()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    .line 12
    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieInfo;->getCover_big()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movie_bg:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 14
    :cond_c3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfo;->getYoutube_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_da

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f1

    .line 16
    :cond_da
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 19
    :goto_f1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfo;->getTmdb_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_110

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieInfo;->getTmdb_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->tmdb_id:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getCastModels()V

    :cond_110
    return-void
.end method

.method private setNoDescriptionData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_rating:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_genre:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_year:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_added:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    return-void
.end method

.method private showExternalPlayerDialog(I)V
    .registers 7

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getInstall_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getWant_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;II)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE$1:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private watchYoutubeVideo(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_3c

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getYoutubePackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$YoutubePackageInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    iget-object p1, v0, Lcom/nettv/livestore/utils/Utils$YoutubePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5f

    :cond_31
    const/4 p1, 0x0

    const-string v0, "Please install youtube App."

    .line 7
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5f

    .line 8
    :cond_3c
    :try_start_3c
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.youtube:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10808000

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5f} :catch_5f

    :catch_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f2

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_f8

    goto/16 :goto_f2

    .line 3
    :pswitch_13
    sget-object v0, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_23

    goto/16 :goto_f2

    .line 4
    :cond_23
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 5
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 8
    :pswitch_3b
    sget-object v0, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_4e

    if-eq v0, v2, :cond_4d

    goto/16 :goto_f2

    :cond_4d
    return v4

    .line 9
    :cond_4e
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 10
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->first:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 13
    :pswitch_66
    sget-object v0, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_8a

    if-eq v0, v1, :cond_89

    if-eq v0, v2, :cond_7a

    goto/16 :goto_f2

    .line 14
    :cond_7a
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_89
    return v4

    .line 17
    :cond_8a
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->castModels:Ljava/util/List;

    if-eqz p1, :cond_b0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b0

    .line 18
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->third:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFull()V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_b0
    return v4

    .line 24
    :pswitch_b1
    sget-object v0, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v4, :cond_e2

    if-eq v0, v1, :cond_c5

    if-eq v0, v2, :cond_c4

    goto :goto_f2

    :cond_c4
    return v4

    .line 25
    :cond_c5
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFull()V

    return v4

    .line 31
    :cond_e2
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->first:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 34
    :cond_f2
    :goto_f2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_f8
    .packed-switch 0x13
        :pswitch_b1
        :pswitch_66
        :pswitch_3b
        :pswitch_13
    .end packed-switch
.end method

.method public getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_196

    goto/16 :goto_195

    .line 2
    :sswitch_c
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    if-eqz p1, :cond_35

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieInfoResponse;->getInfo()Lcom/nettv/livestore/models/MovieInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieInfo;->getYoutube_trailer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_26

    .line 5
    :cond_21
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->watchYoutubeVideo(Ljava/lang/String;)V

    goto/16 :goto_195

    .line 6
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_195

    .line 7
    :cond_35
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_195

    .line 8
    :sswitch_44
    sget-object p1, Lcom/nettv/livestore/activities/MovieInfoActivity$4;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getFocusStatus()Lcom/nettv/livestore/apps/FocusStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v2, :cond_7a

    if-eq p1, v0, :cond_56

    goto/16 :goto_195

    .line 9
    :cond_56
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    const-string v0, "Show Cast"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFull()V

    return-void

    .line 16
    :cond_7a
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->castModels:Ljava/util/List;

    if-eqz p1, :cond_a7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a7

    .line 17
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->third:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setFull()V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_show_cast:Landroid/widget/Button;

    const-string v0, "Hide Cast"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->cast_list:Lcom/nettv/livestore/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_a7
    return-void

    .line 24
    :sswitch_a8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceExternalPlayer()I

    move-result p1

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 26
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->vod_url:Ljava/lang/String;

    goto :goto_e3

    .line 27
    :cond_bf
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v6}, Lcom/nettv/livestore/models/MovieModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/nettv/livestore/helper/GetSharedInfo;->getMovieUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->vod_url:Ljava/lang/String;

    :goto_e3
    if-eqz p1, :cond_119

    if-eq p1, v2, :cond_101

    if-eq p1, v0, :cond_eb

    goto/16 :goto_195

    .line 28
    :cond_eb
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getMXPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$MXPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_fc

    .line 29
    iget-object v0, p1, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->activityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->vod_url:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->externalMXplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_195

    .line 30
    :cond_fc
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->showExternalPlayerDialog(I)V

    goto/16 :goto_195

    .line 31
    :cond_101
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getVlcPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$VLCPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_114

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->vod_url:Ljava/lang/String;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->externalvlcplayer(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_195

    .line 33
    :cond_114
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->showExternalPlayerDialog(I)V

    goto/16 :goto_195

    .line 34
    :cond_119
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->playMovie()V

    goto/16 :goto_195

    .line 35
    :sswitch_11e
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->category_name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->checkAdultMovies(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_134

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getCant_add_this_movie()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_195

    .line 37
    :cond_134
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->is_fav:Z

    if-eqz p1, :cond_165

    .line 38
    iput-boolean v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->is_fav:Z

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0602f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 41
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/MovieInfoActivity;I)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToFavMovie(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_195

    .line 42
    :cond_165
    iput-boolean v2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->is_fav:Z

    .line 43
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/MovieInfoActivity;I)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/nettv/livestore/helper/RealmController;->addToFavMovie(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_195

    .line 46
    :sswitch_192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_195
    return-void

    :sswitch_data_196
    .sparse-switch
        0x7f0b0088 -> :sswitch_192
        0x7f0b008d -> :sswitch_11e
        0x7f0b0098 -> :sswitch_a8
        0x7f0b00a0 -> :sswitch_44
        0x7f0b00a3 -> :sswitch_c
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002a

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "stream_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    const-string v0, "name"

    if-eqz p1, :cond_45

    .line 9
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieByName(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    goto :goto_6c

    .line 10
    :cond_45
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 11
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieByName(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    goto :goto_6c

    .line 12
    :cond_60
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieById(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    .line 13
    :goto_6c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->category_name:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->stream_id:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->isIs_favorite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->is_fav:Z

    if-eqz p1, :cond_a3

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_bb

    .line 18
    :cond_a3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 20
    :goto_bb
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800a9

    .line 21
    :try_start_c9
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    .line 22
    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movie_logo:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e2} :catch_e3

    goto :goto_fe

    .line 25
    :catch_e3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->movie_logo:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 29
    :goto_fe
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_10a

    .line 30
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->getMovieInfo()V

    goto :goto_10d

    .line 31
    :cond_10a
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->setNoDescriptionData()V

    .line 32
    :goto_10d
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setFocusStatus(Lcom/nettv/livestore/apps/FocusStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return-void
.end method

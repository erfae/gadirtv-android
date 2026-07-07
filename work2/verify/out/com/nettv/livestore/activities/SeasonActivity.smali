.class public Lcom/nettv/livestore/activities/SeasonActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeasonActivity.java"


# instance fields
.field public blurView:Leightbitlab/com/blurview/BlurView;

.field public currentSeries:Lcom/nettv/livestore/models/SeriesModel;

.field public episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

.field public episodeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public episode_pos:I

.field public image_back:Landroid/widget/ImageView;

.field public image_bg:Landroid/widget/ImageView;

.field public image_url:Ljava/lang/String;

.field public pre_season_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

.field public seasonModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation
.end field

.field public season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public season_name:Ljava/lang/String;

.field public season_pos:I

.field public series_id:Ljava/lang/String;

.field public series_name:Ljava/lang/String;

.field public txt_name:Landroid/widget/TextView;

.field public vod_url:Ljava/lang/String;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$0sg1i8gevrvl3AVMOSlgdTOIi7g(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$showExternalPlayerDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4hgvMEB9CLCU0NGz8c6CTCqGiKM(Lcom/nettv/livestore/activities/SeasonActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$getSomeSeriesInfo$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4omiG8QaVg0_aTx4MNwCYVE3Nww(Lcom/nettv/livestore/activities/SeasonActivity;Lcom/android/volley/VolleyError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$getSomeSeriesInfo$4(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YcG3CgNFjGLacYKJGsSyvGg8Ms(Lcom/nettv/livestore/activities/SeasonActivity;Lcom/nettv/livestore/models/Season;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/Season;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PVKC4HDc_1vQgMVi2REL9SnroeQ(Lcom/nettv/livestore/activities/SeasonActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$e_ELIqIUelhlUURTtWW997ByAhI(Lcom/nettv/livestore/activities/SeasonActivity;ILandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$showExternalPlayerDialog$6(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jMGh7RTm-T7eTg5S5QEi34OvYW0(Lcom/nettv/livestore/activities/SeasonActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$initView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vASCRXCt_85LHQ7p0vSxQa8Xzao(Lcom/nettv/livestore/activities/SeasonActivity;Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeasonActivity;->lambda$onCreate$2(Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

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

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->vod_url:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/SeasonActivity;Lcom/nettv/livestore/models/InfoSerie;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->getSeasonFromInfoSerie(Lcom/nettv/livestore/models/InfoSerie;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/SeasonActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeasonActivity;->getSomeSeriesInfo()V

    return-void
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
    .registers 7

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

.method private getEpisodesFromInfoSerie(Lcom/nettv/livestore/models/InfoSerie;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/InfoSerie;",
            "I)",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/InfoSerie;->getEpisodes()Lcom/nettv/livestore/models/ListEpisode;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/models/ListEpisode;->getEpisodesBySaison(I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_84

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/Episode;

    .line 5
    new-instance v2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-direct {v2}, Lcom/nettv/livestore/models/EpisodeModel;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getSeason()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setSeason(I)V

    .line 8
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getEpisode_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setEpisode_num(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getContainer_extension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setContainer_extension(Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-direct {v3}, Lcom/nettv/livestore/models/EpisodeInfoModel;-><init>()V

    .line 12
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 13
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getInfo()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 14
    :try_start_56
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Episode;->getInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/nettv/livestore/models/Info;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/Info;

    .line 15
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Info;->getTmdb_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setTmdb_id(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Info;->getMovie_image()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setMovie_image(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/nettv/livestore/models/Info;->getPlot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setPlot(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7b} :catch_7b

    .line 18
    :catch_7b
    :cond_7b
    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EpisodeModel;->setInfo(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_84
    return-object v0
.end method

.method private getSeasonByKey(Ljava/util/List;Ljava/lang/String;)Lcom/nettv/livestore/models/Season;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nettv/livestore/models/Season;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/Season;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/models/Season;->getSeason_number()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 3
    :cond_1f
    new-instance p1, Lcom/nettv/livestore/models/Season;

    const-string v0, "Season  "

    .line 4
    invoke-static {v0, p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, ""

    invoke-direct {p1, v0, p2, v1}, Lcom/nettv/livestore/models/Season;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method private getSeasonFromInfoSerie(Lcom/nettv/livestore/models/InfoSerie;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/InfoSerie;->getEpisodes()Lcom/nettv/livestore/models/ListEpisode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/ListEpisode;->getListSerieDisp(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ae

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/Season;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/Season;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/Season;->getSeason_number()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/nettv/livestore/activities/SeasonActivity;->getEpisodesFromInfoSerie(Lcom/nettv/livestore/models/InfoSerie;I)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/Season;->setEpisodeModels(Ljava/util/List;)V

    .line 8
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 9
    :cond_42
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSeasonList(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeason_pos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_5d

    .line 12
    iput v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 13
    :cond_5d
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/Season;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/Season;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->setEpisodeModels(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getEpisode_pos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_94

    .line 17
    iput v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 18
    :cond_94
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_ae
    return-void
.end method

.method private getSeriesInfo()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/nettv/livestore/remote/APIService;->get_series_info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/SeasonActivity$1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/SeasonActivity$1;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getSomeSeriesInfo()V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/player_api.php?action=get_series_info&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&series_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;)V

    new-instance v4, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;)V

    const/4 v5, 0x0

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private initView()V
    .registers 7

    const v0, 0x7f0b01c5

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    const v0, 0x7f0b01c7

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_bg:Landroid/widget/ImageView;

    const v0, 0x7f0b0072

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leightbitlab/com/blurview/BlurView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v1

    .line 8
    invoke-interface {v1, v0}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-direct {v1, p0}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAlgorithm(Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 10
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v0, v2}, Leightbitlab/com/blurview/BlurViewFacade;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    .line 13
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setHasFixedTransformationMatrix(Z)Leightbitlab/com/blurview/BlurViewFacade;

    const v0, 0x7f0b0325

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0125

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b03e4

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b02e2

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 18
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_ce

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 21
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/SeasonActivity$3;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/SeasonActivity$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    aput-object v3, v0, v2

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Lcom/nettv/livestore/activities/SeasonActivity$4;

    invoke-direct {v3, v0}, Lcom/nettv/livestore/activities/SeasonActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_ec

    .line 26
    :cond_ce
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 30
    :goto_ec
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private synthetic lambda$getSomeSeriesInfo$3(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "info"

    const-string v3, "episode error"

    const/4 v4, 0x1

    .line 1
    :try_start_7
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "seasons"

    .line 3
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/nettv/livestore/activities/SeasonActivity$2;

    invoke-direct {v9}, Lcom/nettv/livestore/activities/SeasonActivity$2;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "episodes"

    .line 6
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    .line 7
    :goto_3f
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_cd

    .line 8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v9, v11}, Lcom/nettv/livestore/activities/SeasonActivity;->getSeasonByKey(Ljava/util/List;Ljava/lang/String;)Lcom/nettv/livestore/models/Season;

    move-result-object v9
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_142

    .line 9
    :try_start_54
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 11
    :goto_5e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_62} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_62} :catch_142

    if-ge v12, v13, :cond_bd

    .line 12
    :try_start_64
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 13
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v6, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nettv/livestore/models/EpisodeModel;

    .line 14
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_78} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_78} :catch_142

    if-eqz v15, :cond_b3

    .line 15
    :try_start_7a
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 16
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-class v15, Lcom/nettv/livestore/models/Info;

    invoke-virtual {v6, v13, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nettv/livestore/models/Info;

    .line 17
    new-instance v15, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-direct {v15}, Lcom/nettv/livestore/models/EpisodeInfoModel;-><init>()V

    .line 18
    invoke-virtual {v13}, Lcom/nettv/livestore/models/Info;->getMovie_image()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setMovie_image(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v13}, Lcom/nettv/livestore/models/Info;->getPlot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setPlot(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v13}, Lcom/nettv/livestore/models/Info;->getTmdb_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/nettv/livestore/models/EpisodeInfoModel;->setTmdb_id(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v14, v15}, Lcom/nettv/livestore/models/EpisodeModel;->setInfo(Lcom/nettv/livestore/models/EpisodeInfoModel;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ab} :catch_142

    goto :goto_b3

    :catch_ac
    :try_start_ac
    const-string v5, "info error"

    const-string v13, "info _error"

    .line 22
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_b3
    :goto_b3
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b6} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b6} :catch_142

    goto :goto_ba

    .line 24
    :catch_b7
    :try_start_b7
    invoke-static {v3, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    add-int/lit8 v12, v12, 0x1

    goto :goto_5e

    .line 25
    :cond_bd
    invoke-virtual {v9, v11}, Lcom/nettv/livestore/models/Season;->setEpisodeModels(Ljava/util/List;)V
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_c0} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c0} :catch_142

    goto :goto_c5

    :catch_c1
    move-exception v0

    .line 26
    :try_start_c2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_c5
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v10

    goto/16 :goto_3f

    .line 28
    :cond_cd
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15a

    .line 29
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget-object v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSeasonList(Ljava/util/List;)V

    .line 30
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getSeason_pos()I

    move-result v0

    iput v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 31
    iget-object v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-le v0, v2, :cond_f0

    const/4 v2, 0x0

    .line 32
    iput v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 33
    :cond_f0
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/Season;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    .line 34
    iget-object v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    iget-object v3, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v5, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/Season;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->setEpisodeModels(Ljava/util/List;Ljava/lang/String;)V

    .line 35
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getEpisode_pos()I

    move-result v0

    iput v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 36
    iget-object v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-le v0, v2, :cond_127

    const/4 v2, 0x0

    .line 37
    iput v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 38
    :cond_127
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 39
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 40
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v2, v1, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 41
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_141} :catch_142

    goto :goto_15a

    .line 42
    :catch_142
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 43
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 44
    iget-object v0, v1, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_15a
    :goto_15a
    return-void
.end method

.method private synthetic lambda$getSomeSeriesInfo$4(Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$initView$5(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/Season;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_31

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_name:Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setFocusDisable(IZ)V

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    .line 6
    iget-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_name:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->setEpisodeModels(Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 9
    :cond_31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_pos:I

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getResentSeriesNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceRecentSeriesNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e0

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    const/4 v2, 0x1

    iget v3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/nettv/livestore/helper/RealmController;->addToRecentSeries(Ljava/lang/String;ZIILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceExternalPlayer()I

    move-result p3

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 6
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->vod_url:Ljava/lang/String;

    goto :goto_56

    .line 7
    :cond_36
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getContainer_extension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nettv/livestore/helper/GetSharedInfo;->getEpisodeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->vod_url:Ljava/lang/String;

    :goto_56
    if-eqz p3, :cond_88

    const/4 p2, 0x1

    if-eq p3, p2, :cond_74

    const/4 p1, 0x2

    if-eq p3, p1, :cond_60

    goto/16 :goto_e0

    .line 8
    :cond_60
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getMXPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$MXPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_70

    .line 9
    iget-object p1, p2, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->activityName:Ljava/lang/String;

    iget-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->vod_url:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SeasonActivity;->externalMXplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 10
    :cond_70
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->showExternalPlayerDialog(I)V

    goto :goto_e0

    .line 11
    :cond_74
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getVlcPackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$VLCPackageInfo;

    move-result-object p3

    if-eqz p3, :cond_84

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->vod_url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/nettv/livestore/activities/SeasonActivity;->externalvlcplayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 13
    :cond_84
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/SeasonActivity;->showExternalPlayerDialog(I)V

    goto :goto_e0

    .line 14
    :cond_88
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_97

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceEpisodeModels(Ljava/util/List;)V

    .line 16
    :cond_97
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_ac

    .line 18
    :cond_a5
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    :goto_ac
    iget p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    const-string v0, "season_pos"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "position"

    .line 20
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    const-string p3, "series_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget p3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/Season;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "season_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object p2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/SeriesModel;->getTmdb()Ljava/lang/String;

    move-result-object p2

    const-string p3, "tmdb_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_e0
    :goto_e0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$showExternalPlayerDialog$6(ILandroid/content/DialogInterface;I)V
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

.method private static synthetic lambda$showExternalPlayerDialog$7(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private showExternalPlayerDialog(I)V
    .registers 7

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getInstall_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getWant_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, p1, v4}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;II)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE$3:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_96

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_9c

    goto/16 :goto_96

    .line 3
    :pswitch_11
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setFocusDisable(IZ)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 7
    :cond_2d
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 10
    :pswitch_40
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 13
    :pswitch_55
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 16
    :pswitch_68
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 17
    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_pos:I

    if-nez v0, :cond_7f

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 20
    :cond_7f
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 21
    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    if-nez v0, :cond_96

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 24
    :cond_96
    :goto_96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_9c
    .packed-switch 0x13
        :pswitch_68
        :pswitch_55
        :pswitch_40
        :pswitch_11
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002f

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeasonActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_url:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "series_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "series_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 11
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesByName(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    goto :goto_76

    .line 12
    :cond_55
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 13
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesByName(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    goto :goto_76

    .line 14
    :cond_6a
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesById(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    .line 15
    :goto_76
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_id:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance p1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;I)V

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    new-instance p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_name:Ljava/lang/String;

    new-instance v8, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0}, Lcom/nettv/livestore/activities/SeasonActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/SeasonActivity;I)V

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    .line 20
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_140

    .line 22
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->series_name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/helper/RealmController;->getSeasonBySeriesName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    if-eqz p1, :cond_143

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_143

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeason_pos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_e8

    .line 26
    iput v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    .line 27
    :cond_e8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSeasonList(Ljava/util/List;)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/Season;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    .line 29
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeAdapter:Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    iget-object v3, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonModelList:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/Season;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->setEpisodeModels(Ljava/util/List;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getEpisode_pos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 31
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episodeModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_125

    .line 32
    iput v2, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    .line 33
    :cond_125
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->episode_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 34
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->seasonAdapter:Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->pre_season_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->season_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_143

    .line 37
    :cond_140
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeasonActivity;->getSeriesInfo()V

    .line 38
    :cond_143
    :goto_143
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_url:Ljava/lang/String;

    if-eqz p1, :cond_15c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15c

    .line 39
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_url:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeasonActivity;->image_bg:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_15c
    return-void
.end method

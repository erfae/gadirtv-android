.class public Lcom/nettv/livestore/helper/RealmController;
.super Ljava/lang/Object;
.source "RealmController.java"


# static fields
.field private static episodeModelHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public static instance:Lcom/nettv/livestore/helper/RealmController;


# instance fields
.field public realm:Lio/realm/Realm;


# direct methods
.method public static synthetic $r8$lambda$3wDOM2Bqh8DU2Z70R-oVREg3Bd8(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToLockChannels$1(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EsK7oPP5qmKqs3DUXkREQkMjJOY(Ljava/lang/String;ZJILjava/lang/String;Lio/realm/Realm;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/nettv/livestore/helper/RealmController;->lambda$addPositionToMovies$4(Ljava/lang/String;ZJILjava/lang/String;Lio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q0FOqhvgOi4yXGPouwbh3hNOkHA(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToFavSeries$5(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wob_QkswlA5WYN7EkuE6QaDuvdo(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToFavChannels$0(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLX_sGZFOzksLpS_cmk2f7cxIxI(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToRecentChannels$2(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pyw_5cWYmsOBbHrGJ-A1NYOuJaU(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToFavMovie$3(Ljava/lang/String;ZLio/realm/Realm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2oCvdjowoy7V8BOGwPqYQWmvQg(Ljava/lang/String;ZIILio/realm/Realm;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/helper/RealmController;->lambda$addToRecentSeries$6(Ljava/lang/String;ZIILio/realm/Realm;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v1, "MTV.realm"

    .line 3
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread(Z)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    return-void
.end method

.method private static addEpisodeToSeason(Lcom/nettv/livestore/models/EpisodeModel;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->getSeason_name()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nettv/livestore/helper/RealmController;->episodeModelHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_13

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_13
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object p0, Lcom/nettv/livestore/helper/RealmController;->episodeModelHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getSeasonFromEpisodes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nettv/livestore/helper/RealmController;->episodeModelHashMap:Ljava/util/HashMap;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    .line 3
    invoke-static {v0}, Lcom/nettv/livestore/helper/RealmController;->addEpisodeToSeason(Lcom/nettv/livestore/models/EpisodeModel;)V

    goto :goto_b

    .line 4
    :cond_1b
    new-instance p0, Ljava/util/TreeSet;

    sget-object v0, Lcom/nettv/livestore/helper/RealmController;->episodeModelHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/nettv/livestore/helper/RealmController;->episodeModelHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2f

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2f

    .line 9
    new-instance v3, Lcom/nettv/livestore/models/Season;

    invoke-direct {v3}, Lcom/nettv/livestore/models/Season;-><init>()V

    .line 10
    invoke-virtual {v3, v1}, Lcom/nettv/livestore/models/Season;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EpisodeModel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nettv/livestore/models/Season;->setCategory_name(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v2}, Lcom/nettv/livestore/models/Season;->setEpisodeModels(Ljava/util/List;)V

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_68
    return-object v0
.end method

.method private static synthetic lambda$addPositionToMovies$4(Ljava/lang/String;ZJILjava/lang/String;Lio/realm/Realm;)V
    .registers 9

    .line 1
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    const-string v1, "name"

    .line 2
    invoke-static {p6, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

    if-eqz p0, :cond_18

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->setIs_recent(Z)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/nettv/livestore/models/MovieModel;->setTime(J)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/nettv/livestore/models/MovieModel;->setPro(I)V

    .line 7
    invoke-virtual {p0, p5}, Lcom/nettv/livestore/models/MovieModel;->setTmdb_id(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method private static synthetic lambda$addToFavChannels$0(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    const-string v1, "name"

    .line 2
    invoke-static {p2, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p0, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->setIs_favorite(Z)V

    :cond_f
    return-void
.end method

.method private static synthetic lambda$addToFavMovie$3(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    const-string v1, "name"

    .line 2
    invoke-static {p2, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

    if-eqz p0, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->setIs_favorite(Z)V

    :cond_f
    return-void
.end method

.method private static synthetic lambda$addToFavSeries$5(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    const-string v1, "name"

    .line 2
    invoke-static {p2, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/SeriesModel;

    if-eqz p0, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->setIs_favorite(Z)V

    :cond_f
    return-void
.end method

.method private static synthetic lambda$addToLockChannels$1(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    const-string v1, "name"

    .line 2
    invoke-static {p2, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p0, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->setIs_locked(Z)V

    :cond_f
    return-void
.end method

.method private static synthetic lambda$addToRecentChannels$2(Ljava/lang/String;ZLio/realm/Realm;)V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    const-string v1, "name"

    .line 2
    invoke-static {p2, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p0, :cond_19

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->setIs_recent(Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/models/EPGChannel;->setRecent_pos(J)V

    :cond_19
    return-void
.end method

.method private static synthetic lambda$addToRecentSeries$6(Ljava/lang/String;ZIILio/realm/Realm;)V
    .registers 7

    .line 1
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    const-string v1, "name"

    .line 2
    invoke-static {p4, v0, v1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/nettv/livestore/models/SeriesModel;

    if-eqz p0, :cond_15

    .line 4
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->setIs_recent(Z)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/models/SeriesModel;->setSeason_pos(I)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/nettv/livestore/models/SeriesModel;->setEpisode_pos(I)V

    :cond_15
    return-void
.end method

.method public static with()Lcom/nettv/livestore/helper/RealmController;
    .registers 1

    .line 1
    sget-object v0, Lcom/nettv/livestore/helper/RealmController;->instance:Lcom/nettv/livestore/helper/RealmController;

    if-nez v0, :cond_12

    .line 2
    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/nettv/livestore/helper/RealmController;

    invoke-direct {v0}, Lcom/nettv/livestore/helper/RealmController;-><init>()V

    sput-object v0, Lcom/nettv/livestore/helper/RealmController;->instance:Lcom/nettv/livestore/helper/RealmController;

    .line 4
    :cond_12
    sget-object v0, Lcom/nettv/livestore/helper/RealmController;->instance:Lcom/nettv/livestore/helper/RealmController;

    return-object v0
.end method


# virtual methods
.method public addPositionToMovies(Ljava/lang/String;Ljava/lang/String;ZJILcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 18

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v9, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;

    move-object v2, v9

    move-object v3, p1

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ZJILjava/lang/String;)V

    .line 2
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    move-object/from16 v4, p7

    invoke-direct {v2, v4, v3}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v1, v9, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZI)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToFavMovie(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p2, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZI)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 p2, 0x5

    invoke-direct {p1, p3, p2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToFavSeries(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZI)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p3, p2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToLockChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p2, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZI)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p3, p2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZI)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public addToRecentSeries(Ljava/lang/String;ZIILcom/nettv/livestore/helper/RealmChangeItemListener;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ZII)V

    .line 2
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p5, p2}, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public getAllEpgChannelSize()I
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    return v0
.end method

.method public getChannelByNumber(I)Lcom/nettv/livestore/models/EPGChannel;
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    return-object p1
.end method

.method public getContainMoviesByTitle(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    return-object p1
.end method

.method public getEpgChannelByName(Ljava/lang/String;)Lcom/nettv/livestore/models/EPGChannel;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    const-string v2, "name"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    return-object p1
.end method

.method public getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v1, p2, v0}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getEpisodesBySeason(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "series_name"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "season_name"

    invoke-virtual {p1, v0, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public getFavChannelNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_favorite"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public getFavMovieNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_favorite"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/MovieModel;

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public getFavSeriesNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_favorite"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/SeriesModel;

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/String;",
            "ZI)",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const-string v0, "category_name"

    goto :goto_7

    :cond_5
    const-string v0, "category_id"

    :goto_7
    const/4 v1, 0x1

    if-eqz p3, :cond_26

    .line 1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "!@#%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v1

    goto :goto_2a

    :cond_21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_2a
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fav_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "name"

    if-eqz v2, :cond_a2

    const-string p1, "is_favorite"

    if-eq p4, v1, :cond_7f

    if-eq p4, v3, :cond_5c

    .line 3
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 4
    :cond_5c
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 5
    :cond_7f
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 6
    :cond_a2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "resume_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p4, "is_recent"

    invoke-virtual {p1, p4, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const-string p3, "recent_pos"

    invoke-virtual {p1, p3, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 8
    :cond_d5
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "all_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    if-eq p4, v1, :cond_119

    if-eq p4, v3, :cond_fc

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 10
    :cond_fc
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 11
    :cond_119
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 12
    :cond_136
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "lock_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ab

    const-string p1, "is_locked"

    if-eq p4, v1, :cond_188

    if-eq p4, v3, :cond_165

    .line 13
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 14
    :cond_165
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 15
    :cond_188
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    :cond_1ab
    if-eq p4, v1, :cond_1eb

    if-eq p4, v3, :cond_1ca

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1ca
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1eb
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v4, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelsByKey(Ljava/lang/String;Z)Lio/realm/RealmResults;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    if-eqz p2, :cond_3d

    .line 1
    iget-object p2, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    const-string v0, "category_name"

    const-string v1, "xxx"

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    const-string v1, "adult"

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    const-string v1, "porn"

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 2
    :cond_3d
    iget-object p2, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p2, v0, p1, v1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_63

    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_65

    :cond_63
    const-string p2, ""

    :goto_65
    const-string v0, "category_id"

    invoke-virtual {p1, v0, p2}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getLockChannelNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_locked"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public getMovieById(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    const-string v2, "stream_id"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    return-object p1
.end method

.method public getMovieByName(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    const-string v2, "name"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    return-object p1
.end method

.method public getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/String;",
            "ZI)",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const-string v0, "category_name"

    goto :goto_7

    :cond_5
    const-string v0, "category_id"

    :goto_7
    const/4 v1, 0x1

    if-eqz p3, :cond_26

    .line 1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "!@#%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v1

    goto :goto_2a

    :cond_21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_2a
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resume_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "num"

    const-string v4, "rating"

    const-string v5, "added"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "name"

    if-eqz v2, :cond_f6

    const-string p1, "is_recent"

    if-eq p4, v1, :cond_d3

    if-eq p4, v8, :cond_b0

    if-eq p4, v7, :cond_8f

    if-eq p4, v6, :cond_6c

    .line 3
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 4
    :cond_6c
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 5
    :cond_8f
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 6
    :cond_b0
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 7
    :cond_d3
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 8
    :cond_f6
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "all_id"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_197

    if-eq p4, v1, :cond_17a

    if-eq p4, v8, :cond_15d

    if-eq p4, v7, :cond_142

    if-eq p4, v6, :cond_125

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 10
    :cond_125
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 11
    :cond_142
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 12
    :cond_15d
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 13
    :cond_17a
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 14
    :cond_197
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "fav_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_258

    const-string p1, "is_favorite"

    if-eq p4, v1, :cond_235

    if-eq p4, v8, :cond_212

    if-eq p4, v7, :cond_1f1

    if-eq p4, v6, :cond_1ce

    .line 15
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1ce
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1f1
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 18
    :cond_212
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 19
    :cond_235
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    :cond_258
    if-eq p4, v1, :cond_2e0

    if-eq p4, v8, :cond_2bf

    if-eq p4, v7, :cond_2a0

    if-eq p4, v6, :cond_27f

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 21
    :cond_27f
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2a0
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2bf
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2e0
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getMoviesByKey(Ljava/lang/String;Z)Lio/realm/RealmResults;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation

    const-string v0, "category_id"

    if-eqz p2, :cond_7

    const-string v1, "category_name"

    goto :goto_8

    :cond_7
    move-object v1, v0

    :goto_8
    const-string v2, "name"

    if-eqz p2, :cond_43

    .line 1
    iget-object p2, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    const-string v0, "xxx"

    invoke-virtual {p1, v1, v0, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "adult"

    invoke-virtual {p1, v1, v0, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "porn"

    invoke-virtual {p1, v1, v0, p2}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 2
    :cond_43
    iget-object p2, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p2, v2, p1, v1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_69

    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_6b

    :cond_69
    const-string p2, ""

    :goto_6b
    invoke-virtual {p1, v0, p2}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getRecentChannelNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_recent"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public getResentSeriesNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeSeriesModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_recent"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/SeriesModel;

    .line 4
    new-instance v3, Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-direct {v3}, Lcom/nettv/livestore/models/ResumeSeriesModel;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/ResumeSeriesModel;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getSeason_pos()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/ResumeSeriesModel;->setSeason_pos(I)V

    .line 7
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getEpisode_pos()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/nettv/livestore/models/ResumeSeriesModel;->setEpisode_pos(I)V

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_47
    return-object v0
.end method

.method public getResumeMovies()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "is_recent"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/MovieModel;

    .line 4
    new-instance v3, Lcom/nettv/livestore/models/ResumeModel;

    invoke-direct {v3}, Lcom/nettv/livestore/models/ResumeModel;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/ResumeModel;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getPro()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nettv/livestore/models/ResumeModel;->setPro(I)V

    .line 7
    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nettv/livestore/models/ResumeModel;->setLast_position(J)V

    .line 8
    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nettv/livestore/models/ResumeModel;->setTmdb_id(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4e
    return-object v0
.end method

.method public getSeasonBySeriesName(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "series_name"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/nettv/livestore/helper/RealmController;->getSeasonFromEpisodes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSeriesById(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    const-string v2, "series_id"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/SeriesModel;

    return-object p1
.end method

.method public getSeriesByKey(Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    const-string v2, "name"

    invoke-virtual {v0, v2, p1, v1}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getSeriesByName(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    const-string v2, "name"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/SeriesModel;

    return-object p1
.end method

.method public getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/String;",
            "ZI)",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const-string v0, "category_name"

    goto :goto_7

    :cond_5
    const-string v0, "category_id"

    :goto_7
    const/4 v1, 0x1

    if-eqz p3, :cond_26

    .line 1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "!@#%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v1

    goto :goto_2a

    :cond_21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_2a
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "num"

    const-string v4, "rating"

    const-string v5, "last_modified"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "name"

    if-eqz v2, :cond_d6

    if-eq p4, v1, :cond_b9

    if-eq p4, v8, :cond_9c

    if-eq p4, v7, :cond_81

    if-eq p4, v6, :cond_64

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 4
    :cond_64
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 5
    :cond_81
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 6
    :cond_9c
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 7
    :cond_b9
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 8
    :cond_d6
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "fav_id"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_197

    const-string p1, "is_favorite"

    if-eq p4, v1, :cond_174

    if-eq p4, v8, :cond_151

    if-eq p4, v7, :cond_130

    if-eq p4, v6, :cond_10d

    .line 9
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 10
    :cond_10d
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 11
    :cond_130
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 12
    :cond_151
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 13
    :cond_174
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 14
    :cond_197
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "resume_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_258

    const-string p1, "is_recent"

    if-eq p4, v1, :cond_235

    if-eq p4, v8, :cond_212

    if-eq p4, v7, :cond_1f1

    if-eq p4, v6, :cond_1ce

    .line 15
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1ce
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1f1
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 18
    :cond_212
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 19
    :cond_235
    iget-object p3, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    :cond_258
    if-eq p4, v1, :cond_2e0

    if-eq p4, v8, :cond_2bf

    if-eq p4, v7, :cond_2a0

    if-eq p4, v6, :cond_27f

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 21
    :cond_27f
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v9, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2a0
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2bf
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v4, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2e0
    iget-object p1, p0, Lcom/nettv/livestore/helper/RealmController;->realm:Lio/realm/Realm;

    const-class p4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    invoke-virtual {p1, v9, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object p2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p1, v5, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

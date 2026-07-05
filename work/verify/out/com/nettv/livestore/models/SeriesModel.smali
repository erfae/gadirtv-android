.class public Lcom/nettv/livestore/models/SeriesModel;
.super Lio/realm/RealmObject;
.source "SeriesModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;


# instance fields
.field private cast:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cast"
    .end annotation
.end field

.field private category_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private category_name:Ljava/lang/String;

.field private director:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "director"
    .end annotation
.end field

.field private episode_pos:I

.field private genre:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genre"
    .end annotation
.end field

.field private is_favorite:Z

.field private is_recent:Z

.field private is_watched:Z

.field private last_modified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_modified"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private num:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "num"
    .end annotation
.end field

.field private plot:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plot"
    .end annotation
.end field

.field private rating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private rating_5based:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating_5based"
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releaseDate"
    .end annotation
.end field

.field private season_pos:I

.field private series_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "series_id"
    .end annotation
.end field

.field private stream_icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field private stream_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = ""
    .end annotation
.end field

.field public tmdb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmdb"
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private youtube:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "youtube_trailer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$season_pos(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$episode_pos(I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_watched(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_favorite(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_recent(Z)V

    return-void
.end method


# virtual methods
.method public getCast()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$cast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$cast()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$director()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisode_pos()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$episode_pos()I

    move-result v0

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$genre()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$genre()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getLast_modified()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    const-string v0, "0"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNum()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$num()I

    move-result v0

    return v0
.end method

.method public getPlot()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()F
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1d

    .line 2
    :cond_12
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1d

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :catch_1d
    :cond_1d
    :goto_1d
    return v0
.end method

.method public getRating_5based()F
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$rating_5based()F

    move-result v0

    return v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getSeason_pos()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$season_pos()I

    move-result v0

    return v0
.end method

.method public getSeries_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$series_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$series_id()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_type()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTmdb()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYoutube()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIs_favorite()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public isIs_recent()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$is_recent()Z

    move-result v0

    return v0
.end method

.method public isIs_watched()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/SeriesModel;->realmGet$is_watched()Z

    move-result v0

    return v0
.end method

.method public realmGet$cast()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->cast:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$director()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->director:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$episode_pos()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SeriesModel;->episode_pos:I

    return v0
.end method

.method public realmGet$genre()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/SeriesModel;->is_favorite:Z

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/SeriesModel;->is_recent:Z

    return v0
.end method

.method public realmGet$is_watched()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/SeriesModel;->is_watched:Z

    return v0
.end method

.method public realmGet$last_modified()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->last_modified:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$num()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SeriesModel;->num:I

    return v0
.end method

.method public realmGet$plot()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->plot:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rating_5based()F
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SeriesModel;->rating_5based:F

    return v0
.end method

.method public realmGet$releaseDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$season_pos()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SeriesModel;->season_pos:I

    return v0
.end method

.method public realmGet$series_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->series_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tmdb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->tmdb:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SeriesModel;->youtube:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$cast(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->cast:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->category_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$director(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->director:Ljava/lang/String;

    return-void
.end method

.method public realmSet$episode_pos(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/SeriesModel;->episode_pos:I

    return-void
.end method

.method public realmSet$genre(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->genre:Ljava/lang/String;

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/SeriesModel;->is_favorite:Z

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/SeriesModel;->is_recent:Z

    return-void
.end method

.method public realmSet$is_watched(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/SeriesModel;->is_watched:Z

    return-void
.end method

.method public realmSet$last_modified(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->last_modified:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$num(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/SeriesModel;->num:I

    return-void
.end method

.method public realmSet$plot(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->plot:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->rating:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rating_5based(F)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/SeriesModel;->rating_5based:F

    return-void
.end method

.method public realmSet$releaseDate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->releaseDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$season_pos(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/SeriesModel;->season_pos:I

    return-void
.end method

.method public realmSet$series_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->series_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->stream_type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tmdb(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->tmdb:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/SeriesModel;->youtube:Ljava/lang/String;

    return-void
.end method

.method public setCast(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$cast(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$category_id(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$director(Ljava/lang/String;)V

    return-void
.end method

.method public setEpisode_pos(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$episode_pos(I)V

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$genre(Ljava/lang/String;)V

    return-void
.end method

.method public setIs_favorite(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_favorite(Z)V

    return-void
.end method

.method public setIs_recent(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_recent(Z)V

    return-void
.end method

.method public setIs_watched(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$is_watched(Z)V

    return-void
.end method

.method public setLast_modified(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$last_modified(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setNum(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$num(I)V

    return-void
.end method

.method public setPlot(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$plot(Ljava/lang/String;)V

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$rating(Ljava/lang/String;)V

    return-void
.end method

.method public setRating_5based(F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$rating_5based(F)V

    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$releaseDate(Ljava/lang/String;)V

    return-void
.end method

.method public setSeason_pos(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$season_pos(I)V

    return-void
.end method

.method public setSeries_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$series_id(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_type(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$stream_type(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/SeriesModel;->realmSet$youtube(Ljava/lang/String;)V

    return-void
.end method

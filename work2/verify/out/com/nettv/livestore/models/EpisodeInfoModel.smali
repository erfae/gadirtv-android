.class public Lcom/nettv/livestore/models/EpisodeInfoModel;
.super Lio/realm/RealmObject;
.source "EpisodeInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;


# instance fields
.field private bitrate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation
.end field

.field private duration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private duration_secs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration_secs"
    .end annotation
.end field

.field private movie_image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_image"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
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

.field private releasedate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releasedate"
    .end annotation
.end field

.field public tmdb_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmdb_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$bitrate()I

    move-result v0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$duration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration_secs()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$duration_secs()I

    move-result v0

    return v0
.end method

.method public getMovie_image()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlot()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getRating()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getReleasedate()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public realmGet$bitrate()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->bitrate:I

    return v0
.end method

.method public realmGet$duration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$duration_secs()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->duration_secs:I

    return v0
.end method

.method public realmGet$movie_image()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->movie_image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$plot()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->plot:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$releasedate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->releasedate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tmdb_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$bitrate(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->bitrate:I

    return-void
.end method

.method public realmSet$duration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->duration:Ljava/lang/String;

    return-void
.end method

.method public realmSet$duration_secs(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->duration_secs:I

    return-void
.end method

.method public realmSet$movie_image(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->movie_image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$plot(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->plot:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->rating:Ljava/lang/String;

    return-void
.end method

.method public realmSet$releasedate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->releasedate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tmdb_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeInfoModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method

.method public setMovie_image(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmSet$movie_image(Ljava/lang/String;)V

    return-void
.end method

.method public setPlot(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmSet$plot(Ljava/lang/String;)V

    return-void
.end method

.method public setTmdb_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->realmSet$tmdb_id(Ljava/lang/String;)V

    return-void
.end method

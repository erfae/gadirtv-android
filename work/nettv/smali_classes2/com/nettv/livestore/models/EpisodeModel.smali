.class public Lcom/nettv/livestore/models/EpisodeModel;
.super Lio/realm/RealmObject;
.source "EpisodeModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;


# instance fields
.field private category_name:Ljava/lang/String;

.field private container_extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "container_extension"
    .end annotation
.end field

.field private episode_num:Ljava/lang/String;

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private info:Lcom/nettv/livestore/models/EpisodeInfoModel;

.field private season:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season"
    .end annotation
.end field

.field private season_name:Ljava/lang/String;

.field private series_name:Ljava/lang/String;

.field private stream_icon:Ljava/lang/String;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public static fromM3UItem(Liptv/m3u/parser/M3UItem;)Lcom/nettv/livestore/models/EpisodeModel;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/EpisodeModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "All"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/EpisodeModel;->setCategory_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/EpisodeModel;->setTitle(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const-string v6, "S\\d{2}"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nettv/livestore/models/EpisodeModel;->setSeason_name(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Lcom/nettv/livestore/models/EpisodeModel;->setSeries_name(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/EpisodeModel;->setUrl(Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nettv/livestore/models/EpisodeModel;->setStream_icon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCategory_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContainer_extension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisode_num()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v0

    return-object v0
.end method

.method public getSeason()I
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$season()I

    move-result v0

    return v0
.end method

.method public getSeason_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSeries_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$container_extension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->container_extension:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$episode_num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->episode_num:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->info:Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object v0
.end method

.method public realmGet$season()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->season:I

    return v0
.end method

.method public realmGet$season_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->season_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$series_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->series_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/EpisodeModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$container_extension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->container_extension:Ljava/lang/String;

    return-void
.end method

.method public realmSet$episode_num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->episode_num:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->info:Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-void
.end method

.method public realmSet$season(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->season:I

    return-void
.end method

.method public realmSet$season_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->season_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$series_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->series_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/EpisodeModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setContainer_extension(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$container_extension(Ljava/lang/String;)V

    return-void
.end method

.method public setEpisode_num(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$episode_num(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setInfo(Lcom/nettv/livestore/models/EpisodeInfoModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    return-void
.end method

.method public setSeason(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$season(I)V

    return-void
.end method

.method public setSeason_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$season_name(Ljava/lang/String;)V

    return-void
.end method

.method public setSeries_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$series_name(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EpisodeModel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method

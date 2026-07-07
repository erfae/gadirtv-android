.class public Lcom/nettv/livestore/models/MovieModel;
.super Lio/realm/RealmObject;
.source "MovieModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;


# instance fields
.field private added:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added"
    .end annotation
.end field

.field private category_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private category_name:Ljava/lang/String;

.field private custom_sid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_sid"
    .end annotation
.end field

.field private extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "container_extension"
    .end annotation
.end field

.field private is_favorite:Z

.field private is_locked:Z

.field private is_recent:Z

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

.field private pro:I

.field private rating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private recent_mil:J

.field private stream_icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_icon"
    .end annotation
.end field

.field private stream_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_id"
    .end annotation
.end field

.field private stream_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_type"
    .end annotation
.end field

.field private time:J

.field private tmdb_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmdb_id"
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

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
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/MovieModel;->realmSet$pro(I)V

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/models/MovieModel;->realmSet$time(J)V

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/models/MovieModel;->realmSet$recent_mil(J)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_locked(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_favorite(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_recent(Z)V

    return-void
.end method

.method public static fromM3UItem(Liptv/m3u/parser/M3UItem;)Lcom/nettv/livestore/models/MovieModel;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/MovieModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "All"

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_16
    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setCategory_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 5
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setName(Ljava/lang/String;)V

    .line 6
    :cond_2a
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 7
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "movie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_97

    const-string v2, "0"

    const-string v3, "/"

    if-eqz v1, :cond_73

    .line 9
    :try_start_4b
    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aget-object v1, v1, v3

    const-string v3, "."

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string v3, "\\."

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setStream_id(Ljava/lang/String;)V

    goto :goto_85

    .line 12
    :cond_6b
    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setStream_id(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6e} :catch_6f

    goto :goto_85

    .line 13
    :catch_6f
    :try_start_6f
    invoke-virtual {v0, v2}, Lcom/nettv/livestore/models/MovieModel;->setStream_id(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_97

    goto :goto_85

    .line 14
    :cond_73
    :try_start_73
    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/MovieModel;->setStream_id(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_82

    goto :goto_85

    .line 15
    :catch_82
    :try_start_82
    invoke-virtual {v0, v2}, Lcom/nettv/livestore/models/MovieModel;->setStream_id(Ljava/lang/String;)V

    .line 16
    :cond_85
    :goto_85
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 17
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nettv/livestore/models/MovieModel;->setStream_icon(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_96} :catch_97

    :cond_96
    return-object v0

    :catch_97
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAdded()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    const-string v0, "0"

    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "!@#%"

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getCustom_sid()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNum()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$num()I

    move-result v0

    return v0
.end method

.method public getPro()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$pro()I

    move-result v0

    return v0
.end method

.method public getRating()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecent_mil()J
    .registers 3

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$recent_mil()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getStream_type()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$time()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIs_favorite()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public isIs_locked()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$is_locked()Z

    move-result v0

    return v0
.end method

.method public isIs_recent()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/MovieModel;->realmGet$is_recent()Z

    move-result v0

    return v0
.end method

.method public realmGet$added()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->added:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$custom_sid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->custom_sid:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$extension()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/MovieModel;->is_favorite:Z

    return v0
.end method

.method public realmGet$is_locked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/MovieModel;->is_locked:Z

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/MovieModel;->is_recent:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$num()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/MovieModel;->num:I

    return v0
.end method

.method public realmGet$pro()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/MovieModel;->pro:I

    return v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$recent_mil()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/MovieModel;->recent_mil:J

    return-wide v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$time()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/MovieModel;->time:J

    return-wide v0
.end method

.method public realmGet$tmdb_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$added(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->added:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->category_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$custom_sid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->custom_sid:Ljava/lang/String;

    return-void
.end method

.method public realmSet$extension(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->extension:Ljava/lang/String;

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/MovieModel;->is_favorite:Z

    return-void
.end method

.method public realmSet$is_locked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/MovieModel;->is_locked:Z

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/MovieModel;->is_recent:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$num(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/MovieModel;->num:I

    return-void
.end method

.method public realmSet$pro(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/MovieModel;->pro:I

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->rating:Ljava/lang/String;

    return-void
.end method

.method public realmSet$recent_mil(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/MovieModel;->recent_mil:J

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->stream_type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$time(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/MovieModel;->time:J

    return-void
.end method

.method public realmSet$tmdb_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setAdded(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$added(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$category_id(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setCustom_sid(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$custom_sid(Ljava/lang/String;)V

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$extension(Ljava/lang/String;)V

    return-void
.end method

.method public setIs_favorite(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_favorite(Z)V

    return-void
.end method

.method public setIs_locked(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_locked(Z)V

    return-void
.end method

.method public setIs_recent(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$is_recent(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setNum(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$num(I)V

    return-void
.end method

.method public setPro(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$pro(I)V

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$rating(Ljava/lang/String;)V

    return-void
.end method

.method public setRecent_mil(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/models/MovieModel;->realmSet$recent_mil(J)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$stream_id(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_type(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$stream_type(Ljava/lang/String;)V

    return-void
.end method

.method public setTime(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/models/MovieModel;->realmSet$time(J)V

    return-void
.end method

.method public setTmdb_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$tmdb_id(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$type(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/MovieModel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method

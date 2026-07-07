.class public Lcom/nettv/livestore/models/EPGChannel;
.super Lio/realm/RealmObject;
.source "EPGChannel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;


# instance fields
.field private Id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epg_channel_id"
    .end annotation
.end field

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

.field private cell:I

.field private channelID:I

.field private custom_sid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_sid"
    .end annotation
.end field

.field private direct_source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direct_source"
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

.field private num:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "num"
    .end annotation
.end field

.field private recent_pos:J

.field public selected:Z

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

.field private tv_archive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_archive"
    .end annotation
.end field

.field private tv_archive_duration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_archive_duration"
    .end annotation
.end field

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
    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    .line 5
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    .line 11
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_locked(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_favorite(Z)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    .line 18
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$cell(I)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$channelID(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 20
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    const-string v0, ""

    .line 21
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    .line 24
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    .line 30
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_locked(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_favorite(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    .line 37
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$cell(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$channelID(I)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p3}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$channelID(I)V

    .line 42
    invoke-virtual {p0, p4}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p5}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p6}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 45
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    const-string v0, ""

    .line 46
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    .line 49
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    .line 55
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_locked(Z)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_favorite(Z)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    .line 62
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$cell(I)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$channelID(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p3}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    return-void
.end method

.method public static fromM3UItem(Liptv/m3u/parser/M3UItem;)Lcom/nettv/livestore/models/EPGChannel;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "."

    .line 1
    :try_start_2
    new-instance v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {v1}, Lcom/nettv/livestore/models/EPGChannel;-><init>()V

    .line 2
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "All"

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getGroupTitle()Ljava/lang/String;

    move-result-object v2

    .line 3
    :goto_18
    invoke-virtual {v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->setCategory_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 5
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->setId(Ljava/lang/String;)V

    .line 6
    :cond_2c
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 7
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->setName(Ljava/lang/String;)V

    .line 8
    :cond_3d
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 9
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->setUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v2

    const-string v3, "live"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_d6

    const-string v3, ""

    const-string v4, "/"

    if-eqz v2, :cond_9a

    .line 11
    :try_start_5e
    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v2, v2, v4

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/models/EPGChannel;->setStream_id(Ljava/lang/String;)V

    goto :goto_c4

    .line 14
    :cond_7a
    invoke-virtual {v1, v2}, Lcom/nettv/livestore/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7d} :catch_7e

    goto :goto_c4

    .line 15
    :catch_7e
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_99} :catch_d6

    goto :goto_c4

    .line 16
    :cond_9a
    :try_start_9a
    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a8} :catch_a9

    goto :goto_c4

    .line 17
    :catch_a9
    :try_start_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/models/EPGChannel;->setStream_id(Ljava/lang/String;)V

    .line 18
    :cond_c4
    :goto_c4
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 19
    invoke-virtual {p0}, Liptv/m3u/parser/M3UItem;->getLogoURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/nettv/livestore/models/EPGChannel;->setStream_icon(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_d5} :catch_d6

    :cond_d5
    return-object v1

    :catch_d6
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAdded()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$added()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getCell()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$cell()I

    move-result v0

    return v0
.end method

.method public getChannelID()I
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$channelID()I

    move-result v0

    return v0
.end method

.method public getCustom_sid()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirect_source()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "unknown channel"

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "0"

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getRecent_pos()J
    .registers 3

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$recent_pos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_id()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getStream_type()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTv_archive()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTv_archive_duration()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public isIs_recent()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$is_recent()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$selected()Z

    move-result v0

    return v0
.end method

.method public is_favorite()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public is_locked()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/EPGChannel;->realmGet$is_locked()Z

    move-result v0

    return v0
.end method

.method public realmGet$Id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$added()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->added:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cell()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/EPGChannel;->cell:I

    return v0
.end method

.method public realmGet$channelID()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/EPGChannel;->channelID:I

    return v0
.end method

.method public realmGet$custom_sid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->custom_sid:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$direct_source()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->direct_source:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/EPGChannel;->is_favorite:Z

    return v0
.end method

.method public realmGet$is_locked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/EPGChannel;->is_locked:Z

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/EPGChannel;->is_recent:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$num()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->num:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$recent_pos()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/EPGChannel;->recent_pos:J

    return-wide v0
.end method

.method public realmGet$selected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/EPGChannel;->selected:Z

    return v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tv_archive()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->tv_archive:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tv_archive_duration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->tv_archive_duration:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/EPGChannel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$Id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->Id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$added(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->added:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->category_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cell(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/EPGChannel;->cell:I

    return-void
.end method

.method public realmSet$channelID(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/EPGChannel;->channelID:I

    return-void
.end method

.method public realmSet$custom_sid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->custom_sid:Ljava/lang/String;

    return-void
.end method

.method public realmSet$direct_source(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->direct_source:Ljava/lang/String;

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/EPGChannel;->is_favorite:Z

    return-void
.end method

.method public realmSet$is_locked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/EPGChannel;->is_locked:Z

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/EPGChannel;->is_recent:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$num(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->num:Ljava/lang/String;

    return-void
.end method

.method public realmSet$recent_pos(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/EPGChannel;->recent_pos:J

    return-void
.end method

.method public realmSet$selected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nettv/livestore/models/EPGChannel;->selected:Z

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->stream_type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tv_archive(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->tv_archive:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tv_archive_duration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->tv_archive_duration:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/EPGChannel;->url:Ljava/lang/String;

    return-void
.end method

.method public setAdded(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setCell(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$cell(I)V

    return-void
.end method

.method public setChannelID(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$channelID(I)V

    return-void
.end method

.method public setCustom_sid(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    return-void
.end method

.method public setDirect_source(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    return-void
.end method

.method public setIs_favorite(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_favorite(Z)V

    return-void
.end method

.method public setIs_locked(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_locked(Z)V

    return-void
.end method

.method public setIs_recent(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$is_recent(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    return-void
.end method

.method public setRecent_pos(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$recent_pos(J)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$selected(Z)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_type(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    return-void
.end method

.method public setTv_archive(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    return-void
.end method

.method public setTv_archive_duration(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nettv/livestore/models/EPGChannel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method

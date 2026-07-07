.class public Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;
.super Lcom/nettv/livestore/models/SeriesModel;
.source "com_nettv_livestore_models_SeriesModelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$ClassNameHelper;,
        Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/models/SeriesModel;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;Lcom/nettv/livestore/models/SeriesModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/SeriesModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_b

    .line 2
    check-cast p3, Lcom/nettv/livestore/models/SeriesModel;

    return-object p3

    .line 3
    :cond_b
    const-class p3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 18
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 19
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 20
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 21
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 22
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 23
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 24
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 25
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 26
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 27
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v5

    .line 29
    sget-object p1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 30
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    const-class p5, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p3, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 31
    new-instance p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;

    invoke-direct {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;-><init>()V

    .line 32
    invoke-virtual {p1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 33
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;Lcom/nettv/livestore/models/SeriesModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/SeriesModel;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3e

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_3e

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 3
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_36

    .line 4
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    return-object p2

    .line 5
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3e
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 7
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_51

    .line 8
    check-cast v0, Lcom/nettv/livestore/models/SeriesModel;

    return-object v0

    .line 9
    :cond_51
    invoke-static/range {p0 .. p5}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;Lcom/nettv/livestore/models/SeriesModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;
    .registers 2

    new-instance v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/nettv/livestore/models/SeriesModel;IILjava/util/Map;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/nettv/livestore/models/SeriesModel;"
        }
    .end annotation

    if-gt p1, p2, :cond_db

    if-nez p0, :cond_6

    goto/16 :goto_db

    .line 1
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1c

    .line 2
    new-instance p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-direct {p2}, Lcom/nettv/livestore/models/SeriesModel;-><init>()V

    .line 3
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 4
    :cond_1c
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_25

    .line 5
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/nettv/livestore/models/SeriesModel;

    return-object p0

    .line 6
    :cond_25
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/nettv/livestore/models/SeriesModel;

    .line 7
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 8
    :goto_2c
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 9
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$num(I)V

    .line 10
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$series_id(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$youtube(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$cast(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$director(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$genre(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$releaseDate(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating_5based(F)V

    .line 22
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$last_modified(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$tmdb(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$season_pos(I)V

    .line 26
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$episode_pos(I)V

    .line 27
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_watched(Z)V

    .line 28
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    .line 29
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_recent(Z)V

    .line 30
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    return-object p2

    :cond_db
    :goto_db
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 1
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "SeriesModel"

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2
    sget-object v8, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "num"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "name"

    const/4 v6, 0x0

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "stream_type"

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "series_id"

    .line 5
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "stream_icon"

    .line 6
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "youtube"

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "plot"

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "cast"

    .line 9
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "director"

    .line 10
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "genre"

    .line 11
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "releaseDate"

    .line 12
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "rating"

    .line 13
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 14
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "rating_5based"

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_id"

    const/4 v6, 0x0

    move-object v3, v9

    .line 15
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "last_modified"

    .line 16
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "tmdb"

    .line 17
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "season_pos"

    const/4 v6, 0x1

    move-object v3, v8

    .line 18
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "episode_pos"

    .line 19
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 20
    sget-object v8, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "is_watched"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_favorite"

    .line 21
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_recent"

    .line 22
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_name"

    const/4 v6, 0x0

    move-object v3, v9

    .line 23
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "url"

    .line 24
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 25
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/SeriesModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p0, v0, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/SeriesModel;

    const-string p2, "num"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$num(I)V

    goto :goto_2a

    .line 6
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'num\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    const-string p2, "name"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 9
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_44

    .line 10
    :cond_3d
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_44
    :goto_44
    const-string p2, "stream_type"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 13
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_5d

    .line 14
    :cond_56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    const-string p2, "series_id"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 17
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$series_id(Ljava/lang/String;)V

    goto :goto_76

    .line 18
    :cond_6f
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$series_id(Ljava/lang/String;)V

    :cond_76
    :goto_76
    const-string p2, "stream_icon"

    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 21
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto :goto_8f

    .line 22
    :cond_88
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    const-string p2, "youtube"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 25
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$youtube(Ljava/lang/String;)V

    goto :goto_a8

    .line 26
    :cond_a1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$youtube(Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    const-string p2, "plot"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 29
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto :goto_c1

    .line 30
    :cond_ba
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    const-string p2, "cast"

    .line 31
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 33
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$cast(Ljava/lang/String;)V

    goto :goto_da

    .line 34
    :cond_d3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$cast(Ljava/lang/String;)V

    :cond_da
    :goto_da
    const-string p2, "director"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 37
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$director(Ljava/lang/String;)V

    goto :goto_f3

    .line 38
    :cond_ec
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$director(Ljava/lang/String;)V

    :cond_f3
    :goto_f3
    const-string p2, "genre"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 41
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$genre(Ljava/lang/String;)V

    goto :goto_10c

    .line 42
    :cond_105
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$genre(Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    const-string p2, "releaseDate"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 45
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$releaseDate(Ljava/lang/String;)V

    goto :goto_125

    .line 46
    :cond_11e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$releaseDate(Ljava/lang/String;)V

    :cond_125
    :goto_125
    const-string p2, "rating"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 49
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto :goto_13e

    .line 50
    :cond_137
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    :cond_13e
    :goto_13e
    const-string p2, "rating_5based"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_155

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating_5based(F)V

    goto :goto_15d

    .line 54
    :cond_155
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'rating_5based\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15d
    :goto_15d
    const-string p2, "category_id"

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 57
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto :goto_176

    .line 58
    :cond_16f
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    :cond_176
    :goto_176
    const-string p2, "last_modified"

    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 60
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 61
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$last_modified(Ljava/lang/String;)V

    goto :goto_18f

    .line 62
    :cond_188
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$last_modified(Ljava/lang/String;)V

    :cond_18f
    :goto_18f
    const-string p2, "tmdb"

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 65
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$tmdb(Ljava/lang/String;)V

    goto :goto_1a8

    .line 66
    :cond_1a1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$tmdb(Ljava/lang/String;)V

    :cond_1a8
    :goto_1a8
    const-string p2, "season_pos"

    .line 67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1be

    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$season_pos(I)V

    goto :goto_1c6

    .line 70
    :cond_1be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'season_pos\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c6
    :goto_1c6
    const-string p2, "episode_pos"

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 72
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1dc

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$episode_pos(I)V

    goto :goto_1e4

    .line 74
    :cond_1dc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'episode_pos\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e4
    :goto_1e4
    const-string p2, "is_watched"

    .line 75
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1fa

    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_watched(Z)V

    goto :goto_202

    .line 78
    :cond_1fa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_watched\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_202
    :goto_202
    const-string p2, "is_favorite"

    .line 79
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_218

    .line 81
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto :goto_220

    .line 82
    :cond_218
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_favorite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_220
    :goto_220
    const-string p2, "is_recent"

    .line 83
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_236

    .line 85
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto :goto_23e

    .line 86
    :cond_236
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_recent\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23e
    :goto_23e
    const-string p2, "category_name"

    .line 87
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 88
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 89
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto :goto_257

    .line 90
    :cond_250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    :cond_257
    :goto_257
    const-string p2, "url"

    .line 91
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 92
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 93
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto :goto_270

    .line 94
    :cond_269
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    :cond_270
    :goto_270
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/SeriesModel;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/SeriesModel;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_303

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2a

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$num(I)V

    goto :goto_8

    :cond_2a
    const-string p0, "Trying to set non-nullable field \'num\' to null."

    .line 8
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 9
    throw p0

    :cond_31
    const-string v2, "name"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_4a

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_8

    .line 13
    :cond_4a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_8

    :cond_51
    const-string v2, "stream_type"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_69

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_8

    .line 18
    :cond_69
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_8

    :cond_70
    const-string v2, "series_id"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_88

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$series_id(Ljava/lang/String;)V

    goto :goto_8

    .line 23
    :cond_88
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$series_id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_90
    const-string v2, "stream_icon"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_a9

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 28
    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b1
    const-string v2, "youtube"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_ca

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$youtube(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 33
    :cond_ca
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$youtube(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d2
    const-string v2, "plot"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_eb

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 38
    :cond_eb
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f3
    const-string v2, "cast"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 41
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_10c

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$cast(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 43
    :cond_10c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$cast(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_114
    const-string v2, "director"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 46
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_12d

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$director(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 48
    :cond_12d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$director(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_135
    const-string v2, "genre"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 51
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_14e

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$genre(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 53
    :cond_14e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$genre(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_156
    const-string v2, "releaseDate"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_16f

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$releaseDate(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 58
    :cond_16f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 59
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$releaseDate(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_177
    const-string v2, "rating"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_190

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 63
    :cond_190
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_198
    const-string v2, "rating_5based"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1b2

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$rating_5based(F)V

    goto/16 :goto_8

    :cond_1b2
    const-string p0, "Trying to set non-nullable field \'rating_5based\' to null."

    .line 68
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 69
    throw p0

    :cond_1b9
    const-string v2, "category_id"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 71
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1d2

    .line 72
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 73
    :cond_1d2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 74
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1da
    const-string v2, "last_modified"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1f3

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$last_modified(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 78
    :cond_1f3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$last_modified(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1fb
    const-string v2, "tmdb"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 81
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_214

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$tmdb(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 83
    :cond_214
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 84
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$tmdb(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_21c
    const-string v2, "season_pos"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23c

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_235

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$season_pos(I)V

    goto/16 :goto_8

    :cond_235
    const-string p0, "Trying to set non-nullable field \'season_pos\' to null."

    .line 88
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 89
    throw p0

    :cond_23c
    const-string v2, "episode_pos"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_255

    .line 92
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$episode_pos(I)V

    goto/16 :goto_8

    :cond_255
    const-string p0, "Trying to set non-nullable field \'episode_pos\' to null."

    .line 93
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 94
    throw p0

    :cond_25c
    const-string v2, "is_watched"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27c

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_275

    .line 97
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_watched(Z)V

    goto/16 :goto_8

    :cond_275
    const-string p0, "Trying to set non-nullable field \'is_watched\' to null."

    .line 98
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 99
    throw p0

    :cond_27c
    const-string v2, "is_favorite"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 101
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_295

    .line 102
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto/16 :goto_8

    :cond_295
    const-string p0, "Trying to set non-nullable field \'is_favorite\' to null."

    .line 103
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 104
    throw p0

    :cond_29c
    const-string v2, "is_recent"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 106
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2b5

    .line 107
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto/16 :goto_8

    :cond_2b5
    const-string p0, "Trying to set non-nullable field \'is_recent\' to null."

    .line 108
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 109
    throw p0

    :cond_2bc
    const-string v2, "category_name"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    .line 111
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2d5

    .line 112
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 113
    :cond_2d5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 114
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2dd
    const-string v2, "url"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2fe

    .line 116
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2f6

    .line 117
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 118
    :cond_2f6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 119
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 120
    :cond_2fe
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_8

    .line 121
    :cond_303
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 122
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/SeriesModel;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    sget-object v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    const-string v0, "SeriesModel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_3c
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7d

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 11
    :cond_7d
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8b

    .line 12
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 13
    :cond_8b
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_99

    .line 14
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 15
    :cond_99
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a7

    .line 16
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 17
    :cond_a7
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b5

    .line 18
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 19
    :cond_b5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 20
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 21
    :cond_c3
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d1

    .line 22
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 23
    :cond_d1
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_df

    .line 24
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 25
    :cond_df
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ed

    .line 26
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 27
    :cond_ed
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fb

    .line 28
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_fb
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_109

    .line 30
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_109
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 32
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 33
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 34
    :cond_123
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_131

    .line 35
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 36
    :cond_131
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13f

    .line 37
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 38
    :cond_13f
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 39
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 40
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 41
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 42
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 43
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_180

    .line 44
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 45
    :cond_180
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18e

    .line 46
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_18e
    return-wide v14
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 47
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 49
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 50
    :cond_1b
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 51
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/SeriesModel;

    .line 52
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 53
    :cond_2f
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_70

    invoke-static {v15}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_70

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 54
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 55
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 56
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 58
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_98

    .line 59
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 60
    :cond_98
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a7

    .line 61
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 62
    :cond_a7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b6

    .line 63
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 64
    :cond_b6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c5

    .line 65
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 66
    :cond_c5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d4

    .line 67
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 68
    :cond_d4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e3

    .line 69
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 70
    :cond_e3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f2

    .line 71
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 72
    :cond_f2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_101

    .line 73
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 74
    :cond_101
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_110

    .line 75
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 76
    :cond_110
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11f

    .line 77
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 78
    :cond_11f
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12e

    .line 79
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 80
    :cond_12e
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 81
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14a

    .line 82
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 83
    :cond_14a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_159

    .line 84
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 85
    :cond_159
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_168

    .line 86
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 87
    :cond_168
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 88
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 89
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 90
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 91
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 92
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1ac

    .line 93
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 94
    :cond_1ac
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 95
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_1b

    :cond_1bd
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_3c
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7e

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_86

    .line 11
    :cond_7e
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 12
    :goto_86
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_95

    .line 13
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9d

    .line 14
    :cond_95
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 15
    :goto_9d
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ac

    .line 16
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b4

    .line 17
    :cond_ac
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 18
    :goto_b4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 19
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_cb

    .line 20
    :cond_c3
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 21
    :goto_cb
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_da

    .line 22
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e2

    .line 23
    :cond_da
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 24
    :goto_e2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f1

    .line 25
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f9

    .line 26
    :cond_f1
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 27
    :goto_f9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_108

    .line 28
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_110

    .line 29
    :cond_108
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_110
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11f

    .line 31
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_127

    .line 32
    :cond_11f
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_127
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_136

    .line 34
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13e

    .line 35
    :cond_136
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_13e
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14d

    .line 37
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_155

    .line 38
    :cond_14d
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_155
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_164

    .line 40
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16c

    .line 41
    :cond_164
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_16c
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 43
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_187

    .line 44
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18f

    .line 45
    :cond_187
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 46
    :goto_18f
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19e

    .line 47
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a6

    .line 48
    :cond_19e
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 49
    :goto_1a6
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b5

    .line 50
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1bd

    .line 51
    :cond_1b5
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 52
    :goto_1bd
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 53
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 54
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 55
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 56
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 57
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1ff

    .line 58
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_207

    .line 59
    :cond_1ff
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 60
    :goto_207
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_216

    .line 61
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_21e

    .line 62
    :cond_216
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_21e
    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 63
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 65
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 66
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/SeriesModel;

    .line 68
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 69
    :cond_2f
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_70

    invoke-static {v15}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_70

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 70
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 71
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 72
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$num()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 74
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_99

    .line 75
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a2

    .line 76
    :cond_99
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 77
    :goto_a2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b2

    .line 78
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_bb

    .line 79
    :cond_b2
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 80
    :goto_bb
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$series_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cb

    .line 81
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d4

    .line 82
    :cond_cb
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 83
    :goto_d4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e4

    .line 84
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ed

    .line 85
    :cond_e4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 86
    :goto_ed
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$youtube()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fd

    .line 87
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_106

    .line 88
    :cond_fd
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 89
    :goto_106
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_116

    .line 90
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11f

    .line 91
    :cond_116
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 92
    :goto_11f
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$cast()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12f

    .line 93
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_138

    .line 94
    :cond_12f
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 95
    :goto_138
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$director()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_148

    .line 96
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_151

    .line 97
    :cond_148
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 98
    :goto_151
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$genre()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_161

    .line 99
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16a

    .line 100
    :cond_161
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 101
    :goto_16a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17a

    .line 102
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_183

    .line 103
    :cond_17a
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 104
    :goto_183
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_193

    .line 105
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19c

    .line 106
    :cond_193
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 107
    :goto_19c
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$rating_5based()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 108
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b9

    .line 109
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c2

    .line 110
    :cond_1b9
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 111
    :goto_1c2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d2

    .line 112
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1db

    .line 113
    :cond_1d2
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 114
    :goto_1db
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1eb

    .line 115
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f4

    .line 116
    :cond_1eb
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 117
    :goto_1f4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$season_pos()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 118
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$episode_pos()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 119
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_watched()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 120
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 121
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 122
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_239

    .line 123
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_242

    .line 124
    :cond_239
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 125
    :goto_242
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_253

    .line 126
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_1b

    .line 127
    :cond_253
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_1b

    :cond_25e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_95

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_95

    .line 2
    :cond_13
    check-cast p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_32

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_34

    :cond_32
    if-eqz v5, :cond_35

    :goto_34
    return v1

    .line 8
    :cond_35
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_40

    return v1

    .line 9
    :cond_40
    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    return v1

    .line 10
    :cond_53
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_78

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_7a

    :cond_78
    if-eqz v3, :cond_7b

    :goto_7a
    return v1

    .line 13
    :cond_7b
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_94

    return v1

    :cond_94
    return v0

    :cond_95
    :goto_95
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_36

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_36
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 3
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$cast()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$director()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$episode_pos()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$genre()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_watched()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$last_modified()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$num()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$plot()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$rating_5based()F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$releaseDate()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$season_pos()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$series_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tmdb()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$cast(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$director(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$episode_pos(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$genre(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_watched(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$last_modified(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$num(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$plot(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$rating_5based(F)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$releaseDate(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$season_pos(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$series_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$tmdb(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeriesModel = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{num:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$num()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{name:"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_38

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_38
    move-object v3, v4

    :goto_39
    const-string v5, "{stream_type:"

    .line 9
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_49
    move-object v3, v4

    :goto_4a
    const-string v5, "{series_id:"

    .line 11
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$series_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$series_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    :cond_5a
    move-object v3, v4

    :goto_5b
    const-string v5, "{stream_icon:"

    .line 13
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    :cond_6b
    move-object v3, v4

    :goto_6c
    const-string v5, "{youtube:"

    .line 15
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$youtube()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$youtube()Ljava/lang/String;

    move-result-object v3

    goto :goto_7d

    :cond_7c
    move-object v3, v4

    :goto_7d
    const-string v5, "{plot:"

    .line 17
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$plot()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$plot()Ljava/lang/String;

    move-result-object v3

    goto :goto_8e

    :cond_8d
    move-object v3, v4

    :goto_8e
    const-string v5, "{cast:"

    .line 19
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$cast()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$cast()Ljava/lang/String;

    move-result-object v3

    goto :goto_9f

    :cond_9e
    move-object v3, v4

    :goto_9f
    const-string v5, "{director:"

    .line 21
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$director()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_af

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$director()Ljava/lang/String;

    move-result-object v3

    goto :goto_b0

    :cond_af
    move-object v3, v4

    :goto_b0
    const-string v5, "{genre:"

    .line 23
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$genre()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c0

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$genre()Ljava/lang/String;

    move-result-object v3

    goto :goto_c1

    :cond_c0
    move-object v3, v4

    :goto_c1
    const-string v5, "{releaseDate:"

    .line 25
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d1

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v3

    goto :goto_d2

    :cond_d1
    move-object v3, v4

    :goto_d2
    const-string v5, "{rating:"

    .line 27
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    goto :goto_e3

    :cond_e2
    move-object v3, v4

    :goto_e3
    const-string v5, "{rating_5based:"

    .line 29
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$rating_5based()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{category_id:"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_105

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_106

    :cond_105
    move-object v3, v4

    :goto_106
    const-string v5, "{last_modified:"

    .line 35
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_116

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v3

    goto :goto_117

    :cond_116
    move-object v3, v4

    :goto_117
    const-string v5, "{tmdb:"

    .line 37
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_127

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v3

    goto :goto_128

    :cond_127
    move-object v3, v4

    :goto_128
    const-string v5, "{season_pos:"

    .line 39
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$season_pos()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{episode_pos:"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$episode_pos()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_watched:"

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$is_watched()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_favorite:"

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$is_favorite()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_recent:"

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$is_recent()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{category_name:"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_192

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_193

    :cond_192
    move-object v3, v4

    :goto_193
    const-string v5, "{url:"

    .line 61
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v4

    :cond_1a2
    const-string v2, "]"

    .line 63
    invoke-static {v0, v4, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

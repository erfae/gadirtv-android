.class public Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;
.super Lcom/nettv/livestore/models/EpisodeInfoModel;
.source "com_nettv_livestore_models_EpisodeInfoModelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$ClassNameHelper;,
        Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/models/EpisodeInfoModel;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;Lcom/nettv/livestore/models/EpisodeInfoModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v5

    .line 15
    sget-object p1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 16
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    const-class p5, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p3, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 17
    new-instance p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;

    invoke-direct {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;-><init>()V

    .line 18
    invoke-virtual {p1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 19
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;Lcom/nettv/livestore/models/EpisodeInfoModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 3
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 7
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 8
    check-cast v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object v0

    .line 9
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;Lcom/nettv/livestore/models/EpisodeInfoModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;
    .locals 1

    new-instance v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/nettv/livestore/models/EpisodeInfoModel;IILjava/util/Map;)Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-direct {p2}, Lcom/nettv/livestore/models/EpisodeInfoModel;-><init>()V

    .line 3
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 5
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    .line 7
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 8
    :goto_0
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 9
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$bitrate(I)V

    .line 10
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration_secs(I)V

    .line 12
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$releasedate(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$movie_image(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 10

    .line 1
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "EpisodeInfoModel"

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2
    sget-object v8, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "bitrate"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 3
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "duration"

    const/4 v6, 0x0

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "duration_secs"

    const/4 v6, 0x1

    move-object v3, v8

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "name"

    const/4 v6, 0x0

    move-object v3, v9

    .line 5
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "rating"

    .line 6
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "releasedate"

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "plot"

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "movie_image"

    .line 9
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "tmdb_id"

    .line 10
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 11
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p0, v0, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    const-string p2, "bitrate"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$bitrate(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'bitrate\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string p2, "duration"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p2, "duration_secs"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration_secs(I)V

    goto :goto_2

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'duration_secs\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string p2, "name"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string p2, "rating"

    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    :cond_9
    :goto_4
    const-string p2, "releasedate"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$releasedate(Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :cond_a
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$releasedate(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string p2, "plot"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_c
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    :cond_d
    :goto_6
    const-string p2, "movie_image"

    .line 31
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$movie_image(Ljava/lang/String;)V

    goto :goto_7

    .line 34
    :cond_e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$movie_image(Ljava/lang/String;)V

    :cond_f
    :goto_7
    const-string p2, "tmdb_id"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto :goto_8

    .line 38
    :cond_10
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    :cond_11
    :goto_8
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/EpisodeInfoModel;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bitrate"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$bitrate(I)V

    goto :goto_0

    :cond_0
    const-string p0, "Trying to set non-nullable field \'bitrate\' to null."

    .line 8
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 9
    throw p0

    :cond_1
    const-string v2, "duration"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "duration_secs"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$duration_secs(I)V

    goto :goto_0

    :cond_4
    const-string p0, "Trying to set non-nullable field \'duration_secs\' to null."

    .line 18
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 19
    throw p0

    :cond_5
    const-string v2, "name"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "rating"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "releasedate"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$releasedate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$releasedate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "plot"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_c

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$plot(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "movie_image"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 41
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_e

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$movie_image(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$movie_image(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "tmdb_id"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 46
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_10

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 51
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 52
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    sget-object v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "EpisodeInfoModel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 11
    :cond_1
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 13
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 14
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 15
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 16
    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 17
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 18
    :cond_4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 19
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 20
    :cond_5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 21
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 22
    :cond_6
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 23
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_7
    return-wide v14
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 18
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

    .line 24
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 26
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 27
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EpisodeInfoModel;

    .line 29
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    invoke-static {v15}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_2

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

    if-eqz v4, :cond_2

    .line 31
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 33
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 35
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 36
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 37
    :cond_3
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 38
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 39
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 40
    :cond_4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 41
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 42
    :cond_5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 43
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 44
    :cond_6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 45
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 46
    :cond_7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 47
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 48
    :cond_8
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 49
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EpisodeInfoModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 12
    :goto_0
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 13
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 14
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 15
    :cond_2
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 16
    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 17
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 18
    :cond_3
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 19
    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 20
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 21
    :cond_4
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 22
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 23
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 24
    :cond_5
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 25
    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 26
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 27
    :cond_6
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 28
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 29
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 30
    :cond_7
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 18
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

    .line 31
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 33
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 34
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EpisodeInfoModel;

    .line 36
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    invoke-static {v15}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

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

    if-eqz v4, :cond_1

    .line 38
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 40
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$bitrate()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 42
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 43
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 44
    :cond_2
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 45
    :goto_1
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$duration_secs()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 46
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 47
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 48
    :cond_3
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 49
    :goto_2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 50
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 51
    :cond_4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 52
    :goto_3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 53
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 54
    :cond_5
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 55
    :goto_4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$plot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 56
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 57
    :cond_6
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 58
    :goto_5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 59
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 60
    :cond_7
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 61
    :goto_6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 62
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 63
    :cond_8
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 8
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 9
    :cond_4
    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 10
    :cond_5
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 13
    :cond_7
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
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
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 3
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$bitrate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$duration()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$duration_secs()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$movie_image()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$plot()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$releasedate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tmdb_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$bitrate(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$duration(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$duration_secs(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$movie_image(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$plot(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$releasedate(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$tmdb_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EpisodeInfoModel = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{bitrate:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$bitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{duration:"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$duration()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$duration()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const-string v5, "{duration_secs:"

    .line 9
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$duration_secs()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{name:"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    const-string v5, "{rating:"

    .line 15
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    const-string v5, "{releasedate:"

    .line 17
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    const-string v5, "{plot:"

    .line 19
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$plot()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$plot()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    const-string v5, "{movie_image:"

    .line 21
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    const-string v5, "{tmdb_id:"

    .line 23
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v4

    :cond_7
    const-string v2, "]"

    .line 25
    invoke-static {v0, v4, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

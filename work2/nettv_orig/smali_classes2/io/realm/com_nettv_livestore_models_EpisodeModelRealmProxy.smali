.class public Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;
.super Lcom/nettv/livestore/models/EpisodeModel;
.source "com_nettv_livestore_models_EpisodeModelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$ClassNameHelper;,
        Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/models/EpisodeModel;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;Lcom/nettv/livestore/models/EpisodeModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EpisodeModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 6
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 7
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 8
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 9
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 10
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 11
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 12
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 13
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 14
    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v6

    .line 16
    sget-object p1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 17
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 18
    new-instance v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;

    invoke-direct {v0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;-><init>()V

    .line 19
    invoke-virtual {p1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 20
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    .line 22
    invoke-virtual {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    const-class p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;Lcom/nettv/livestore/models/EpisodeInfoModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    :goto_0
    return-object v0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;Lcom/nettv/livestore/models/EpisodeModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EpisodeModel;"
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
    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    return-object v0

    .line 9
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;Lcom/nettv/livestore/models/EpisodeModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeModel;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;
    .locals 1

    new-instance v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/nettv/livestore/models/EpisodeModel;IILjava/util/Map;)Lcom/nettv/livestore/models/EpisodeModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/nettv/livestore/models/EpisodeModel;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/EpisodeModel;-><init>()V

    .line 3
    new-instance v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v1, p1, v0}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_2

    .line 5
    iget-object p0, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/nettv/livestore/models/EpisodeModel;

    return-object p0

    .line 6
    :cond_2
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/nettv/livestore/models/EpisodeModel;

    .line 7
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v0, v1

    .line 8
    :goto_0
    move-object v1, p0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    check-cast v1, Lio/realm/Realm;

    .line 9
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$episode_num(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$container_extension(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season(I)V

    .line 14
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/EpisodeInfoModel;IILjava/util/Map;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    .line 15
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season_name(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$series_name(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 9

    .line 1
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "EpisodeModel"

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2
    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "episode_num"

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "title"

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "container_extension"

    .line 5
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 6
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "season"

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 7
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "info"

    const-string v3, "EpisodeInfoModel"

    invoke-virtual {v7, v1, v2, v0, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_name"

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, v8

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "stream_icon"

    .line 9
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "season_name"

    .line 10
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "series_name"

    .line 11
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "url"

    .line 12
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 13
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EpisodeModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "info"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    const-class v2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p0, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    const-string v2, "id"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v2, "episode_num"

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$episode_num(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$episode_num(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v2, "title"

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v2, "container_extension"

    .line 17
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$container_extension(Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$container_extension(Ljava/lang/String;)V

    :cond_8
    :goto_3
    const-string v2, "season"

    .line 21
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 22
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season(I)V

    goto :goto_4

    .line 24
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'season\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_a
    :goto_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 27
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    goto :goto_5

    .line 28
    :cond_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p0

    .line 29
    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    :cond_c
    :goto_5
    const-string p0, "category_name"

    .line 30
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 31
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 32
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto :goto_6

    .line 33
    :cond_d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    :cond_e
    :goto_6
    const-string p0, "stream_icon"

    .line 34
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 35
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 36
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto :goto_7

    .line 37
    :cond_f
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    :cond_10
    :goto_7
    const-string p0, "season_name"

    .line 38
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 39
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 40
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season_name(Ljava/lang/String;)V

    goto :goto_8

    .line 41
    :cond_11
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season_name(Ljava/lang/String;)V

    :cond_12
    :goto_8
    const-string p0, "series_name"

    .line 42
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 43
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 44
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$series_name(Ljava/lang/String;)V

    goto :goto_9

    .line 45
    :cond_13
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$series_name(Ljava/lang/String;)V

    :cond_14
    :goto_9
    const-string p0, "url"

    .line 46
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 47
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 48
    invoke-interface {v0, v4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto :goto_a

    .line 49
    :cond_15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    :cond_16
    :goto_a
    return-object v0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EpisodeModel;
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
    new-instance v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/EpisodeModel;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "episode_num"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$episode_num(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$episode_num(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "title"

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
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "container_extension"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$container_extension(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$container_extension(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "season"

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
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season(I)V

    goto/16 :goto_0

    :cond_8
    const-string p0, "Trying to set non-nullable field \'season\' to null."

    .line 28
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 29
    throw p0

    :cond_9
    const-string v2, "info"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 33
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-static {p0, p1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "category_name"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_c

    .line 38
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "stream_icon"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_e

    .line 43
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 45
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "season_name"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_10

    .line 48
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season_name(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 50
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$season_name(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "series_name"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_12

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$series_name(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 55
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$series_name(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "url"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_14

    .line 58
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 60
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 62
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 63
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/EpisodeModel;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    sget-object v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "EpisodeModel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

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

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v3, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 6
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 7
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 9
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 10
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 11
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 12
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 13
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 14
    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 15
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 16
    :cond_4
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v3

    int-to-long v10, v3

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 17
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 18
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_5

    .line 19
    invoke-static {v0, v3, v2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 20
    :cond_5
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 21
    :cond_6
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 22
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 23
    :cond_7
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 24
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 25
    :cond_8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 26
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 27
    :cond_9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 28
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_a
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 30
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_b
    return-wide v16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 31
    const-class v2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 33
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 34
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 35
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EpisodeModel;

    .line 36
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 37
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

    .line 38
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 40
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 42
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 43
    :cond_3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 44
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 45
    :cond_4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 46
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 47
    :cond_5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 48
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 49
    :cond_6
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 50
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 51
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_7

    .line 52
    invoke-static {v0, v3, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 53
    :cond_7
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 54
    :cond_8
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 55
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 56
    :cond_9
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 57
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 58
    :cond_a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 59
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 60
    :cond_b
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 61
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 62
    :cond_c
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 63
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

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

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    const-class v3, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 6
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 7
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 9
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 11
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 12
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 14
    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 15
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 16
    :cond_3
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 17
    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 18
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 19
    :cond_4
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 20
    :goto_3
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v3

    int-to-long v10, v3

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 21
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 22
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_5

    .line 23
    invoke-static {v0, v3, v2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 24
    :cond_5
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_4

    .line 25
    :cond_6
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 26
    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 27
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 28
    :cond_7
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 29
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 30
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 31
    :cond_8
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 32
    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 33
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 34
    :cond_9
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 35
    :goto_7
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 36
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 37
    :cond_a
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 38
    :goto_8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 39
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 40
    :cond_b
    iget-wide v6, v15, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_9
    return-wide v16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 41
    const-class v2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 43
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 44
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EpisodeModel;

    .line 46
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 47
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

    .line 48
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 50
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 52
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 53
    :cond_2
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 54
    :goto_1
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 55
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 56
    :cond_3
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 57
    :goto_2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 58
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 59
    :cond_4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 60
    :goto_3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 61
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 62
    :cond_5
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 63
    :goto_4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 64
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 65
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_6

    .line 66
    invoke-static {v0, v3, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 67
    :cond_6
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_5

    .line 68
    :cond_7
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 69
    :goto_5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 70
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 71
    :cond_8
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 72
    :goto_6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 73
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 74
    :cond_9
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 75
    :goto_7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$season_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 76
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 77
    :cond_a
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 78
    :goto_8
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$series_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 79
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 80
    :cond_b
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 81
    :goto_9
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 82
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 83
    :cond_c
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_d
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
    check-cast p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$container_extension()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$episode_num()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    iget-object v3, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v3, v3, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-interface {v2, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

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

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$season()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$season_name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$series_name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$container_extension(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$episode_num(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$info(Lcom/nettv/livestore/models/EpisodeInfoModel;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v1

    const-string v2, "info"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/ImportFlag;

    .line 6
    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    .line 7
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 10
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v3, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v5

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 14
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void
.end method

.method public realmSet$season(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$season_name(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$series_name(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

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

    const-string v1, "EpisodeModel = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{id:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "}"

    const-string v4, ","

    const-string v5, "{episode_num:"

    .line 5
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v5, "{title:"

    .line 7
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v5, "{container_extension:"

    .line 9
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v5, "{season:"

    .line 11
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$season()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{info:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$info()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "EpisodeInfoModel"

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    const-string v5, "{category_name:"

    .line 17
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string v5, "{stream_icon:"

    .line 19
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    const-string v5, "{season_name:"

    .line 21
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$season_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$season_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    const-string v5, "{series_name:"

    .line 23
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$series_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$series_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    const-string v5, "{url:"

    .line 25
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v1, "]"

    .line 27
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

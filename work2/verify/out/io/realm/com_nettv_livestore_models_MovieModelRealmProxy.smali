.class public Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;
.super Lcom/nettv/livestore/models/MovieModel;
.source "com_nettv_livestore_models_MovieModelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$ClassNameHelper;,
        Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/models/MovieModel;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;Lcom/nettv/livestore/models/MovieModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/MovieModel;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;",
            "Lcom/nettv/livestore/models/MovieModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/MovieModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_b

    .line 2
    check-cast p3, Lcom/nettv/livestore/models/MovieModel;

    return-object p3

    .line 3
    :cond_b
    const-class p3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 18
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 19
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 20
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 21
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 22
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 23
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 24
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v5

    .line 26
    sget-object p1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 27
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    const-class p5, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p3, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 28
    new-instance p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;

    invoke-direct {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;-><init>()V

    .line 29
    invoke-virtual {p1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 30
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;Lcom/nettv/livestore/models/MovieModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/MovieModel;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;",
            "Lcom/nettv/livestore/models/MovieModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/MovieModel;"
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
    check-cast v0, Lcom/nettv/livestore/models/MovieModel;

    return-object v0

    .line 9
    :cond_51
    invoke-static/range {p0 .. p5}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;Lcom/nettv/livestore/models/MovieModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;
    .registers 2

    new-instance v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/nettv/livestore/models/MovieModel;IILjava/util/Map;)Lcom/nettv/livestore/models/MovieModel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/MovieModel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/nettv/livestore/models/MovieModel;"
        }
    .end annotation

    if-gt p1, p2, :cond_c6

    if-nez p0, :cond_6

    goto/16 :goto_c6

    .line 1
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1c

    .line 2
    new-instance p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-direct {p2}, Lcom/nettv/livestore/models/MovieModel;-><init>()V

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

    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

    return-object p0

    .line 6
    :cond_25
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/nettv/livestore/models/MovieModel;

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
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$num(I)V

    .line 10
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$extension(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$pro(I)V

    .line 22
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$time(J)V

    .line 23
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$recent_mil(J)V

    .line 24
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_locked(Z)V

    .line 25
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    .line 26
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_recent(Z)V

    .line 27
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    return-object p2

    :cond_c6
    :goto_c6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 1
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "MovieModel"

    const/4 v3, 0x0

    const/16 v4, 0x14

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

    const-string v2, "stream_id"

    .line 5
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "stream_icon"

    .line 6
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "extension"

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "type"

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "rating"

    .line 9
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_id"

    .line 10
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "custom_sid"

    .line 11
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "added"

    .line 12
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "tmdb_id"

    .line 13
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "pro"

    const/4 v6, 0x1

    move-object v3, v8

    .line 14
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "time"

    .line 15
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "recent_mil"

    .line 16
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 17
    sget-object v8, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "is_locked"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_favorite"

    .line 18
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_recent"

    .line 19
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_name"

    const/4 v6, 0x0

    move-object v3, v9

    .line 20
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "url"

    .line 21
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 22
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/MovieModel;
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
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p0, v0, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

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

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$num(I)V

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
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_44

    .line 10
    :cond_3d
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

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
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_5d

    .line 14
    :cond_56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    const-string p2, "stream_id"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 17
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    goto :goto_76

    .line 18
    :cond_6f
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

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
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto :goto_8f

    .line 22
    :cond_88
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    const-string p2, "extension"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 25
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$extension(Ljava/lang/String;)V

    goto :goto_a8

    .line 26
    :cond_a1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$extension(Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    const-string p2, "type"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 29
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_c1

    .line 30
    :cond_ba
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    const-string p2, "rating"

    .line 31
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 33
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto :goto_da

    .line 34
    :cond_d3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    :cond_da
    :goto_da
    const-string p2, "category_id"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 37
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto :goto_f3

    .line 38
    :cond_ec
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    :cond_f3
    :goto_f3
    const-string p2, "custom_sid"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 41
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto :goto_10c

    .line 42
    :cond_105
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    const-string p2, "added"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 45
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto :goto_125

    .line 46
    :cond_11e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    :cond_125
    :goto_125
    const-string p2, "tmdb_id"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 49
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto :goto_13e

    .line 50
    :cond_137
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    :cond_13e
    :goto_13e
    const-string p2, "pro"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$pro(I)V

    goto :goto_15c

    .line 54
    :cond_154
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'pro\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15c
    :goto_15c
    const-string p2, "time"

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_172

    .line 57
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$time(J)V

    goto :goto_17a

    .line 58
    :cond_172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'time\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17a
    :goto_17a
    const-string p2, "recent_mil"

    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 60
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_190

    .line 61
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$recent_mil(J)V

    goto :goto_198

    .line 62
    :cond_190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'recent_mil\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_198
    :goto_198
    const-string p2, "is_locked"

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ae

    .line 65
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_locked(Z)V

    goto :goto_1b6

    .line 66
    :cond_1ae
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_locked\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b6
    :goto_1b6
    const-string p2, "is_favorite"

    .line 67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto :goto_1d4

    .line 70
    :cond_1cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_favorite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d4
    :goto_1d4
    const-string p2, "is_recent"

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 72
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ea

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto :goto_1f2

    .line 74
    :cond_1ea
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_recent\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f2
    :goto_1f2
    const-string p2, "category_name"

    .line 75
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 77
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto :goto_20b

    .line 78
    :cond_204
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    :cond_20b
    :goto_20b
    const-string p2, "url"

    .line 79
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 81
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto :goto_224

    .line 82
    :cond_21d
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    :cond_224
    :goto_224
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/MovieModel;
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
    new-instance v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/MovieModel;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29f

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$num(I)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_8

    .line 13
    :cond_4a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_8

    .line 18
    :cond_69
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_8

    :cond_70
    const-string v2, "stream_id"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    goto :goto_8

    .line 23
    :cond_88
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 28
    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b1
    const-string v2, "extension"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$extension(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 33
    :cond_ca
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$extension(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d2
    const-string v2, "type"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 38
    :cond_eb
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f3
    const-string v2, "rating"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 43
    :cond_10c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$rating(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_114
    const-string v2, "category_id"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 48
    :cond_12d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_135
    const-string v2, "custom_sid"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 53
    :cond_14e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_156
    const-string v2, "added"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 58
    :cond_16f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 59
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_177
    const-string v2, "tmdb_id"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 63
    :cond_190
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$tmdb_id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_198
    const-string v2, "pro"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1b1

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$pro(I)V

    goto/16 :goto_8

    :cond_1b1
    const-string p0, "Trying to set non-nullable field \'pro\' to null."

    .line 68
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 69
    throw p0

    :cond_1b8
    const-string v2, "time"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 71
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1d1

    .line 72
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$time(J)V

    goto/16 :goto_8

    :cond_1d1
    const-string p0, "Trying to set non-nullable field \'time\' to null."

    .line 73
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 74
    throw p0

    :cond_1d8
    const-string v2, "recent_mil"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1f1

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$recent_mil(J)V

    goto/16 :goto_8

    :cond_1f1
    const-string p0, "Trying to set non-nullable field \'recent_mil\' to null."

    .line 78
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 79
    throw p0

    :cond_1f8
    const-string v2, "is_locked"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_218

    .line 81
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_211

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_locked(Z)V

    goto/16 :goto_8

    :cond_211
    const-string p0, "Trying to set non-nullable field \'is_locked\' to null."

    .line 83
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 84
    throw p0

    :cond_218
    const-string v2, "is_favorite"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_231

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto/16 :goto_8

    :cond_231
    const-string p0, "Trying to set non-nullable field \'is_favorite\' to null."

    .line 88
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 89
    throw p0

    :cond_238
    const-string v2, "is_recent"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_251

    .line 92
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto/16 :goto_8

    :cond_251
    const-string p0, "Trying to set non-nullable field \'is_recent\' to null."

    .line 93
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 94
    throw p0

    :cond_258
    const-string v2, "category_name"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_271

    .line 97
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 98
    :cond_271
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 99
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_279
    const-string v2, "url"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29a

    .line 101
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_292

    .line 102
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 103
    :cond_292
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 104
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 105
    :cond_29a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_8

    .line 106
    :cond_29f
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 107
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/MovieModel;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    sget-object v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    const-string v0, "MovieModel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/MovieModel;",
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
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7d

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 11
    :cond_7d
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8b

    .line 12
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 13
    :cond_8b
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_99

    .line 14
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 15
    :cond_99
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a7

    .line 16
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 17
    :cond_a7
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b5

    .line 18
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 19
    :cond_b5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 20
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 21
    :cond_c3
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d1

    .line 22
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 23
    :cond_d1
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_df

    .line 24
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 25
    :cond_df
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ed

    .line 26
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 27
    :cond_ed
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fb

    .line 28
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_fb
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_109

    .line 30
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_109
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 32
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 33
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 34
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 35
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 36
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 37
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_152

    .line 38
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 39
    :cond_152
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_160

    .line 40
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_160
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

    .line 41
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 43
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 44
    :cond_1b
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/MovieModel;

    .line 46
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 47
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

    .line 48
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

    .line 49
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 50
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 52
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_98

    .line 53
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 54
    :cond_98
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a7

    .line 55
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 56
    :cond_a7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b6

    .line 57
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 58
    :cond_b6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c5

    .line 59
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 60
    :cond_c5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d4

    .line 61
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 62
    :cond_d4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e3

    .line 63
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 64
    :cond_e3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f2

    .line 65
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 66
    :cond_f2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_101

    .line 67
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 68
    :cond_101
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_110

    .line 69
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 70
    :cond_110
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11f

    .line 71
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 72
    :cond_11f
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12e

    .line 73
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 74
    :cond_12e
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 75
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 76
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 77
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 78
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 79
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 80
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_179

    .line 81
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 82
    :cond_179
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 83
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_1b

    :cond_18a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/MovieModel;",
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
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7e

    .line 10
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_86

    .line 11
    :cond_7e
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 12
    :goto_86
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_95

    .line 13
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9d

    .line 14
    :cond_95
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 15
    :goto_9d
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ac

    .line 16
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b4

    .line 17
    :cond_ac
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 18
    :goto_b4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 19
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_cb

    .line 20
    :cond_c3
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 21
    :goto_cb
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_da

    .line 22
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e2

    .line 23
    :cond_da
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 24
    :goto_e2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f1

    .line 25
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f9

    .line 26
    :cond_f1
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 27
    :goto_f9
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_108

    .line 28
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_110

    .line 29
    :cond_108
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_110
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11f

    .line 31
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_127

    .line 32
    :cond_11f
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_127
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_136

    .line 34
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13e

    .line 35
    :cond_136
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_13e
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14d

    .line 37
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_155

    .line 38
    :cond_14d
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_155
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_164

    .line 40
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16c

    .line 41
    :cond_164
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_16c
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 43
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 44
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 45
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 46
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 47
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 48
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b6

    .line 49
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1be

    .line 50
    :cond_1b6
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 51
    :goto_1be
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1cd

    .line 52
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d5

    .line 53
    :cond_1cd
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1d5
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

    .line 54
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 56
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 57
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20d

    .line 58
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/MovieModel;

    .line 59
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 60
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

    .line 61
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

    .line 62
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 63
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$num()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 65
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_99

    .line 66
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a2

    .line 67
    :cond_99
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 68
    :goto_a2
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b2

    .line 69
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_bb

    .line 70
    :cond_b2
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 71
    :goto_bb
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cb

    .line 72
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d4

    .line 73
    :cond_cb
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 74
    :goto_d4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e4

    .line 75
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ed

    .line 76
    :cond_e4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 77
    :goto_ed
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$extension()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fd

    .line 78
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_106

    .line 79
    :cond_fd
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 80
    :goto_106
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_116

    .line 81
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11f

    .line 82
    :cond_116
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 83
    :goto_11f
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12f

    .line 84
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_138

    .line 85
    :cond_12f
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 86
    :goto_138
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_148

    .line 87
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_151

    .line 88
    :cond_148
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 89
    :goto_151
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_161

    .line 90
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16a

    .line 91
    :cond_161
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 92
    :goto_16a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17a

    .line 93
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_183

    .line 94
    :cond_17a
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 95
    :goto_183
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_193

    .line 96
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19c

    .line 97
    :cond_193
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 98
    :goto_19c
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$pro()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 99
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$time()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 100
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$recent_mil()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 101
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 102
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 103
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 104
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e8

    .line 105
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f1

    .line 106
    :cond_1e8
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 107
    :goto_1f1
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_202

    .line 108
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_1b

    .line 109
    :cond_202
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_1b

    :cond_20d
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
    check-cast p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$added()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$custom_sid()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$extension()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_locked()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$num()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$pro()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
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

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$recent_mil()J
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$time()J
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$tmdb_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$added(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$custom_sid(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$extension(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_locked(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$num(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$pro(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$recent_mil(J)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$time(J)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$tmdb_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MovieModel = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{num:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$num()I

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
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_38

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_38
    move-object v3, v4

    :goto_39
    const-string v5, "{stream_type:"

    .line 9
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_49
    move-object v3, v4

    :goto_4a
    const-string v5, "{stream_id:"

    .line 11
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    :cond_5a
    move-object v3, v4

    :goto_5b
    const-string v5, "{stream_icon:"

    .line 13
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    :cond_6b
    move-object v3, v4

    :goto_6c
    const-string v5, "{extension:"

    .line 15
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$extension()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$extension()Ljava/lang/String;

    move-result-object v3

    goto :goto_7d

    :cond_7c
    move-object v3, v4

    :goto_7d
    const-string v5, "{type:"

    .line 17
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    goto :goto_8e

    :cond_8d
    move-object v3, v4

    :goto_8e
    const-string v5, "{rating:"

    .line 19
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    goto :goto_9f

    :cond_9e
    move-object v3, v4

    :goto_9f
    const-string v5, "{category_id:"

    .line 21
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_af

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_b0

    :cond_af
    move-object v3, v4

    :goto_b0
    const-string v5, "{custom_sid:"

    .line 23
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c0

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v3

    goto :goto_c1

    :cond_c0
    move-object v3, v4

    :goto_c1
    const-string v5, "{added:"

    .line 25
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$added()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d1

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$added()Ljava/lang/String;

    move-result-object v3

    goto :goto_d2

    :cond_d1
    move-object v3, v4

    :goto_d2
    const-string v5, "{tmdb_id:"

    .line 27
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_e3

    :cond_e2
    move-object v3, v4

    :goto_e3
    const-string v5, "{pro:"

    .line 29
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$pro()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{time:"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$time()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{recent_mil:"

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$recent_mil()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_locked:"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$is_locked()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_favorite:"

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$is_favorite()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{is_recent:"

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$is_recent()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{category_name:"

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15f

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_160

    :cond_15f
    move-object v3, v4

    :goto_160
    const-string v5, "{url:"

    .line 55
    invoke-static {v0, v3, v1, v2, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16f

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v4

    :cond_16f
    const-string v2, "]"

    .line 57
    invoke-static {v0, v4, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

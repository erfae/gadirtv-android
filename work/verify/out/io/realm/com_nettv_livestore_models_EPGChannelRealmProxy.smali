.class public Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;
.super Lcom/nettv/livestore/models/EPGChannel;
.source "com_nettv_livestore_models_EPGChannelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$ClassNameHelper;,
        Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/models/EPGChannel;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;Lcom/nettv/livestore/models/EPGChannel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EPGChannel;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EPGChannel;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_b

    .line 2
    check-cast p3, Lcom/nettv/livestore/models/EPGChannel;

    return-object p3

    .line 3
    :cond_b
    const-class p3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 18
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 19
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 20
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 21
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 22
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 23
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 24
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 25
    iget-wide v1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 26
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v5

    .line 27
    sget-object p1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 28
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    const-class p5, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 29
    new-instance p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;

    invoke-direct {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;-><init>()V

    .line 30
    invoke-virtual {p1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 31
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;Lcom/nettv/livestore/models/EPGChannel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EPGChannel;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/nettv/livestore/models/EPGChannel;"
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
    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    return-object v0

    .line 9
    :cond_51
    invoke-static/range {p0 .. p5}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;Lcom/nettv/livestore/models/EPGChannel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;
    .registers 2

    new-instance v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/nettv/livestore/models/EPGChannel;IILjava/util/Map;)Lcom/nettv/livestore/models/EPGChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/EPGChannel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/nettv/livestore/models/EPGChannel;"
        }
    .end annotation

    if-gt p1, p2, :cond_cd

    if-nez p0, :cond_6

    goto/16 :goto_cd

    .line 1
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1c

    .line 2
    new-instance p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p2}, Lcom/nettv/livestore/models/EPGChannel;-><init>()V

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

    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    return-object p0

    .line 6
    :cond_25
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/nettv/livestore/models/EPGChannel;

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
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$num(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$Id(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$direct_source(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_locked(Z)V

    .line 24
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_favorite(Z)V

    .line 25
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_recent(Z)V

    .line 26
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$recent_pos(J)V

    .line 27
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$cell(I)V

    .line 28
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$channelID(I)V

    .line 29
    invoke-interface {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result p0

    invoke-interface {p2, p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$selected(Z)V

    return-object p2

    :cond_cd
    :goto_cd
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 1
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "EPGChannel"

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2
    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "num"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "name"

    .line 3
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

    const-string v2, "Id"

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "added"

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_id"

    .line 9
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "custom_sid"

    .line 10
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "tv_archive"

    .line 11
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "direct_source"

    .line 12
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "tv_archive_duration"

    .line 13
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "url"

    .line 14
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "category_name"

    .line 15
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 16
    sget-object v8, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "is_locked"

    const/4 v6, 0x1

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_favorite"

    .line 17
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "is_recent"

    .line 18
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 19
    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "recent_pos"

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "cell"

    .line 20
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "channelID"

    .line 21
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "selected"

    move-object v3, v8

    .line 22
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 23
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EPGChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p0, v0, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    const-string p2, "num"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$num(Ljava/lang/String;)V

    goto :goto_26

    .line 6
    :cond_1f
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$num(Ljava/lang/String;)V

    :cond_26
    :goto_26
    const-string p2, "name"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 9
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_3f

    .line 10
    :cond_38
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    const-string p2, "stream_type"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 13
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_58

    .line 14
    :cond_51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    :cond_58
    :goto_58
    const-string p2, "stream_id"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 17
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    goto :goto_71

    .line 18
    :cond_6a
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    :cond_71
    :goto_71
    const-string p2, "stream_icon"

    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 21
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto :goto_8a

    .line 22
    :cond_83
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    const-string p2, "Id"

    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 25
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$Id(Ljava/lang/String;)V

    goto :goto_a3

    .line 26
    :cond_9c
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$Id(Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    const-string p2, "added"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 29
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto :goto_bc

    .line 30
    :cond_b5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    const-string p2, "category_id"

    .line 31
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 33
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto :goto_d5

    .line 34
    :cond_ce
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    :cond_d5
    :goto_d5
    const-string p2, "custom_sid"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 37
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto :goto_ee

    .line 38
    :cond_e7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    :cond_ee
    :goto_ee
    const-string p2, "tv_archive"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 41
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive(Ljava/lang/String;)V

    goto :goto_107

    .line 42
    :cond_100
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive(Ljava/lang/String;)V

    :cond_107
    :goto_107
    const-string p2, "direct_source"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 45
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$direct_source(Ljava/lang/String;)V

    goto :goto_120

    .line 46
    :cond_119
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$direct_source(Ljava/lang/String;)V

    :cond_120
    :goto_120
    const-string p2, "tv_archive_duration"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 49
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    goto :goto_139

    .line 50
    :cond_132
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    :cond_139
    :goto_139
    const-string p2, "url"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 53
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto :goto_152

    .line 54
    :cond_14b
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    :cond_152
    :goto_152
    const-string p2, "category_name"

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 57
    invoke-interface {p0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto :goto_16b

    .line 58
    :cond_164
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    :cond_16b
    :goto_16b
    const-string p2, "is_locked"

    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 60
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 61
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_locked(Z)V

    goto :goto_189

    .line 62
    :cond_181
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_locked\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_189
    :goto_189
    const-string p2, "is_favorite"

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 65
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto :goto_1a7

    .line 66
    :cond_19f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_favorite\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a7
    :goto_1a7
    const-string p2, "is_recent"

    .line 67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1bd

    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto :goto_1c5

    .line 70
    :cond_1bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_recent\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c5
    :goto_1c5
    const-string p2, "recent_pos"

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 72
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$recent_pos(J)V

    goto :goto_1e3

    .line 74
    :cond_1db
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'recent_pos\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e3
    :goto_1e3
    const-string p2, "cell"

    .line 75
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$cell(I)V

    goto :goto_201

    .line 78
    :cond_1f9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'cell\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_201
    :goto_201
    const-string p2, "channelID"

    .line 79
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_217

    .line 81
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$channelID(I)V

    goto :goto_21f

    .line 82
    :cond_217
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'channelID\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21f
    :goto_21f
    const-string p2, "selected"

    .line 83
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_235

    .line 85
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$selected(Z)V

    goto :goto_23d

    .line 86
    :cond_235
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'selected\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23d
    :goto_23d
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EPGChannel;
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
    new-instance v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/EPGChannel;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2bf

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2b

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$num(Ljava/lang/String;)V

    goto :goto_8

    .line 8
    :cond_2b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$num(Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    const-string v2, "name"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_4a

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_8

    .line 13
    :cond_4a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

    goto :goto_8

    .line 18
    :cond_69
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_type(Ljava/lang/String;)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

    goto :goto_8

    .line 23
    :cond_88
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_id(Ljava/lang/String;)V

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 28
    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$stream_icon(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b1
    const-string v2, "Id"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$Id(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 33
    :cond_ca
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$Id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d2
    const-string v2, "added"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 38
    :cond_eb
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$added(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f3
    const-string v2, "category_id"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 43
    :cond_10c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_id(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_114
    const-string v2, "custom_sid"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 48
    :cond_12d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$custom_sid(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_135
    const-string v2, "tv_archive"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 53
    :cond_14e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_156
    const-string v2, "direct_source"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$direct_source(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 58
    :cond_16f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 59
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$direct_source(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_177
    const-string v2, "tv_archive_duration"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 63
    :cond_190
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_198
    const-string v2, "url"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1b1

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 68
    :cond_1b1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 69
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$url(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1b9
    const-string v2, "category_name"

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

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 73
    :cond_1d2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 74
    invoke-interface {v0, v3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$category_name(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1da
    const-string v2, "is_locked"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_1f3

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_locked(Z)V

    goto/16 :goto_8

    :cond_1f3
    const-string p0, "Trying to set non-nullable field \'is_locked\' to null."

    .line 78
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 79
    throw p0

    :cond_1fa
    const-string v2, "is_favorite"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 81
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_213

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_favorite(Z)V

    goto/16 :goto_8

    :cond_213
    const-string p0, "Trying to set non-nullable field \'is_favorite\' to null."

    .line 83
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 84
    throw p0

    :cond_21a
    const-string v2, "is_recent"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23a

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_233

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$is_recent(Z)V

    goto/16 :goto_8

    :cond_233
    const-string p0, "Trying to set non-nullable field \'is_recent\' to null."

    .line 88
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 89
    throw p0

    :cond_23a
    const-string v2, "recent_pos"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_253

    .line 92
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$recent_pos(J)V

    goto/16 :goto_8

    :cond_253
    const-string p0, "Trying to set non-nullable field \'recent_pos\' to null."

    .line 93
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 94
    throw p0

    :cond_25a
    const-string v2, "cell"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27a

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_273

    .line 97
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$cell(I)V

    goto/16 :goto_8

    :cond_273
    const-string p0, "Trying to set non-nullable field \'cell\' to null."

    .line 98
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 99
    throw p0

    :cond_27a
    const-string v2, "channelID"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29a

    .line 101
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_293

    .line 102
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$channelID(I)V

    goto/16 :goto_8

    :cond_293
    const-string p0, "Trying to set non-nullable field \'channelID\' to null."

    .line 103
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 104
    throw p0

    :cond_29a
    const-string v2, "selected"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ba

    .line 106
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2b3

    .line 107
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmSet$selected(Z)V

    goto/16 :goto_8

    :cond_2b3
    const-string p0, "Trying to set non-nullable field \'selected\' to null."

    .line 108
    invoke-static {p1, p0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 109
    throw p0

    .line 110
    :cond_2ba
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_8

    .line 111
    :cond_2bf
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 112
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/models/EPGChannel;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    sget-object v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    const-string v0, "EPGChannel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EPGChannel;",
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
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_70

    .line 9
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 10
    :cond_70
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7e

    .line 11
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 12
    :cond_7e
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 13
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 14
    :cond_8c
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9a

    .line 15
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 16
    :cond_9a
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a8

    .line 17
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 18
    :cond_a8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b6

    .line 19
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 20
    :cond_b6
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c4

    .line 21
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 22
    :cond_c4
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d2

    .line 23
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 24
    :cond_d2
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e0

    .line 25
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 26
    :cond_e0
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ee

    .line 27
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 28
    :cond_ee
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fc

    .line 29
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 30
    :cond_fc
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10a

    .line 31
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 32
    :cond_10a
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_118

    .line 33
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 34
    :cond_118
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_126

    .line 35
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 36
    :cond_126
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 37
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 38
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 39
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 40
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 41
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 42
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

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

    .line 43
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 45
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 46
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 47
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EPGChannel;

    .line 48
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 49
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

    .line 50
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

    .line 51
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 52
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8a

    .line 54
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 55
    :cond_8a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_99

    .line 56
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 57
    :cond_99
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a8

    .line 58
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 59
    :cond_a8
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 60
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 61
    :cond_b7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c6

    .line 62
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 63
    :cond_c6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d5

    .line 64
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 65
    :cond_d5
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e4

    .line 66
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 67
    :cond_e4
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f3

    .line 68
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 69
    :cond_f3
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_102

    .line 70
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 71
    :cond_102
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_111

    .line 72
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 73
    :cond_111
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_120

    .line 74
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 75
    :cond_120
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12f

    .line 76
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 77
    :cond_12f
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13e

    .line 78
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 79
    :cond_13e
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14d

    .line 80
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 81
    :cond_14d
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 82
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 83
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 84
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 85
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 86
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 87
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto/16 :goto_1b

    :cond_198
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/nettv/livestore/models/EPGChannel;",
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
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    .line 9
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_79

    .line 10
    :cond_71
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 11
    :goto_79
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_88

    .line 12
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_90

    .line 13
    :cond_88
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 14
    :goto_90
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9f

    .line 15
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a7

    .line 16
    :cond_9f
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 17
    :goto_a7
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b6

    .line 18
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_be

    .line 19
    :cond_b6
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 20
    :goto_be
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_cd

    .line 21
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d5

    .line 22
    :cond_cd
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 23
    :goto_d5
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e4

    .line 24
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ec

    .line 25
    :cond_e4
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 26
    :goto_ec
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fb

    .line 27
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_103

    .line 28
    :cond_fb
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 29
    :goto_103
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_112

    .line 30
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11a

    .line 31
    :cond_112
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 32
    :goto_11a
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_129

    .line 33
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_131

    .line 34
    :cond_129
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 35
    :goto_131
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_140

    .line 36
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_148

    .line 37
    :cond_140
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 38
    :goto_148
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_157

    .line 39
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15f

    .line 40
    :cond_157
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 41
    :goto_15f
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16e

    .line 42
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_176

    .line 43
    :cond_16e
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 44
    :goto_176
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_185

    .line 45
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18d

    .line 46
    :cond_185
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 47
    :goto_18d
    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19c

    .line 48
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a4

    .line 49
    :cond_19c
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 50
    :goto_1a4
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 51
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 52
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 53
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 54
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 55
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 56
    iget-wide v4, v13, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface/range {p1 .. p1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

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

    .line 57
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 59
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 60
    :goto_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_224

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nettv/livestore/models/EPGChannel;

    .line 62
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 63
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

    .line 64
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

    .line 65
    :cond_70
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 66
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8b

    .line 68
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_94

    .line 69
    :cond_8b
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 70
    :goto_94
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a4

    .line 71
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ad

    .line 72
    :cond_a4
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 73
    :goto_ad
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_bd

    .line 74
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c6

    .line 75
    :cond_bd
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 76
    :goto_c6
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d6

    .line 77
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_df

    .line 78
    :cond_d6
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 79
    :goto_df
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ef

    .line 80
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f8

    .line 81
    :cond_ef
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 82
    :goto_f8
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$Id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_108

    .line 83
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_111

    .line 84
    :cond_108
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 85
    :goto_111
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$added()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_121

    .line 86
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12a

    .line 87
    :cond_121
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 88
    :goto_12a
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13a

    .line 89
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_143

    .line 90
    :cond_13a
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 91
    :goto_143
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_153

    .line 92
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15c

    .line 93
    :cond_153
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 94
    :goto_15c
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16c

    .line 95
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_175

    .line 96
    :cond_16c
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 97
    :goto_175
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_185

    .line 98
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18e

    .line 99
    :cond_185
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 100
    :goto_18e
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19e

    .line 101
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a7

    .line 102
    :cond_19e
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 103
    :goto_1a7
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b7

    .line 104
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c0

    .line 105
    :cond_1b7
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 106
    :goto_1c0
    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d0

    .line 107
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d9

    .line 108
    :cond_1d0
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 109
    :goto_1d9
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_locked()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 110
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 111
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 112
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$recent_pos()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 113
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$cell()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 114
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$channelID()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 115
    iget-wide v5, v14, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {v15}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxyInterface;->realmGet$selected()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto/16 :goto_1b

    :cond_224
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
    check-cast p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 4
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 5
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 6
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 7
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$Id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$added()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cell()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$channelID()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$custom_sid()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$direct_source()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_locked()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_recent()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$num()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

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

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$recent_pos()J
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$selected()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_id()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tv_archive()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tv_archive_duration()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$Id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$added(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$cell(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$channelID(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$custom_sid(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$direct_source(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_locked(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$num(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$recent_pos(J)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$selected(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 5
    :cond_29
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_id(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$tv_archive(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$tv_archive_duration(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_2a

    .line 4
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v2, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 5
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v8, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_3c
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_55

    .line 7
    iget-object p1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v0, v0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->columnInfo:Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

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

    const-string v1, "EPGChannel = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{num:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$num()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    const-string v3, "}"

    const-string v4, ","

    const-string v5, "{name:"

    .line 5
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v2

    :goto_38
    const-string v5, "{stream_type:"

    .line 7
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_48
    move-object v1, v2

    :goto_49
    const-string v5, "{stream_id:"

    .line 9
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_59
    move-object v1, v2

    :goto_5a
    const-string v5, "{stream_icon:"

    .line 11
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    :cond_6a
    move-object v1, v2

    :goto_6b
    const-string v5, "{Id:"

    .line 13
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$Id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$Id()Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_7b
    move-object v1, v2

    :goto_7c
    const-string v5, "{added:"

    .line 15
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    goto :goto_8d

    :cond_8c
    move-object v1, v2

    :goto_8d
    const-string v5, "{category_id:"

    .line 17
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    :cond_9d
    move-object v1, v2

    :goto_9e
    const-string v5, "{custom_sid:"

    .line 19
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ae

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    goto :goto_af

    :cond_ae
    move-object v1, v2

    :goto_af
    const-string v5, "{tv_archive:"

    .line 21
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bf

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v1

    goto :goto_c0

    :cond_bf
    move-object v1, v2

    :goto_c0
    const-string v5, "{direct_source:"

    .line 23
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v1

    goto :goto_d1

    :cond_d0
    move-object v1, v2

    :goto_d1
    const-string v5, "{tv_archive_duration:"

    .line 25
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e1

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v1

    goto :goto_e2

    :cond_e1
    move-object v1, v2

    :goto_e2
    const-string v5, "{url:"

    .line 27
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f2

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    goto :goto_f3

    :cond_f2
    move-object v1, v2

    :goto_f3
    const-string v5, "{category_name:"

    .line 29
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_102

    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$category_name()Ljava/lang/String;

    move-result-object v2

    :cond_102
    const-string v1, "{is_locked:"

    .line 31
    invoke-static {v0, v2, v3, v4, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$is_locked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{is_favorite:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$is_favorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{is_recent:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$is_recent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{recent_pos:"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$recent_pos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{cell:"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$cell()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{channelID:"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$channelID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{selected:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->realmGet$selected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 57
    invoke-static {v0, v3, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

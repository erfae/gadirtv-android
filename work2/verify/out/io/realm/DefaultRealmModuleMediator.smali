.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_11
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 4
    move-object v4, p2

    check-cast v4, Lcom/nettv/livestore/models/SeriesModel;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;Lcom/nettv/livestore/models/SeriesModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 5
    :cond_38
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 6
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 7
    move-object v4, p2

    check-cast v4, Lcom/nettv/livestore/models/MovieModel;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;Lcom/nettv/livestore/models/MovieModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_5f
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 9
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 10
    move-object v4, p2

    check-cast v4, Lcom/nettv/livestore/models/EpisodeModel;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;Lcom/nettv/livestore/models/EpisodeModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 11
    :cond_86
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 12
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 13
    move-object v4, p2

    check-cast v4, Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;Lcom/nettv/livestore/models/EpisodeInfoModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 14
    :cond_ad
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 15
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 16
    move-object v4, p2

    check-cast v4, Lcom/nettv/livestore/models/EPGChannel;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;Lcom/nettv/livestore/models/EPGChannel;ZLjava/util/Map;Ljava/util/Set;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 17
    :cond_d4
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    const-string v0, "A class extending RealmObject must be provided"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    invoke-static {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    move-result-object p1

    return-object p1

    .line 4
    :cond_12
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    invoke-static {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1f
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7
    invoke-static {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2c
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 9
    invoke-static {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    move-result-object p1

    return-object p1

    .line 10
    :cond_39
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 11
    invoke-static {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    move-result-object p1

    return-object p1

    .line 12
    :cond_46
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 3
    check-cast p1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/SeriesModel;IILjava/util/Map;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_1e
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5
    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/MovieModel;IILjava/util/Map;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_33
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 7
    check-cast p1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/EpisodeModel;IILjava/util/Map;)Lcom/nettv/livestore/models/EpisodeModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_48
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 9
    check-cast p1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/EpisodeInfoModel;IILjava/util/Map;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_5d
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 11
    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->createDetachedCopy(Lcom/nettv/livestore/models/EPGChannel;IILjava/util/Map;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_72
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Lorg/json/JSONObject;",
            "Z)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "A class extending RealmObject must be provided"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {p2, p3, p4}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_18
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    invoke-static {p2, p3, p4}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_2b
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 7
    invoke-static {p2, p3, p4}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EpisodeModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_3e
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 9
    invoke-static {p2, p3, p4}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_51
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 11
    invoke-static {p2, p3, p4}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_64
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Landroid/util/JsonReader;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "A class extending RealmObject must be provided"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {p2, p3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 4
    :cond_18
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    invoke-static {p2, p3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 6
    :cond_2b
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 7
    invoke-static {p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EpisodeModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 8
    :cond_3e
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 9
    invoke-static {p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 10
    :cond_51
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 11
    invoke-static {p2, p3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 12
    :cond_64
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getClazzImpl(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "SeriesModel"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    const-class p1, Lcom/nettv/livestore/models/SeriesModel;

    return-object p1

    :cond_13
    const-string v0, "MovieModel"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5
    const-class p1, Lcom/nettv/livestore/models/MovieModel;

    return-object p1

    :cond_1e
    const-string v0, "EpisodeModel"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7
    const-class p1, Lcom/nettv/livestore/models/EpisodeModel;

    return-object p1

    :cond_29
    const-string v0, "EpisodeInfoModel"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 9
    const-class p1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    return-object p1

    :cond_34
    const-string v0, "EPGChannel"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 11
    const-class p1, Lcom/nettv/livestore/models/EPGChannel;

    return-object p1

    .line 12
    :cond_3f
    new-instance v0, Lio/realm/exceptions/RealmException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\'%s\' is not part of the schema for this Realm."

    .line 13
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 14
    throw v0

    .line 15
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A class extending RealmObject must be provided"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "A class extending RealmObject must be provided"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "SeriesModel"

    return-object p1

    .line 3
    :cond_10
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "MovieModel"

    return-object p1

    .line 4
    :cond_1b
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p1, "EpisodeModel"

    return-object p1

    .line 5
    :cond_26
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p1, "EpisodeInfoModel"

    return-object p1

    .line 6
    :cond_31
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p1, "EPGChannel"

    return-object p1

    .line 7
    :cond_3c
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public hasPrimaryKeyImpl(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_11
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3
    check-cast p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_20
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5
    check-cast p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_2f
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 7
    check-cast p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_3e
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 9
    check-cast p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_4d
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 11
    check-cast p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 12
    :cond_5c
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insert(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 17
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_26

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 18
    :goto_2a
    const-class v3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 19
    check-cast p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 20
    :cond_38
    const-class v3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 21
    check-cast p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 22
    :cond_46
    const-class v3, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 23
    check-cast p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 24
    :cond_54
    const-class v3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 25
    check-cast p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 26
    :cond_62
    const-class v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 27
    check-cast p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insert(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J

    .line 28
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 29
    const-class p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 30
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 31
    :cond_81
    const-class p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 32
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 33
    :cond_8d
    const-class p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    .line 34
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 35
    :cond_99
    const-class p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 36
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 37
    :cond_a5
    const-class p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b1

    .line 38
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 39
    :cond_b1
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 40
    :cond_b6
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_bb
    :goto_bb
    return-void
.end method

.method public insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_11
    const-class v1, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3
    check-cast p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_20
    const-class v1, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5
    check-cast p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_2f
    const-class v1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 7
    check-cast p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_3e
    const-class v1, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 9
    check-cast p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_4d
    const-class v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 11
    check-cast p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {p1, p2, p3}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J

    move-result-wide p1

    return-wide p1

    .line 12
    :cond_5c
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 17
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_26

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 18
    :goto_2a
    const-class v3, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 19
    check-cast p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/SeriesModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 20
    :cond_38
    const-class v3, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 21
    check-cast p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/MovieModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 22
    :cond_46
    const-class v3, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 23
    check-cast p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 24
    :cond_54
    const-class v3, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 25
    check-cast p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EpisodeInfoModel;Ljava/util/Map;)J

    goto :goto_6f

    .line 26
    :cond_62
    const-class v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 27
    check-cast p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-static {p1, p2, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/nettv/livestore/models/EPGChannel;Ljava/util/Map;)J

    .line 28
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 29
    const-class p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 30
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 31
    :cond_81
    const-class p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 32
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 33
    :cond_8d
    const-class p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    .line 34
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 35
    :cond_99
    const-class p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 36
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 37
    :cond_a5
    const-class p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b1

    .line 38
    invoke-static {p1, v0, v1}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_bb

    .line 39
    :cond_b1
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 40
    :cond_b6
    invoke-static {v2}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_bb
    :goto_bb
    return-void
.end method

.method public isEmbedded(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 2
    :cond_a
    const-class v0, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 3
    :cond_13
    const-class v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 4
    :cond_1c
    const-class v0, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    .line 5
    :cond_25
    const-class v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v1

    .line 6
    :cond_2e
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 2
    :try_start_8
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    const-string p2, "A class extending RealmObject must be provided"

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    const-class p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 5
    new-instance p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_90

    .line 6
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 7
    :cond_2f
    :try_start_2f
    const-class p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 8
    new-instance p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_90

    .line 9
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 10
    :cond_46
    :try_start_46
    const-class p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 11
    new-instance p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_90

    .line 12
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 13
    :cond_5d
    :try_start_5d
    const-class p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 14
    new-instance p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_90

    .line 15
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 16
    :cond_74
    :try_start_74
    const-class p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 17
    new-instance p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_90

    .line 18
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 19
    :cond_8b
    :try_start_8b
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p1

    .line 20
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 21
    throw p1
.end method

.method public transformerApplied()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;Lio/realm/RealmModel;Ljava/util/Map;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;TE;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    const-class p2, Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    .line 3
    const-class p2, Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    .line 4
    const-class p2, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_43

    .line 5
    const-class p2, Lcom/nettv/livestore/models/EpisodeInfoModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 6
    const-class p2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    const-string p1, "com.nettv.livestore.models.EPGChannel"

    .line 7
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 8
    :cond_37
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_3c
    const-string p1, "com.nettv.livestore.models.EpisodeInfoModel"

    .line 9
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_43
    const-string p1, "com.nettv.livestore.models.EpisodeModel"

    .line 10
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_4a
    const-string p1, "com.nettv.livestore.models.MovieModel"

    .line 11
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_51
    const-string p1, "com.nettv.livestore.models.SeriesModel"

    .line 12
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

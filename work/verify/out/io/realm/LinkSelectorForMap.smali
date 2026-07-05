.class Lio/realm/LinkSelectorForMap;
.super Lio/realm/SelectorForMap;
.source "TypeSelectorForMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/SelectorForMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getModelEntry(Lio/realm/BaseRealm;JLjava/lang/Object;)Ljava/util/Map$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "JTK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p2, p4, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public getRealmModel(Lio/realm/BaseRealm;J)Lio/realm/RealmModel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "J)TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRealmModel(Lio/realm/BaseRealm;J)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/realm/LinkSelectorForMap;->getRealmModel(Lio/realm/BaseRealm;J)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .registers 10
    .param p4    # Lio/realm/RealmModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "TK;TV;)TV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p3}, Lio/realm/internal/OsMap;->getModelRowKey(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p4, :cond_b

    .line 3
    invoke-virtual {p2, p3, v2}, Lio/realm/internal/OsMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_49

    .line 4
    :cond_b
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    iget-object v4, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmObjectSchema;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5
    invoke-virtual {p2, p3}, Lio/realm/internal/OsMap;->createAndPutEmbeddedObject(Ljava/lang/Object;)J

    move-result-wide p2

    .line 6
    move-object v3, p1

    check-cast v3, Lio/realm/Realm;

    invoke-static {v3, p4, p2, p3}, Lio/realm/CollectionUtils;->updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;J)V

    goto :goto_49

    .line 7
    :cond_26
    iget-object v3, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dictionary"

    invoke-static {p1, p4, v3, v4}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 8
    invoke-static {p1, p4}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p4

    :cond_38
    check-cast p4, Lio/realm/internal/RealmObjectProxy;

    .line 9
    invoke-interface {p4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p4

    invoke-virtual {p4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p4

    invoke-interface {p4}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-virtual {p2, p3, v3, v4}, Lio/realm/internal/OsMap;->putRow(Ljava/lang/Object;J)V

    :goto_49
    const-wide/16 p2, -0x1

    cmp-long p4, v0, p2

    if-nez p4, :cond_50

    return-object v2

    .line 10
    :cond_50
    iget-object p2, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v0, v1, p3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p4, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/LinkSelectorForMap;->putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

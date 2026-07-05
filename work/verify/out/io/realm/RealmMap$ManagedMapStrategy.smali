.class Lio/realm/RealmMap$ManagedMapStrategy;
.super Lio/realm/RealmMap$MapStrategy;
.source "RealmMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagedMapStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMap$MapStrategy<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final managedMapManager:Lio/realm/ManagedMapManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ManagedMapManager<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/ManagedMapManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/ManagedMapManager<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/realm/RealmMap$MapStrategy;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    return-void
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedMapManager;->addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public final addChangeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    invoke-direct {v1, p2}, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/ManagedMapManager;->addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1}, Lio/realm/ManagedMapManager;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1}, Lio/realm/ManagedMapManager;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lio/realm/RealmMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->freeze()Lio/realm/RealmMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmMap$ManagedMapStrategy;->freeze()Lio/realm/RealmMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    .line 2
    iget-object v0, v0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getValueClassName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    .line 2
    iget-object v0, v0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->isManaged()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->isValid()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1}, Lio/realm/ManagedMapManager;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedMapManager;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1}, Lio/realm/ManagedMapManager;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final removeAllChangeListeners()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    .line 2
    iget-object v1, v0, Lio/realm/ManagedMapManager;->baseRealm:Lio/realm/BaseRealm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 3
    iget-object v1, v0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v1}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 4
    iget-object v0, v0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    .line 5
    iget-object v0, v0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->stopListening()V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedMapManager;->removeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    invoke-direct {v1, p2}, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/ManagedMapManager;->removeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMap$ManagedMapStrategy;->managedMapManager:Lio/realm/ManagedMapManager;

    invoke-virtual {v0}, Lio/realm/ManagedMapManager;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

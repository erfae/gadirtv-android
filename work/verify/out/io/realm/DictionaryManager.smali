.class Lio/realm/DictionaryManager;
.super Lio/realm/ManagedMapManager;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedMapManager<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/MapValueOperator<",
            "Ljava/lang/String;",
            "TV;>;",
            "Lio/realm/TypeSelectorForMap<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedMapManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-void
.end method


# virtual methods
.method public final changeSetFactory(J)Lio/realm/MapChangeSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/realm/MapChangeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/realm/StringMapChangeSet;

    invoke-direct {v0, p1, p2}, Lio/realm/StringMapChangeSet;-><init>(J)V

    return-object v0
.end method

.method public final containsKeyInternal(Ljava/lang/Object;)Z
    .registers 4

    const-string v0, "Null keys are not allowed when calling \'containsKey\'."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1b

    .line 4
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    .line 5
    iget-object v0, v0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_1b
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Only String keys can be used with \'containsKey\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmMap;
    .registers 3

    .line 1
    iget-object p1, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lio/realm/BaseRealm;

    .line 2
    iget-object v0, p0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0, p1}, Lio/realm/TypeSelectorForMap;->freeze(Lio/realm/BaseRealm;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const-string v0, "Null keys are not allowed when calling \'get\'."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1b

    .line 4
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Only String keys can be used with \'containsKey\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/realm/DictionaryManager;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    const-string v0, "Null keys are not allowed."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :try_start_5
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/MapValueOperator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Data type mismatch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot insert null values in a dictionary marked with \'@Required\'."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_24
    throw p1
.end method

.method public final validateMap(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Null keys are not allowed."

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

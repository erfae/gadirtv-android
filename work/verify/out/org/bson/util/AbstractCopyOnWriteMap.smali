.class abstract Lorg/bson/util/AbstractCopyOnWriteMap;
.super Ljava/lang/Object;
.source "AbstractCopyOnWriteMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/util/AbstractCopyOnWriteMap$Mutable;,
        Lorg/bson/util/AbstractCopyOnWriteMap$Immutable;,
        Lorg/bson/util/AbstractCopyOnWriteMap$View;,
        Lorg/bson/util/AbstractCopyOnWriteMap$CollectionView;,
        Lorg/bson/util/AbstractCopyOnWriteMap$UnmodifiableIterator;,
        Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;,
        Lorg/bson/util/AbstractCopyOnWriteMap$Values;,
        Lorg/bson/util/AbstractCopyOnWriteMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "M::",
        "Ljava/util/Map<",
        "TK;TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final transient lock:Ljava/util/concurrent/locks/Lock;

.field private final view:Lorg/bson/util/AbstractCopyOnWriteMap$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/util/AbstractCopyOnWriteMap$View<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Ljava/util/Map<",
            "+TK;+TV;>;>(TN;",
            "Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    const-string v0, "map"

    .line 3
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    const-string p1, "viewType"

    .line 4
    invoke-static {p1, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;

    invoke-virtual {p1, p0}, Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;->get(Lorg/bson/util/AbstractCopyOnWriteMap;)Lorg/bson/util/AbstractCopyOnWriteMap$View;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->view:Lorg/bson/util/AbstractCopyOnWriteMap$View;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    iget-object p0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1

    .line 2
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 4
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final copy()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 3
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw v0
.end method

.method public abstract copy(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Ljava/util/Map<",
            "+TK;+TV;>;>(TN;)TM;"
        }
    .end annotation
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->view:Lorg/bson/util/AbstractCopyOnWriteMap$View;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap$View;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->view:Lorg/bson/util/AbstractCopyOnWriteMap$View;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap$View;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    .line 3
    :try_start_9
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_15

    .line 4
    :try_start_d
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_19

    .line 5
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_15
    move-exception p1

    .line 6
    :try_start_16
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    .line 7
    throw p1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    .line 8
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 5
    iget-object p1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception p1

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 3
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_28

    .line 4
    :try_start_11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_1d

    .line 5
    :try_start_15
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_28

    .line 6
    :goto_17
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_1d
    move-exception p1

    .line 7
    :try_start_1e
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    .line 8
    throw p1

    .line 9
    :cond_21
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_17

    :catchall_28
    move-exception p1

    .line 10
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    if-nez v0, :cond_14

    const/4 p1, 0x0

    .line 3
    :goto_e
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 4
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_23

    .line 5
    :try_start_18
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1f

    .line 6
    :try_start_1c
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    goto :goto_e

    :catchall_1f
    move-exception p1

    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    .line 7
    throw p1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    .line 8
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 10
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 11
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 12
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object p2

    .line 13
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_2b

    const/4 p1, 0x1

    .line 15
    :goto_23
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_29
    const/4 p1, 0x0

    goto :goto_23

    :catchall_2b
    move-exception p1

    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    if-nez v0, :cond_14

    const/4 p1, 0x0

    .line 10
    :goto_e
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 11
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_23

    .line 12
    :try_start_18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1f

    .line 13
    :try_start_1c
    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    goto :goto_e

    :catchall_1f
    move-exception p1

    iput-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    .line 14
    throw p1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    .line 15
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_2a

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2c

    const/4 p1, 0x1

    .line 6
    :goto_24
    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    goto :goto_24

    :catchall_2c
    move-exception p1

    iget-object p2, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final set(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    return-void
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap;->view:Lorg/bson/util/AbstractCopyOnWriteMap$View;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap$View;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

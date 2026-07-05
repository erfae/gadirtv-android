.class Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;
.super Lorg/bson/util/AbstractCopyOnWriteMap$CollectionView;
.source "AbstractCopyOnWriteMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/util/AbstractCopyOnWriteMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bson/util/AbstractCopyOnWriteMap$CollectionView<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/bson/util/AbstractCopyOnWriteMap;


# direct methods
.method private constructor <init>(Lorg/bson/util/AbstractCopyOnWriteMap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-direct {p0}, Lorg/bson/util/AbstractCopyOnWriteMap$CollectionView;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/util/AbstractCopyOnWriteMap;Lorg/bson/util/AbstractCopyOnWriteMap$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;-><init>(Lorg/bson/util/AbstractCopyOnWriteMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_25

    .line 5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_25
    move-exception v0

    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method public final getDelegate()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$000(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/bson/util/AbstractCopyOnWriteMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_35

    if-nez v0, :cond_1a

    const/4 p1, 0x0

    .line 3
    :goto_10
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 4
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_35

    .line 5
    :try_start_20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2e

    .line 6
    :try_start_28
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V

    goto :goto_10

    :catchall_2e
    move-exception p1

    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V

    .line 7
    throw p1
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    .line 8
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2d

    .line 3
    :try_start_f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_26

    .line 4
    :try_start_17
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_26
    move-exception p1

    .line 6
    :try_start_27
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V

    .line 7
    throw p1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    .line 8
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->copy()Ljava/util/Map;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2d

    .line 3
    :try_start_f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_26

    .line 4
    :try_start_17
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 5
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_26
    move-exception p1

    .line 6
    :try_start_27
    iget-object v1, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    invoke-virtual {v1, v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->set(Ljava/util/Map;)V

    .line 7
    throw p1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    .line 8
    iget-object v0, p0, Lorg/bson/util/AbstractCopyOnWriteMap$EntrySet;->this$0:Lorg/bson/util/AbstractCopyOnWriteMap;

    # getter for: Lorg/bson/util/AbstractCopyOnWriteMap;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/bson/util/AbstractCopyOnWriteMap;->access$100(Lorg/bson/util/AbstractCopyOnWriteMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

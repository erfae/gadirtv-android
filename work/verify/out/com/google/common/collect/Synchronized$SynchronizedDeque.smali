.class final Lcom/google/common/collect/Synchronized$SynchronizedDeque;
.super Lcom/google/common/collect/Synchronized$SynchronizedQueue;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronizedDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedQueue<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/Deque;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Ljava/util/Deque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    return-object v0
.end method

.method public final bridge synthetic delegate()Ljava/util/Queue;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public pop()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public push(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

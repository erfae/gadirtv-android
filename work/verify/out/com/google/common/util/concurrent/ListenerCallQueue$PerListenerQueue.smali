.class final Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerListenerQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public isThreadScheduled:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final labelQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final waitQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/ArrayDeque;

    .line 3
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/ArrayDeque;

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_6b

    .line 2
    :try_start_3
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3
    iget-object v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 4
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/ArrayDeque;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1f

    .line 5
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5f

    .line 6
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    const/4 v2, 0x0

    goto :goto_62

    .line 7
    :cond_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_5f

    .line 8
    :try_start_20
    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;->call(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_6b

    goto :goto_0

    :catch_26
    move-exception v2

    .line 9
    :try_start_27
    # getter for: Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/ListenerCallQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Exception while executing callback: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_6b

    goto :goto_0

    :catchall_5f
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    .line 10
    :goto_62
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_69

    :try_start_63
    throw v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    move v9, v2

    move-object v2, v0

    move v0, v9

    goto :goto_6c

    :catchall_69
    move-exception v0

    goto :goto_62

    :catchall_6b
    move-exception v2

    :goto_6c
    if-eqz v0, :cond_76

    .line 11
    monitor-enter p0

    .line 12
    :try_start_6f
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 13
    monitor-exit p0

    goto :goto_76

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw v0

    .line 14
    :cond_76
    :goto_76
    throw v2
.end method

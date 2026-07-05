.class final Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskNonReentrantExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;",
        ">;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public delegate:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public submitting:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public task:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ExecutionSequencer;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ExecutionSequencer;Lcom/google/common/util/concurrent/ExecutionSequencer$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ExecutionSequencer;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->trySetStarted()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->trySetCancelled()Z

    move-result p0

    return p0
.end method

.method private trySetCancelled()Z
    .registers 3

    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private trySetStarted()Z
    .registers 3

    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->STARTED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 2
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 3
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    return-void

    .line 4
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->submitting:Ljava/lang/Thread;

    .line 5
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/google/common/util/concurrent/ExecutionSequencer;->latestTaskQueue:Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;
    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionSequencer;->access$400(Lcom/google/common/util/concurrent/ExecutionSequencer;)Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->thread:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->submitting:Ljava/lang/Thread;

    if-ne v1, v3, :cond_3d

    .line 7
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    .line 8
    iget-object v1, v0, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextTask:Ljava/lang/Runnable;

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 9
    iput-object p1, v0, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextTask:Ljava/lang/Runnable;

    .line 10
    iget-object p1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, v0, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    goto :goto_4b

    .line 12
    :cond_3d
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 13
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->task:Ljava/lang/Runnable;

    .line 15
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_4e

    .line 16
    :goto_4b
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->submitting:Ljava/lang/Thread;

    return-void

    :catchall_4e
    move-exception p1

    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->submitting:Ljava/lang/Thread;

    .line 17
    throw p1
.end method

.method public run()V
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->submitting:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 4
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->task:Ljava/lang/Runnable;

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6
    :cond_16
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;-><init>(Lcom/google/common/util/concurrent/ExecutionSequencer$1;)V

    .line 7
    iput-object v0, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->thread:Ljava/lang/Thread;

    .line 8
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    # setter for: Lcom/google/common/util/concurrent/ExecutionSequencer;->latestTaskQueue:Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ExecutionSequencer;->access$402(Lcom/google/common/util/concurrent/ExecutionSequencer;Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;)Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;

    .line 9
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->sequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    .line 10
    :try_start_27
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 11
    iput-object v2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->task:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 13
    :goto_33
    iget-object v0, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextTask:Ljava/lang/Runnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3b

    const/4 v5, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    :goto_3c
    iget-object v6, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextExecutor:Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_41

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    and-int/2addr v3, v5

    if-eqz v3, :cond_4d

    .line 14
    iput-object v2, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextTask:Ljava/lang/Runnable;

    .line 15
    iput-object v2, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->nextExecutor:Ljava/util/concurrent/Executor;

    .line 16
    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_50

    goto :goto_33

    .line 17
    :cond_4d
    iput-object v2, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->thread:Ljava/lang/Thread;

    return-void

    :catchall_50
    move-exception v0

    iput-object v2, v1, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;->thread:Ljava/lang/Thread;

    .line 18
    throw v0
.end method

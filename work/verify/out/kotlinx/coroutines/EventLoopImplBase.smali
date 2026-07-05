.class public abstract Lkotlinx/coroutines/EventLoopImplBase;
.super Lkotlinx/coroutines/EventLoopImplPlatform;
.source "EventLoop.common.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 5 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,544:1\n51#2:545\n52#2,7:547\n20#3:546\n50#4:554\n155#5,2:555\n155#5,2:557\n155#5,2:560\n1#6:559\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n268#1:545\n268#1:547,7\n268#1:546\n279#1:554\n298#1:555,2\n325#1:557,2\n343#1:560,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008 \u0018\u00002\u00020\u00012\u00020\u0002:\u0004/012B\u0007\u00a2\u0006\u0004\u0008.\u0010\rJ\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\rJ%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00112\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\n\u0010\"\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008#\u0010$J\u001b\u0010%\u001a\u00020\u000b2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010\'\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\'\u0010(R$\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00068B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "Lkotlinx/coroutines/EventLoopImplPlatform;",
        "Lkotlinx/coroutines/Delay;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "task",
        "",
        "enqueueImpl",
        "(Ljava/lang/Runnable;)Z",
        "dequeue",
        "()Ljava/lang/Runnable;",
        "",
        "closeQueue",
        "()V",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "shouldUnpark",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z",
        "",
        "now",
        "delayedTask",
        "",
        "scheduleImpl",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I",
        "rescheduleAllDelayed",
        "shutdown",
        "timeMillis",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "continuation",
        "scheduleResumeAfterDelay",
        "(JLkotlinx/coroutines/CancellableContinuation;)V",
        "processNextEvent",
        "()J",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "block",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "enqueue",
        "(Ljava/lang/Runnable;)V",
        "schedule",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V",
        "value",
        "isCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "<init>",
        "DelayedResumeTask",
        "DelayedRunnableTask",
        "DelayedTask",
        "DelayedTaskQueue",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic _delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _isCompleted:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _queue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/EventLoopImplBase;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    return-void
.end method

.method public static final synthetic access$isCompleted(Lkotlinx/coroutines/EventLoopImplBase;)Z
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result p0

    return p0
.end method

.method private final closeQueue()V
    .registers 7

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 2
    sget-object v3, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    :cond_d
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    goto :goto_1b

    :cond_15
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_1b
    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_1e
    instance-of v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v3, :cond_28

    .line 4
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    return-void

    .line 5
    :cond_28
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v0, v3, :cond_2f

    return-void

    .line 6
    :cond_2f
    new-instance v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 7
    move-object v4, v0

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 8
    sget-object v4, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_3e
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v1, 0x1

    goto :goto_4c

    :cond_46
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_3e

    :goto_4c
    if-eqz v1, :cond_0

    return-void
.end method

.method private final dequeue()Ljava/lang/Runnable;
    .registers 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    instance-of v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v2, :cond_2c

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_18

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_18
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v3

    :cond_1e
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_0

    :cond_25
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1e

    goto :goto_0

    .line 6
    :cond_2c
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_33

    return-object v1

    .line 7
    :cond_33
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_35
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v1, 0x1

    goto :goto_44

    :cond_3d
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_35

    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private final enqueueImpl(Ljava/lang/Runnable;)Z
    .registers 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x1

    if-nez v0, :cond_21

    .line 3
    sget-object v3, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    :cond_10
    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    goto :goto_1e

    :cond_18
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    :goto_1e
    if-eqz v2, :cond_0

    return v1

    .line 4
    :cond_21
    instance-of v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v3, :cond_4a

    .line 5
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_49

    if-eq v4, v1, :cond_35

    const/4 v0, 0x2

    if-eq v4, v0, :cond_34

    goto :goto_0

    :cond_34
    return v2

    .line 6
    :cond_35
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v3

    :cond_3b
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_0

    :cond_42
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3b

    goto :goto_0

    :cond_49
    return v1

    .line 7
    :cond_4a
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v0, v3, :cond_51

    return v2

    .line 8
    :cond_51
    new-instance v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 9
    move-object v4, v0

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 10
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 11
    sget-object v4, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_63
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    const/4 v2, 0x1

    goto :goto_71

    :cond_6b
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_63

    :goto_71
    if-eqz v2, :cond_0

    return v1
.end method

.method private final isCompleted()Z
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    return v0
.end method

.method private final rescheduleAllDelayed()V
    .registers 5

    .line 1
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2
    :goto_1c
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v0, :cond_24

    move-object v0, v1

    goto :goto_2a

    :cond_24
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeFirstOrNull()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    :goto_2a
    if-nez v0, :cond_2d

    return-void

    .line 3
    :cond_2d
    invoke-virtual {p0, v2, v3, v0}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    goto :goto_1c
.end method

.method private final scheduleImpl(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .registers 8

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_8
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v0, :cond_2a

    .line 3
    sget-object v1, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    invoke-direct {v3, p1, p2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;-><init>(J)V

    :cond_16
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_23

    :cond_1d
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    :goto_23
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 5
    :cond_2a
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->scheduleTask(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I

    move-result p1

    return p1
.end method

.method private final setCompleted(Z)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    return-void
.end method

.method private final shouldUnpark(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    :goto_e
    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->unpark()V

    goto :goto_f

    .line 3
    :cond_a
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/DefaultExecutor;->enqueue(Ljava/lang/Runnable;)V

    :goto_f
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .registers 5
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/Delay$DefaultImpls;->invokeOnTimeout(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 4
    :cond_15
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_1a

    goto :goto_2b

    .line 5
    :cond_1a
    instance-of v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v2, :cond_25

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v1

    goto :goto_2c

    .line 6
    :cond_25
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_2c

    :goto_2b
    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    return v1
.end method

.method public processNextEvent()J
    .registers 10

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    .line 2
    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    const/4 v3, 0x0

    if-eqz v0, :cond_5b

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 4
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v4

    if-nez v4, :cond_1e

    move-object v4, v3

    goto :goto_26

    :cond_1e
    invoke-virtual {v4}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_26
    if-nez v4, :cond_2d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto :goto_31

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5
    :cond_31
    :goto_31
    monitor-enter v0

    .line 6
    :try_start_32
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v6
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_58

    if-nez v6, :cond_3b

    monitor-exit v0

    move-object v6, v3

    goto :goto_53

    .line 7
    :cond_3b
    :try_start_3b
    check-cast v6, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 8
    invoke-virtual {v6, v4, v5}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->timeToExecute(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_49

    .line 9
    invoke-direct {p0, v6}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v6

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    :goto_4a
    if-eqz v6, :cond_51

    .line 10
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v6
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_58

    goto :goto_52

    :cond_51
    move-object v6, v3

    .line 11
    :goto_52
    monitor-exit v0

    .line 12
    :goto_53
    check-cast v6, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez v6, :cond_31

    goto :goto_5b

    :catchall_58
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1

    .line 14
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->dequeue()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 16
    :cond_65
    invoke-super {p0}, Lkotlinx/coroutines/EventLoop;->getNextTime()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_6e

    goto :goto_bf

    .line 17
    :cond_6e
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_78

    goto :goto_85

    .line 18
    :cond_78
    instance-of v6, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v6, :cond_b8

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_bf

    .line 19
    :cond_85
    :goto_85
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v0, :cond_8d

    move-object v0, v3

    goto :goto_93

    :cond_8d
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    :goto_93
    if-nez v0, :cond_96

    goto :goto_be

    .line 20
    :cond_96
    iget-wide v4, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_9f

    goto :goto_a7

    :cond_9f
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_a7
    if-nez v3, :cond_ae

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    goto :goto_b2

    :cond_ae
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_b2
    sub-long/2addr v4, v6

    invoke-static {v4, v5, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    goto :goto_bf

    .line 21
    :cond_b8
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v0, v3, :cond_bf

    :goto_be
    move-wide v1, v4

    :cond_bf
    :goto_bf
    return-wide v1
.end method

.method public final resetAll()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .registers 6
    .param p3    # Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->scheduleImpl(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 p1, 0x2

    if-ne v0, p1, :cond_d

    goto :goto_26

    .line 2
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    goto :goto_26

    .line 5
    :cond_1d
    invoke-direct {p0, p3}, Lkotlinx/coroutines/EventLoopImplBase;->shouldUnpark(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->unpark()V

    :cond_26
    :goto_26
    return-void
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .registers 7
    .param p3    # Lkotlinx/coroutines/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-gez v2, :cond_34

    .line 2
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_1d

    :cond_15
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_28

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    :goto_28
    new-instance v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;-><init>(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V

    .line 4
    invoke-static {p3, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    :cond_34
    return-void
.end method

.method public shutdown()V
    .registers 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->resetEventLoop$kotlinx_coroutines_core()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/EventLoopImplBase;->setCompleted(Z)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->closeQueue()V

    .line 4
    :goto_c
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_17

    goto :goto_c

    .line 5
    :cond_17
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->rescheduleAllDelayed()V

    return-void
.end method

.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;,
        Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final MAX_BUSY_WAIT_SPINS:I = 0x3e8

.field private static final PARKED:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method private waitForInterrupt(Ljava/lang/Thread;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_a
    instance-of v5, v0, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    if-nez v5, :cond_19

    sget-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v0, v6, :cond_13

    goto :goto_19

    :cond_13
    if-eqz v3, :cond_18

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    return-void

    :cond_19
    :goto_19
    if-eqz v5, :cond_1e

    .line 4
    move-object v2, v0

    check-cast v2, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    :cond_1e
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x3e8

    if-le v4, v6, :cond_3e

    .line 5
    sget-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v0, v6, :cond_2e

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6
    :cond_2e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_39

    if-eqz v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    .line 7
    :goto_3a
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_41

    .line 8
    :cond_3e
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 9
    :cond_41
    :goto_41
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_a
.end method


# virtual methods
.method public abstract afterRanInterruptiblyFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract afterRanInterruptiblySuccess(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final interruptTask()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_48

    .line 3
    new-instance v1, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask;Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    # invokes: Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->setOwner(Ljava/lang/Thread;)V
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->access$200(Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;Ljava/lang/Thread;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 6
    :try_start_1d
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_35

    .line 7
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 8
    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_48

    .line 9
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_48

    :catchall_35
    move-exception v1

    .line 10
    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 11
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_47

    .line 12
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 13
    :cond_47
    throw v1

    :cond_48
    :goto_48
    return-void
.end method

.method public abstract isDone()Z
.end method

.method public final run()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    .line 3
    :cond_c
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    .line 4
    :try_start_14
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_19

    goto :goto_2b

    :catchall_19
    move-exception v1

    .line 5
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 6
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->waitForInterrupt(Ljava/lang/Thread;)V

    :cond_25
    if-eqz v2, :cond_3b

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptiblyFailure(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 8
    :cond_2b
    :goto_2b
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 9
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->waitForInterrupt(Ljava/lang/Thread;)V

    :cond_36
    if-eqz v2, :cond_3b

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptiblySuccess(Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public abstract runInterruptibly()Ljava/lang/Object;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract toPendingString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_d

    const-string v0, "running=[DONE]"

    goto :goto_2f

    .line 3
    :cond_d
    instance-of v1, v0, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    if-eqz v1, :cond_14

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_2f

    .line 4
    :cond_14
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2d

    .line 5
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    .line 6
    invoke-static {v0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "running=[RUNNING ON "

    const-string v3, "]"

    .line 7
    invoke-static {v1, v2, v0, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2d
    const-string v0, "running=[NOT STARTED YET]"

    .line 8
    :goto_2f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->toPendingString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 9
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ", "

    .line 10
    invoke-static {v2, v0, v3, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/common/util/concurrent/ExecutionSequencer$3;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$newFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic val$oldFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;

.field public final synthetic val$taskFuture:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/TrustedListenableFutureTask;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;)V
    .registers 6

    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$taskFuture:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$newFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$oldFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p5, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$taskFuture:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$newFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$oldFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_26

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;

    # invokes: Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->trySetCancelled()Z
    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->access$300(Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$3;->val$taskFuture:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->cancel(Z)Z

    :cond_26
    :goto_26
    return-void
.end method

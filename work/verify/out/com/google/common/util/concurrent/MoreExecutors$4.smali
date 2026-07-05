.class Lcom/google/common/util/concurrent/MoreExecutors$4;
.super Lcom/google/common/util/concurrent/WrappingScheduledExecutorService;
.source "MoreExecutors.java"


# instance fields
.field public final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/WrappingScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public final wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/google/common/util/concurrent/Callables$3;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/Callables$3;-><init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

.class public Lcom/androidnetworking/internal/ANRequestQueue;
.super Ljava/lang/Object;
.source "ANRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidnetworking/internal/ANRequestQueue$RequestFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANRequestQueue"

.field private static sInstance:Lcom/androidnetworking/internal/ANRequestQueue;


# instance fields
.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/androidnetworking/common/ANRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private cancel(Lcom/androidnetworking/internal/ANRequestQueue$RequestFilter;Z)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidnetworking/common/ANRequest;

    .line 64
    invoke-interface {p1, v2}, Lcom/androidnetworking/internal/ANRequestQueue$RequestFilter;->apply(Lcom/androidnetworking/common/ANRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v2, p2}, Lcom/androidnetworking/common/ANRequest;->cancel(Z)V

    .line 66
    invoke-virtual {v2}, Lcom/androidnetworking/common/ANRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/androidnetworking/common/ANRequest;->destroy()V

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/androidnetworking/internal/ANRequestQueue;
    .locals 2

    .line 44
    sget-object v0, Lcom/androidnetworking/internal/ANRequestQueue;->sInstance:Lcom/androidnetworking/internal/ANRequestQueue;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/androidnetworking/internal/ANRequestQueue;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/androidnetworking/internal/ANRequestQueue;->sInstance:Lcom/androidnetworking/internal/ANRequestQueue;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/androidnetworking/internal/ANRequestQueue;

    invoke-direct {v1}, Lcom/androidnetworking/internal/ANRequestQueue;-><init>()V

    sput-object v1, Lcom/androidnetworking/internal/ANRequestQueue;->sInstance:Lcom/androidnetworking/internal/ANRequestQueue;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/androidnetworking/internal/ANRequestQueue;->sInstance:Lcom/androidnetworking/internal/ANRequestQueue;

    return-object v0
.end method

.method public static initialize()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 125
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-virtual {p0}, Lcom/androidnetworking/internal/ANRequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->setSequenceNumber(I)V

    .line 130
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getPriority()Lcom/androidnetworking/common/Priority;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->IMMEDIATE:Lcom/androidnetworking/common/Priority;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forImmediateNetworkTasks()Lcom/androidnetworking/core/ANExecutor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/internal/InternalRunnable;

    invoke-direct {v1, p1}, Lcom/androidnetworking/internal/InternalRunnable;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/androidnetworking/core/ANExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_1

    .line 136
    :cond_0
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forNetworkTasks()Lcom/androidnetworking/core/ANExecutor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/internal/InternalRunnable;

    invoke-direct {v1, p1}, Lcom/androidnetworking/internal/InternalRunnable;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/androidnetworking/core/ANExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1

    .line 127
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public cancelAll(Z)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidnetworking/common/ANRequest;

    .line 83
    invoke-virtual {v2, p1}, Lcom/androidnetworking/common/ANRequest;->cancel(Z)V

    .line 84
    invoke-virtual {v2}, Lcom/androidnetworking/common/ANRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v2}, Lcom/androidnetworking/common/ANRequest;->destroy()V

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancelRequestWithGivenTag(Ljava/lang/Object;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Lcom/androidnetworking/internal/ANRequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/androidnetworking/internal/ANRequestQueue$1;-><init>(Lcom/androidnetworking/internal/ANRequestQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/androidnetworking/internal/ANRequestQueue;->cancel(Lcom/androidnetworking/internal/ANRequestQueue$RequestFilter;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finish(Lcom/androidnetworking/common/ANRequest;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/androidnetworking/internal/ANRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

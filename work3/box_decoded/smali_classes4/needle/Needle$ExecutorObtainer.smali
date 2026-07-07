.class Lneedle/Needle$ExecutorObtainer;
.super Ljava/lang/Object;
.source "Needle.java"

# interfaces
.implements Lneedle/BackgroundThreadExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lneedle/Needle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutorObtainer"
.end annotation


# static fields
.field private static sCachedExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lneedle/Needle$ExecutorId;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDesiredTaskType:Ljava/lang/String;

.field private mDesiredThreadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    const-string v0, "default"

    .line 45
    iput-object v0, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lneedle/Needle$ExecutorObtainer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method getExecutor()Ljava/util/concurrent/Executor;
    .locals 4

    .line 77
    new-instance v0, Lneedle/Needle$ExecutorId;

    iget v1, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    iget-object v2, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lneedle/Needle$ExecutorId;-><init>(ILjava/lang/String;Lneedle/Needle$1;)V

    .line 78
    const-class v1, Lneedle/Needle$ExecutorObtainer;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v2, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 81
    iget v2, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 82
    sget-object v3, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serially()Lneedle/BackgroundThreadExecutor;
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lneedle/Needle$ExecutorObtainer;->withThreadPoolSize(I)Lneedle/BackgroundThreadExecutor;

    return-object p0
.end method

.method public withTaskType(Ljava/lang/String;)Lneedle/BackgroundThreadExecutor;
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    return-object p0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Task type cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withThreadPoolSize(I)Lneedle/BackgroundThreadExecutor;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 67
    iput p1, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    return-object p0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Thread pool size cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

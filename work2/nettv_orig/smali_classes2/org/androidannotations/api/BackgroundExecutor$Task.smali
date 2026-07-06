.class public abstract Lorg/androidannotations/api/BackgroundExecutor$Task;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/BackgroundExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field private executionAsked:Z

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private managed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private remainingDelay:I

.field private serial:Ljava/lang/String;

.field private targetTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->id:Ljava/lang/String;

    :cond_0
    if-lez p2, :cond_1

    .line 5
    iput p2, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->remainingDelay:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long p1, p2

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->targetTimeMillis:J

    .line 7
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iput-object p3, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->serial:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->serial:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/androidannotations/api/BackgroundExecutor$Task;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->executionAsked:Z

    return p0
.end method

.method public static synthetic access$102(Lorg/androidannotations/api/BackgroundExecutor$Task;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->executionAsked:Z

    return-void
.end method

.method public static synthetic access$200(Lorg/androidannotations/api/BackgroundExecutor$Task;)I
    .locals 0

    iget p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->remainingDelay:I

    return p0
.end method

.method public static synthetic access$300(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/androidannotations/api/BackgroundExecutor$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->future:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/androidannotations/api/BackgroundExecutor$Task;)V
    .locals 0

    invoke-direct {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->postExecute()V

    return-void
.end method

.method private postExecute()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->serial:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/androidannotations/api/BackgroundExecutor;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    const-class v0, Lorg/androidannotations/api/BackgroundExecutor;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/BackgroundExecutor;->access$800()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->serial:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v1}, Lorg/androidannotations/api/BackgroundExecutor;->access$900(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget v2, v1, Lorg/androidannotations/api/BackgroundExecutor$Task;->remainingDelay:I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 8
    iget-wide v3, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->targetTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lorg/androidannotations/api/BackgroundExecutor$Task;->remainingDelay:I

    .line 9
    :cond_1
    invoke-static {v1}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/BackgroundExecutor;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->postExecute()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->postExecute()V

    throw v0
.end method

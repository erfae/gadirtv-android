.class public Lorg/androidannotations/api/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;,
        Lorg/androidannotations/api/BackgroundExecutor$Task;
    }
.end annotation


# static fields
.field public static DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor; = null

.field public static final DEFAULT_WRONG_THREAD_LISTENER:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

.field private static final TAG:Ljava/lang/String; = "BackgroundExecutor"

.field private static final currentSerial:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static executor:Ljava/util/concurrent/Executor;

.field private static final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/BackgroundExecutor$Task;",
            ">;"
        }
    .end annotation
.end field

.field private static wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lorg/androidannotations/api/BackgroundExecutor$1;

    invoke-direct {v0}, Lorg/androidannotations/api/BackgroundExecutor$1;-><init>()V

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->DEFAULT_WRONG_THREAD_LISTENER:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    .line 4
    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->currentSerial:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$700()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->currentSerial:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$800()Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$900(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;
    .locals 0

    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor;->take(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized cancelAll(Ljava/lang/String;Z)V
    .locals 7

    const-class v0, Lorg/androidannotations/api/BackgroundExecutor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    sget-object v3, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/androidannotations/api/BackgroundExecutor$Task;

    .line 3
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$300(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$400(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/Future;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$400(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$500(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$600(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$100(Lorg/androidannotations/api/BackgroundExecutor$Task;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "BackgroundExecutor"

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A task with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$300(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be cancelled (the executor set does not support it)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs checkBgThread([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v0, p0}, Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onBgExpected([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->currentSerial:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onWrongBgSerial(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_4
    sget-object v1, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v1, v0, p0}, Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onWrongBgSerial(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static checkUiThread()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v0}, Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onUiExpected()V

    :cond_0
    return-void
.end method

.method private static directExecute(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-lez p1, :cond_1

    .line 1
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->executor:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    .line 3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The executor set does not support scheduling"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    sget-object p1, Lorg/androidannotations/api/BackgroundExecutor;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lorg/androidannotations/api/BackgroundExecutor;->directExecute(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;I)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lorg/androidannotations/api/BackgroundExecutor;->directExecute(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 8
    new-instance v0, Lorg/androidannotations/api/BackgroundExecutor$2;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/androidannotations/api/BackgroundExecutor$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0, p2}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V
    .locals 3

    const-class v0, Lorg/androidannotations/api/BackgroundExecutor;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/androidannotations/api/BackgroundExecutor;->hasSerialRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$102(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    .line 3
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$200(Lorg/androidannotations/api/BackgroundExecutor$Task;)I

    move-result v1

    invoke-static {p0, v1}, Lorg/androidannotations/api/BackgroundExecutor;->directExecute(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    :goto_1
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$300(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    :cond_2
    invoke-static {p0, v1}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$402(Lorg/androidannotations/api/BackgroundExecutor$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 6
    sget-object v1, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static hasSerialRunning(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/BackgroundExecutor$Task;

    .line 2
    invoke-static {v1}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$100(Lorg/androidannotations/api/BackgroundExecutor$Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lorg/androidannotations/api/BackgroundExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static setWrongThreadListener(Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;)V
    .locals 0

    sput-object p0, Lorg/androidannotations/api/BackgroundExecutor;->wrongThreadListener:Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    return-void
.end method

.method private static take(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;
    .locals 4

    .line 1
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    sget-object v2, Lorg/androidannotations/api/BackgroundExecutor;->tasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/androidannotations/api/BackgroundExecutor$Task;

    invoke-static {v3}, Lorg/androidannotations/api/BackgroundExecutor$Task;->access$000(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/androidannotations/api/BackgroundExecutor$Task;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

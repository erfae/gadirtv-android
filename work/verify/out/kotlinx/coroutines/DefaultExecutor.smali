.class public final Lkotlinx/coroutines/DefaultExecutor;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u00c0\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\u0008\u0002\u00a2\u0006\u0004\u00081\u0010\u0017J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0014\u0010\u000c\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0004H\u0016J\u000f\u0010\u0018\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u000eR\u0014\u0010\u001c\u001a\u00020\u001b8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u000e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001fR\u001e\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u0012\u0004\u0008#\u0010\u0017R\u0014\u0010%\u001a\u00020$8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010&R\u0014\u0010(\u001a\u00020$8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008(\u0010&R\u0014\u0010)\u001a\u00020$8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008)\u0010&R\u0014\u0010*\u001a\u00020$8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008*\u0010&R\u0016\u0010+\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010&R\u0014\u0010,\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010-R\u0014\u00100\u001a\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010-\u00a8\u00062"
    }
    d2 = {
        "Lkotlinx/coroutines/DefaultExecutor;",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "shutdownError",
        "Ljava/lang/Thread;",
        "createThreadSync",
        "",
        "notifyStartup",
        "acknowledgeShutdownIfNeeded",
        "task",
        "enqueue",
        "shutdown",
        "",
        "timeMillis",
        "block",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnTimeout",
        "run",
        "ensureStarted$kotlinx_coroutines_core",
        "()V",
        "ensureStarted",
        "timeout",
        "shutdownForTests",
        "",
        "THREAD_NAME",
        "Ljava/lang/String;",
        "DEFAULT_KEEP_ALIVE_MS",
        "J",
        "KEEP_ALIVE_NANOS",
        "_thread",
        "Ljava/lang/Thread;",
        "get_thread$annotations",
        "",
        "FRESH",
        "I",
        "ACTIVE",
        "SHUTDOWN_REQ",
        "SHUTDOWN_ACK",
        "SHUTDOWN",
        "debugStatus",
        "isShutDown",
        "()Z",
        "isShutdownRequested",
        "isThreadPresent$kotlinx_coroutines_core",
        "isThreadPresent",
        "<init>",
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
.field private static final ACTIVE:I = 0x1

.field private static final DEFAULT_KEEP_ALIVE_MS:J = 0x3e8L

.field private static final FRESH:I = 0x0

.field public static final INSTANCE:Lkotlinx/coroutines/DefaultExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEEP_ALIVE_NANOS:J

.field private static final SHUTDOWN:I = 0x4

.field private static final SHUTDOWN_ACK:I = 0x3

.field private static final SHUTDOWN_REQ:I = 0x2

.field public static final THREAD_NAME:Ljava/lang/String; = "kotlinx.coroutines.DefaultExecutor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile _thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile debugStatus:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlinx/coroutines/DefaultExecutor;

    invoke-direct {v0}, Lkotlinx/coroutines/DefaultExecutor;-><init>()V

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/EventLoop;->incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_11
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 3
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1c

    .line 4
    :catch_18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    return-void
.end method

.method private final declared-synchronized acknowledgeShutdownIfNeeded()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x3

    .line 2
    :try_start_a
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->resetAll()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    .line 5
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized createThreadSync()Ljava/lang/Thread;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 5
    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic get_thread$annotations()V
    .registers 0

    return-void
.end method

.method private final isShutDown()Z
    .registers 3

    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private final isShutdownRequested()Z
    .registers 3

    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private final declared-synchronized notifyStartup()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x1

    .line 2
    :try_start_b
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    .line 4
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final shutdownError()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutDown()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->shutdownError()V

    .line 2
    :cond_9
    invoke-super {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized ensureStarted$kotlinx_coroutines_core()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->createThreadSync()Ljava/lang/Thread;

    .line 3
    :goto_7
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_11

    goto :goto_7

    .line 4
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->createThreadSync()Ljava/lang/Thread;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .registers 7
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

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p4, p1, v0

    if-gez p4, :cond_32

    .line 2
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object p4

    if-nez p4, :cond_15

    const/4 p4, 0x0

    goto :goto_1d

    :cond_15
    invoke-virtual {p4}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    :goto_1d
    if-nez p4, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_28

    :cond_24
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    :goto_28
    new-instance p4, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;

    add-long/2addr p1, v0

    invoke-direct {p4, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;-><init>(JLjava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, v0, v1, p4}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    goto :goto_34

    .line 5
    :cond_32
    sget-object p4, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    :goto_34
    return-object p4
.end method

.method public final isThreadPresent$kotlinx_coroutines_core()Z
    .registers 2

    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .registers 4
    .param p3    # Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->shutdownError()V

    return-void
.end method

.method public run()V
    .registers 13

    .line 1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->setEventLoop$kotlinx_coroutines_core(Lkotlinx/coroutines/EventLoop;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->registerTimeLoopThread()V

    :goto_f
    const/4 v0, 0x0

    .line 3
    :try_start_10
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->notifyStartup()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c0

    if-nez v1, :cond_2f

    .line 4
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 6
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 7
    :goto_25
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_2e
    return-void

    :cond_2f
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 8
    :cond_35
    :goto_35
    :try_start_35
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_88

    .line 10
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v9

    if-nez v9, :cond_4a

    move-object v9, v0

    goto :goto_52

    :cond_4a
    invoke-virtual {v9}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_52
    if-nez v9, :cond_59

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    goto :goto_5d

    :cond_59
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_5d
    cmp-long v11, v3, v1

    if-nez v11, :cond_64

    .line 11
    sget-wide v3, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_c0

    add-long/2addr v3, v9

    :cond_64
    sub-long v9, v3, v9

    cmp-long v11, v9, v7

    if-gtz v11, :cond_83

    .line 12
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 13
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 14
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_76

    goto :goto_79

    :cond_76
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 15
    :goto_79
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_82
    return-void

    .line 16
    :cond_83
    :try_start_83
    invoke-static {v5, v6, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    goto :goto_89

    :cond_88
    move-wide v3, v1

    :goto_89
    cmp-long v9, v5, v7

    if-lez v9, :cond_35

    .line 17
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v7
    :try_end_91
    .catchall {:try_start_83 .. :try_end_91} :catchall_c0

    if-eqz v7, :cond_ac

    .line 18
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 19
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 20
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_9f

    goto :goto_a2

    :cond_9f
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 21
    :goto_a2
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_ab
    return-void

    .line 22
    :cond_ac
    :try_start_ac
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v7

    if-nez v7, :cond_b4

    move-object v7, v0

    goto :goto_b9

    :cond_b4
    invoke-virtual {v7, p0, v5, v6}, Lkotlinx/coroutines/AbstractTimeSource;->parkNanos(Ljava/lang/Object;J)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_b9
    if-nez v7, :cond_35

    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_be
    .catchall {:try_start_ac .. :try_end_be} :catchall_c0

    goto/16 :goto_35

    :catchall_c0
    move-exception v1

    .line 23
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 25
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-nez v0, :cond_cd

    goto :goto_d0

    :cond_cd
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 26
    :goto_d0
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_d9
    throw v1
.end method

.method public shutdown()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 2
    invoke-super {p0}, Lkotlinx/coroutines/EventLoopImplBase;->shutdown()V

    return-void
.end method

.method public final declared-synchronized shutdownForTests(J)V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x2

    sput v2, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 3
    :cond_f
    :goto_f
    sget v2, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_40

    sget-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_40

    .line 4
    sget-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-nez v2, :cond_1d

    goto :goto_2f

    :cond_1d
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    goto :goto_2a

    :cond_25
    invoke-virtual {v3, v2}, Lkotlinx/coroutines/AbstractTimeSource;->unpark(Ljava/lang/Thread;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2a
    if-nez v3, :cond_2f

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 5
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    goto :goto_40

    .line 6
    :cond_3c
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_f

    :cond_40
    :goto_40
    const/4 p1, 0x0

    .line 7
    sput p1, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 8
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

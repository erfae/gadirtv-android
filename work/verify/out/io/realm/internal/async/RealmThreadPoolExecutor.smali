.class public Lio/realm/internal/async/RealmThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "RealmThreadPoolExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final QUEUE_SIZE:I = 0x64

.field private static final SYS_CPU_DIR:Ljava/lang/String; = "/sys/devices/system/cpu/"


# instance fields
.field private isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lio/realm/internal/async/RealmThreadPoolExecutor;->calculateCorePoolSize()I

    move-result v0

    sput v0, Lio/realm/internal/async/RealmThreadPoolExecutor;->CORE_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>(II)V
    .registers 10

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private static calculateCorePoolSize()I
    .registers 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/"

    const-string v1, "cpu[0-9]+"

    .line 1
    invoke-static {v0, v1}, Lio/realm/internal/async/RealmThreadPoolExecutor;->countFilesInDir(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_12

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    :cond_12
    const/4 v1, 0x1

    if-gtz v0, :cond_16

    goto :goto_19

    :cond_16
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :goto_19
    return v1
.end method

.method private static countFilesInDir(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lio/realm/internal/async/RealmThreadPoolExecutor$1;

    invoke-direct {p0, p1}, Lio/realm/internal/async/RealmThreadPoolExecutor$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_17

    .line 3
    :cond_16
    array-length v0, p0
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_17} :catch_17

    :catch_17
    :goto_17
    return v0
.end method

.method public static newDefaultExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;
    .registers 2

    new-instance v0, Lio/realm/internal/async/RealmThreadPoolExecutor;

    sget v1, Lio/realm/internal/async/RealmThreadPoolExecutor;->CORE_POOL_SIZE:I

    invoke-direct {v0, v1, v1}, Lio/realm/internal/async/RealmThreadPoolExecutor;-><init>(II)V

    return-object v0
.end method

.method public static newSingleThreadExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;
    .registers 2

    new-instance v0, Lio/realm/internal/async/RealmThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lio/realm/internal/async/RealmThreadPoolExecutor;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 2
    iget-object p2, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :goto_8
    :try_start_8
    iget-boolean p2, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->isPaused:Z

    if-eqz p2, :cond_12

    iget-object p2, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_1a
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    goto :goto_8

    .line 4
    :cond_12
    :goto_12
    iget-object p1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1e

    :catchall_18
    move-exception p1

    goto :goto_1f

    .line 5
    :catch_1a
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_18

    goto :goto_12

    :goto_1e
    return-void

    .line 6
    :goto_1f
    iget-object p2, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 2
    :try_start_6
    iput-boolean v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->isPaused:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_e

    .line 3
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw v0
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 2
    :try_start_6
    iput-boolean v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->isPaused:Z

    .line 3
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_13

    .line 4
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw v0
.end method

.method public submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/async/BgPriorityRunnable;

    invoke-direct {v0, p1}, Lio/realm/internal/async/BgPriorityRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

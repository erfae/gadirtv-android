.class Lcom/inka/ncg2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final MP_OPENCORE:I

.field protected final MP_STAGEFRIGHT:I

.field protected final MP_UNKNOWN:I

.field protected _backend:I

.field protected _socketPort:I

.field protected m_cpu_idle:F

.field protected m_cpu_nice:F

.field protected m_cpu_system:F

.field protected m_cpu_use:F

.field protected m_memory_free:I

.field protected m_memory_total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/inka/ncg2/f;->m_memory_total:I

    .line 16
    iput v0, p0, Lcom/inka/ncg2/f;->m_memory_free:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/inka/ncg2/f;->m_cpu_use:F

    .line 19
    iput v1, p0, Lcom/inka/ncg2/f;->m_cpu_nice:F

    .line 20
    iput v1, p0, Lcom/inka/ncg2/f;->m_cpu_system:F

    .line 21
    iput v1, p0, Lcom/inka/ncg2/f;->m_cpu_idle:F

    .line 26
    iput v0, p0, Lcom/inka/ncg2/f;->MP_UNKNOWN:I

    const/4 v1, 0x1

    .line 27
    iput v1, p0, Lcom/inka/ncg2/f;->MP_OPENCORE:I

    const/4 v1, 0x2

    .line 28
    iput v1, p0, Lcom/inka/ncg2/f;->MP_STAGEFRIGHT:I

    .line 29
    iput v0, p0, Lcom/inka/ncg2/f;->_backend:I

    return-void
.end method


# virtual methods
.method protected getMediaPlayerBackend()I
    .locals 8

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 34
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/inka/ncg2/f$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/inka/ncg2/f$1;-><init>(Lcom/inka/ncg2/f;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-wide/16 v3, 0x1f4

    .line 70
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "http://127.0.0.1:%d/"

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    iget v7, p0, Lcom/inka/ncg2/f;->_socketPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 85
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    :catch_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 91
    iget v0, p0, Lcom/inka/ncg2/f;->_backend:I

    return v0

    .line 80
    :catch_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return v5
.end method

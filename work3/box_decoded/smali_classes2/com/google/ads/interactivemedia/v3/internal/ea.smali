.class public final Lcom/google/ads/interactivemedia/v3/internal/ea;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/dz;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/dy;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/er;

.field private d:I

.field private e:Ljava/lang/Object;

.field private final f:Landroid/os/Handler;

.field private final g:I

.field private final h:J

.field private final i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dy;Lcom/google/ads/interactivemedia/v3/internal/dz;Lcom/google/ads/interactivemedia/v3/internal/er;ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:Lcom/google/ads/interactivemedia/v3/internal/dy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:Lcom/google/ads/interactivemedia/v3/internal/dz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->c:Lcom/google/ads/interactivemedia/v3/internal/er;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->f:Landroid/os/Handler;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->g:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->h:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->c:Lcom/google/ads/interactivemedia/v3/internal/er;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->j:Z

    xor-int/lit8 v0, v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->d:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->j:Z

    xor-int/lit8 v0, v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->e:Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->k:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->k:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->l:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:Lcom/google/ads/interactivemedia/v3/internal/dz;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->d:I

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public final f()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->g:I

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->j:Z

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->f:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->l:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 6
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->j:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:Lcom/google/ads/interactivemedia/v3/internal/dy;

    .line 7
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/dy;->a(Lcom/google/ads/interactivemedia/v3/internal/ea;)V

    return-void
.end method

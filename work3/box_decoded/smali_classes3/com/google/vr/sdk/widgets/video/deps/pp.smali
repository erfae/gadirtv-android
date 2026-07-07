.class public final Lcom/google/vr/sdk/widgets/video/deps/pp;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# instance fields
.field private a:J

.field private b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a(J)V

    return-void
.end method

.method public static d(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    .line 44
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static e(J)J
    .locals 2

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 45
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->a:J

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .locals 5

    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 6
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()J
    .locals 7

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->b:J

    add-long/2addr v2, v0

    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->a:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    move-wide v2, v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public b(J)J
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 21
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 22
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->e(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 23
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide p1, v6

    .line 29
    :cond_1
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->d(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 7

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->b:J

    :goto_0
    return-wide v2
.end method

.method public c(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 32
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 33
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    goto :goto_0

    .line 34
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    sub-long/2addr v0, p1

    .line 35
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->b:J

    .line 36
    :cond_2
    monitor-enter p0

    .line 37
    :try_start_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->b:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    return-void
.end method

.method public declared-synchronized e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pp;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

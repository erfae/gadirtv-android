.class public final Lcom/google/ads/interactivemedia/v3/internal/zt;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/ads/interactivemedia/v3/internal/za;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/ads/interactivemedia/v3/internal/za;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->a:Z

    const/high16 v1, 0x10000

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    const/16 v1, 0x64

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/internal/za;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->c:[B

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/za;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->d:[Lcom/google/ads/interactivemedia/v3/internal/za;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->e:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->e:I

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/ads/interactivemedia/v3/internal/za;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->d:[Lcom/google/ads/interactivemedia/v3/internal/za;

    const/4 v1, 0x0

    .line 6
    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a([Lcom/google/ads/interactivemedia/v3/internal/za;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a([Lcom/google/ads/interactivemedia/v3/internal/za;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    .line 8
    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    add-int/2addr v3, v3

    .line 9
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/za;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    :cond_0
    :goto_0
    if-ge v4, v0, :cond_1

    .line 11
    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    .line 12
    aput-object v1, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I

    .line 13
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

.method public final declared-synchronized b()Lcom/google/ads/interactivemedia/v3/internal/za;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    .line 3
    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I

    const/4 v3, 0x0

    .line 4
    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/za;

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/za;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->e:I

    const/high16 v2, 0x10000

    .line 16
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I

    sub-int/2addr v1, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->h:[Lcom/google/ads/interactivemedia/v3/internal/za;

    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zt;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x10000

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 1

    const/high16 v0, 0x10000

    return v0
.end method

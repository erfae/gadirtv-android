.class public final Lcom/google/vr/sdk/widgets/video/deps/nw;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nl;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/nk;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/vr/sdk/widgets/video/deps/nk;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/nw;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 6
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->a:Z

    .line 7
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    add-int/lit8 p1, p3, 0x64

    .line 9
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/nk;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 11
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    :goto_2
    if-ge v0, p3, :cond_3

    mul-int p1, v0, p2

    .line 14
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    invoke-direct {v3, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/nk;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    :cond_3
    new-array p1, v1, [Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->d:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/vr/sdk/widgets/video/deps/nk;
    .locals 4

    monitor-enter p0

    .line 27
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    if-lez v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 30
    aput-object v3, v1, v0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nk;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->e:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->e:I

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/nw;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/nk;)V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->d:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nw;->a([Lcom/google/vr/sdk/widgets/video/deps/nk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([Lcom/google/vr/sdk/widgets/video/deps/nk;)V
    .locals 6

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 37
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/nk;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 40
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 41
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    if-eq v3, v4, :cond_2

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    .line 43
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    .line 44
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    const/16 v4, 0x49

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected allocation: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 7

    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->e:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(II)I

    move-result v0

    .line 51
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 53
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 58
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    aget-object v3, v3, v1

    .line 59
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    aget-object v4, v4, v2

    .line 62
    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->c:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 65
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 69
    monitor-exit p0

    return-void

    .line 70
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->h:[Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 71
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I

    return v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nw;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->f:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nw;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

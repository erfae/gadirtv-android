.class public final Lcom/google/ads/interactivemedia/v3/internal/ie;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zl;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zl;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->b:Lcom/google/ads/interactivemedia/v3/internal/zl;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->d:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->a:[B

    return-void
.end method

.method private final a([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->b:Lcom/google/ads/interactivemedia/v3/internal/zl;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zl;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 23
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 21
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method private final c(I)V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    .line 4
    array-length p1, p1

    if-le v0, p1, :cond_0

    add-int/2addr p1, p1

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    :cond_0
    return-void
.end method

.method private final d(I)I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->e(I)V

    return p1
.end method

.method private final e([BII)I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    .line 18
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->e(I)V

    return p3
.end method

.method private final e(I)V
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    .line 37
    array-length v3, v2

    const/high16 v4, -0x80000

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 38
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 39
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    return-void
.end method

.method private final f(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->e([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result v0

    .line 16
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->f(I)V

    return v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    return-void
.end method

.method public final a(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d(I)I

    move-result v0

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->a:[B

    array-length v0, v0

    add-int/2addr v0, v5

    .line 34
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->a:[B

    neg-int v3, v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->f(I)V

    return-void
.end method

.method public final a(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c(I)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method public final a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->e([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->f(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->d:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(IZ)Z

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIZ)Z

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    sub-int/2addr v0, p3

    .line 13
    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c(I)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->g:I

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->e:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    .line 10
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->f:I

    return p3
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->c:J

    return-wide v0
.end method

.method public final d([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    return-void
.end method

.method public final e()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ie;->a:[B

    const/4 v4, 0x0

    array-length v1, v3

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIIZ)I

    move-result v1

    .line 30
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->f(I)V

    return v1
.end method

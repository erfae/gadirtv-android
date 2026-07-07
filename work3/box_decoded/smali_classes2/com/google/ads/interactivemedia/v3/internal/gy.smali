.class final Lcom/google/ads/interactivemedia/v3/internal/gy;
.super Lcom/google/ads/interactivemedia/v3/internal/gd;
.source "IMASDK"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:[B

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;-><init>()V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->d:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->e:I

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->g:I

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 13
    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/fh;->e:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->g:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->g:I

    add-int/2addr v0, v3

    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->g:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    .line 15
    array-length v3, v3

    sub-int/2addr v0, v3

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    const/4 v5, 0x0

    .line 17
    invoke-static {v0, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    .line 18
    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 19
    invoke-static {v0, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result v0

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    .line 23
    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fi;
        }
    .end annotation

    .line 5
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->f:Z

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->e:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    :cond_1
    :goto_0
    return-object p1

    .line 5
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fi;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fh;)V

    throw v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 8
    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fh;->e:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    :cond_1
    return-void
.end method

.method protected final i()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->f:Z

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->e:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 7
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fh;->e:I

    mul-int v0, v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->d:I

    mul-int v0, v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->g:I

    :cond_0
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->i:I

    return-void
.end method

.method protected final j()V
    .locals 1

    .line 9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->h:[B

    return-void
.end method

.method public final k()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    return-void
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy;->j:J

    return-wide v0
.end method

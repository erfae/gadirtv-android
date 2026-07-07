.class public final Lcom/google/ads/interactivemedia/v3/internal/gv;
.super Lcom/google/ads/interactivemedia/v3/internal/gd;
.source "IMASDK"


# instance fields
.field private final d:J

.field private final e:J

.field private final f:S

.field private g:I

.field private h:Z

.field private i:[B

.field private j:[B

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    const-wide/32 v0, 0x249f0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->d:J

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->e:J

    const/16 v0, 0x400

    iput-short v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->f:S

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    return-void
.end method

.method private final a(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 4
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private final a(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    const/4 v3, 0x0

    .line 56
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    .line 58
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final a([BI)V
    .locals 2

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/gd;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->n:Z

    :cond_0
    return-void
.end method

.method private final b(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    .line 7
    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->g()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gv;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    .line 52
    invoke-direct {p0, p1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    .line 53
    invoke-direct {p0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a([BI)V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gv;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    .line 37
    array-length v5, v4

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    sub-int/2addr v5, v6

    if-ge v1, v0, :cond_2

    if-ge v3, v5, :cond_2

    .line 47
    invoke-direct {p0, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a([BI)V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    .line 40
    invoke-virtual {p1, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    .line 41
    array-length v4, v1

    if-ne v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->n:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    .line 42
    invoke-direct {p0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a([BI)V

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    add-int/2addr v5, v5

    sub-int v5, v1, v5

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    .line 43
    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    move v3, v1

    goto :goto_1

    .line 46
    :cond_3
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    sub-int v1, v3, v1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    .line 44
    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    .line 43
    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    .line 45
    invoke-direct {p0, p1, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a(Ljava/nio/ByteBuffer;[BI)V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    .line 46
    :cond_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :cond_6
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 26
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_6

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    .line 27
    div-int/2addr v2, v3

    mul-int v2, v2, v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 29
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_8

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    goto :goto_3

    .line 30
    :cond_8
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 32
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/gd;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_9

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->n:Z

    .line 33
    :cond_9
    :goto_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->h:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->h:Z

    return v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fi;
        }
    .end annotation

    .line 9
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->h:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    return-object p1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fi;

    .line 10
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fh;)V

    throw v0
.end method

.method protected final h()V
    .locals 4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    .line 18
    invoke-direct {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a([BI)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->n:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    .line 19
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    :cond_1
    return-void
.end method

.method protected final i()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 11
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->e:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    const-wide/32 v0, 0x249f0

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    .line 13
    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->g:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    .line 16
    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 17
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->k:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->l:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->n:Z

    return-void
.end method

.method protected final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->h:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->m:I

    .line 20
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->i:[B

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->j:[B

    return-void
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gv;->o:J

    return-wide v0
.end method

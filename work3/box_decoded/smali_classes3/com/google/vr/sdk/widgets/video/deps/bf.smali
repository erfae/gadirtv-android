.class public final Lcom/google/vr/sdk/widgets/video/deps/bf;
.super Ljava/lang/Object;
.source "SilenceSkippingAudioProcessor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/an;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 6
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    return-void
.end method

.method private a(J)I
    .locals 2

    .line 131
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private a(I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 120
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->n:Z

    :cond_1
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 126
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 127
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([BI)V
    .locals 2

    .line 109
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(I)V

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->g(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 74
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->e(Ljava/nio/ByteBuffer;)V

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 78
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 80
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    array-length v4, v3

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    .line 82
    invoke-direct {p0, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a([BI)V

    .line 83
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    .line 84
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 87
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 88
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    .line 89
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 90
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->n:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 91
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a([BI)V

    .line 92
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    goto :goto_0

    .line 93
    :cond_1
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(Ljava/nio/ByteBuffer;[BI)V

    .line 95
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    .line 96
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    .line 97
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 101
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    .line 103
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    invoke-direct {p0, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a([BI)V

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 116
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 117
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private f(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 134
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method private g(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 139
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 25
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 29
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->h()V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/an$a;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 15
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:I

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    .line 18
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:I

    mul-int/lit8 p2, p2, 0x2

    .line 19
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/an$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/an$a;-><init>(III)V

    throw v0
.end method

.method public b()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->h:Z

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    if-lez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a([BI)V

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->n:Z

    if-nez v0, :cond_1

    .line 39
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    :cond_1
    return-void
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    .line 42
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x249f0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    mul-int v0, v0, v1

    .line 47
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 48
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    .line 50
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    :cond_1
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->k:I

    .line 53
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->g:Ljava/nio/ByteBuffer;

    .line 54
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->h:Z

    const-wide/16 v1, 0x0

    .line 55
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    .line 56
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->l:I

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->n:Z

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:Z

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->h()V

    .line 61
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:I

    .line 63
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:I

    .line 64
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->m:I

    new-array v1, v0, [B

    .line 65
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->i:[B

    new-array v0, v0, [B

    .line 66
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->j:[B

    return-void
.end method

.method public j()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->o:J

    return-wide v0
.end method

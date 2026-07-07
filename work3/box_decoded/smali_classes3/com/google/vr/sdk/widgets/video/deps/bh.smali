.class public final Lcom/google/vr/sdk/widgets/video/deps/bh;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/an;


# instance fields
.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Lcom/google/vr/sdk/widgets/video/deps/bg;

.field private i:Ljava/nio/ByteBuffer;

.field private j:Ljava/nio/ShortBuffer;

.field private k:Ljava/nio/ByteBuffer;

.field private l:J

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    .line 7
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->j:Ljava/nio/ShortBuffer;

    .line 9
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->g:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(FFF)F

    move-result p1

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->h()V

    return p1
.end method

.method public a(J)J
    .locals 15

    move-object v0, p0

    .line 24
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->m:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 25
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    if-ne v1, v2, :cond_0

    .line 26
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v1

    goto :goto_0

    .line 27
    :cond_0
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 29
    :cond_1
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 52
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    .line 53
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Ljava/nio/ShortBuffer;)V

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->c()I

    move-result p1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_3

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 58
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->j:Ljava/nio/ShortBuffer;

    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b(Ljava/nio/ShortBuffer;)V

    .line 63
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->m:J

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 3

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    sub-float/2addr v0, v1

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
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

    if-ne p3, v0, :cond_2

    .line 32
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->g:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_1
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    .line 37
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    .line 38
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/an$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/an$a;-><init>(III)V

    throw v0
.end method

.method public b(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 18
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(FFF)F

    move-result p1

    .line 19
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->h()V

    return p1
.end method

.method public b()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    return v0
.end method

.method public e()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a()V

    .line 69
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->n:Z

    return-void
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    .line 72
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 7

    .line 75
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bg;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/bg;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b()V

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    .line 81
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->m:J

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->n:Z

    return-void
.end method

.method public i()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:F

    .line 85
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:F

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->b:I

    .line 87
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->c:I

    .line 88
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->f:I

    .line 89
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->i:Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->j:Ljava/nio/ShortBuffer;

    .line 91
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->k:Ljava/nio/ByteBuffer;

    .line 92
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->g:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->h:Lcom/google/vr/sdk/widgets/video/deps/bg;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->l:J

    .line 95
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->m:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->n:Z

    return-void
.end method

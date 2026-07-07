.class public final Lcom/google/ads/interactivemedia/v3/internal/gx;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fj;


# instance fields
.field private b:I

.field private c:F

.field private d:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private h:Z

.field private i:Lcom/google/ads/interactivemedia/v3/internal/gw;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Ljava/nio/ShortBuffer;

.field private l:Ljava/nio/ByteBuffer;

.field private m:J

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->g:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->k:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->b:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 15

    move-object v0, p0

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->n:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->g:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 28
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    move-wide/from16 v1, p1

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    .line 30
    invoke-static/range {v9 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_1
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fi;
        }
    .end annotation

    .line 3
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 6
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->c:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/fh;-><init>(III)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->h:Z

    return-object v2

    .line 3
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fi;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fh;)V

    throw v0
.end method

.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->h:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    .line 13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a(Ljava/nio/ShortBuffer;)V

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->c()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 20
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->k:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->k:Ljava/nio/ShortBuffer;

    .line 23
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->k:Ljava/nio/ShortBuffer;

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gw;->b(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->n:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 10
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v0, v3

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->o:Z

    return-void
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->c()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final e()V
    .locals 5

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gx;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->g:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->h:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/gw;

    .line 8
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->c:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->g:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/gw;-><init>(IIFI)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->b()V

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->o:Z

    return-void
.end method

.method public final f()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->c:F

    .line 26
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->g:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->j:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->k:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gx;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->l:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->i:Lcom/google/ads/interactivemedia/v3/internal/gw;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->m:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->n:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gx;->o:Z

    return-void
.end method

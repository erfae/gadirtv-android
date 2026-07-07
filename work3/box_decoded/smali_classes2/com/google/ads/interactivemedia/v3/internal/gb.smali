.class final Lcom/google/ads/interactivemedia/v3/internal/gb;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private A:J

.field private B:J

.field private C:Z

.field private D:J

.field private E:J

.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ga;

.field private final b:[J

.field private c:Landroid/media/AudioTrack;

.field private d:I

.field private e:I

.field private f:Lcom/google/ads/interactivemedia/v3/internal/fz;

.field private g:I

.field private h:Z

.field private i:J

.field private j:F

.field private k:J

.field private l:J

.field private m:Ljava/lang/reflect/Method;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ga;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->a:Lcom/google/ads/interactivemedia/v3/internal/ga;

    .line 1
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->b:[J

    return-void
.end method

.method private final e()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->k:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->v:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->u:I

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->l:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->B:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->E:J

    return-void
.end method

.method private final f()J
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final g()J
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 33
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->w:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->w:J

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->g:I

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->z:J

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->y:J

    const-wide/16 v9, 0x3e8

    mul-long v0, v0, v9

    sub-long/2addr v0, v2

    int-to-long v2, v4

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long/2addr v7, v0

    .line 35
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->h:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    cmp-long v1, v7, v5

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->t:J

    :cond_2
    const/4 v1, 0x2

    :cond_3
    iget-wide v9, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->t:J

    add-long/2addr v7, v9

    .line 38
    :cond_4
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_7

    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    iget-wide v9, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_6

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_5

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    :cond_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    return-wide v0

    :cond_6
    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    :cond_7
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_8

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->s:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->s:J

    :cond_8
    iput-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->s:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private final g(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->g:I

    int-to-long v0, v0

    .line 3
    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final a(Z)J
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 5
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->f()J

    move-result-wide v14

    cmp-long v1, v14, v2

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long v12, v6, v4

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->l:J

    sub-long v6, v12, v6

    const-wide/16 v8, 0x7530

    const/4 v1, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->b:[J

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->u:I

    sub-long v8, v14, v12

    .line 8
    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    rem-int/2addr v7, v6

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->u:I

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->v:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->v:I

    :cond_1
    iput-wide v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->l:J

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->k:J

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->v:I

    if-ge v6, v7, :cond_2

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->k:J

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->b:[J

    .line 9
    aget-wide v16, v10, v6

    int-to-long v10, v7

    div-long v16, v16, v10

    add-long v8, v8, v16

    iput-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->k:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->h:Z

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 10
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v6, v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/fz;->a(J)Z

    move-result v7

    const-wide/32 v16, 0x4c4b40

    if-nez v7, :cond_3

    move-wide/from16 v18, v12

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fz;->e()J

    move-result-wide v10

    .line 13
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fz;->f()J

    move-result-wide v8

    sub-long v18, v10, v12

    .line 14
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    cmp-long v7, v18, v16

    if-lez v7, :cond_4

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->a:Lcom/google/ads/interactivemedia/v3/internal/ga;

    move-wide/from16 v18, v12

    .line 15
    invoke-interface/range {v7 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/ga;->b(JJJJ)V

    .line 16
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fz;->a()V

    goto :goto_1

    :cond_4
    move-wide/from16 v18, v12

    .line 17
    invoke-direct {v0, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g(J)J

    move-result-wide v12

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v7, v12, v16

    if-lez v7, :cond_5

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->a:Lcom/google/ads/interactivemedia/v3/internal/ga;

    move-wide/from16 v12, v18

    .line 18
    invoke-interface/range {v7 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(JJJJ)V

    .line 19
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fz;->a()V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fz;->b()V

    .line 11
    :goto_1
    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->p:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->m:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->q:J

    move-wide/from16 v9, v18

    sub-long v12, v9, v7

    const-wide/32 v7, 0x7a120

    cmp-long v11, v12, v7

    if-ltz v11, :cond_7

    :try_start_0
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 21
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    mul-long v6, v6, v4

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->i:J

    sub-long/2addr v6, v11

    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->n:J

    .line 22
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->n:J

    cmp-long v1, v6, v16

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->a:Lcom/google/ads/interactivemedia/v3/internal/ga;

    .line 23
    invoke-interface {v1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(J)V

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->m:Ljava/lang/reflect/Method;

    .line 23
    :cond_6
    :goto_2
    iput-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->q:J

    .line 24
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 25
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fz;->c()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 26
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fz;->f()J

    move-result-wide v2

    .line 27
    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g(J)J

    move-result-wide v2

    .line 28
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fz;->e()J

    move-result-wide v9

    sub-long v9, v6, v9

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->j:F

    .line 29
    invoke-static {v9, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JF)J

    move-result-wide v9

    add-long/2addr v2, v9

    goto :goto_5

    :cond_8
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->v:I

    if-nez v1, :cond_9

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->f()J

    move-result-wide v9

    goto :goto_4

    .line 31
    :cond_9
    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->k:J

    add-long/2addr v9, v6

    :goto_4
    if-nez p1, :cond_a

    .line 30
    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->n:J

    sub-long/2addr v9, v11

    .line 31
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_5

    :cond_a
    move-wide v2, v9

    .line 29
    :goto_5
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->C:Z

    if-eq v1, v8, :cond_b

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->B:J

    iput-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->E:J

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->A:J

    iput-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->D:J

    :cond_b
    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->E:J

    sub-long v9, v6, v9

    const-wide/32 v11, 0xf4240

    cmp-long v1, v9, v11

    if-gez v1, :cond_c

    mul-long v13, v9, v4

    div-long/2addr v13, v11

    mul-long v2, v2, v13

    sub-long v11, v4, v13

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->D:J

    add-long/2addr v13, v9

    mul-long v11, v11, v13

    add-long/2addr v2, v11

    div-long/2addr v2, v4

    :cond_c
    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->B:J

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->A:J

    iput-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gb;->C:Z

    return-wide v2
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 60
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fz;->d()V

    return-void
.end method

.method public final a(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->d:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->e:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 55
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fz;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 56
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->g:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 57
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-ge p2, v1, :cond_0

    const/4 p2, 0x5

    if-eq p3, p2, :cond_1

    const/4 p2, 0x6

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->h:Z

    .line 58
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->p:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_2

    .line 59
    div-int/2addr p5, p4

    int-to-long p4, p5

    invoke-direct {p0, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g(J)J

    move-result-wide p4

    goto :goto_1

    :cond_2
    move-wide p4, p2

    :goto_1
    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->i:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->r:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->s:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->t:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->o:Z

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->w:J

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->q:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->n:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->j:F

    return-void
.end method

.method public final a(J)Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 48
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->o:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->o:Z

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gb;->f(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->o:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->a:Lcom/google/ads/interactivemedia/v3/internal/ga;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->e:I

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->i:J

    .line 51
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(IJ)V

    :cond_3
    return v2
.end method

.method public final b(J)I
    .locals 6

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->d:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->e:I

    int-to-long v4, v2

    mul-long v0, v0, v4

    sub-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v3, p2

    return v3
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 46
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(J)J
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final c()Z
    .locals 5

    .line 52
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->e()V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    .line 53
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fz;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->f:Lcom/google/ads/interactivemedia/v3/internal/fz;

    return-void
.end method

.method public final d(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->x:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(J)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->y:J

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->w:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->z:J

    return-void
.end method

.method public final f(J)Z
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gb;->c:Landroid/media/AudioTrack;

    .line 44
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->g()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

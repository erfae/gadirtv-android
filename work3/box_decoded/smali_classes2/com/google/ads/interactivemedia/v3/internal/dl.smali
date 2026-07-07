.class final Lcom/google/ads/interactivemedia/v3/internal/dl;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ep;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/eq;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ev;

.field private final d:Landroid/os/Handler;

.field private e:J

.field private f:I

.field private g:Z

.field private h:Lcom/google/ads/interactivemedia/v3/internal/di;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/di;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/di;

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ev;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->c:Lcom/google/ads/interactivemedia/v3/internal/ev;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->d:Landroid/os/Handler;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/di;J)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->a()J

    move-result-wide v0

    .line 19
    iget-wide v2, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 20
    iget-boolean v0, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v3, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->f:I

    iget-boolean v5, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Lcom/google/ads/interactivemedia/v3/internal/eq;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    :cond_0
    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v1

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    .line 24
    iget-object v2, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    iget-object v2, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 25
    invoke-virtual {v8, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v2

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    if-ne v2, v0, :cond_3

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v2, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 27
    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 28
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 31
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    goto :goto_0

    .line 33
    :cond_2
    iget-wide v4, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->e:J

    :goto_0
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v12

    .line 31
    :goto_1
    iget-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-object/from16 v0, p1

    move-wide v2, v10

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJLcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;JJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    .line 34
    iget-object v10, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 35
    invoke-virtual {v8, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v3, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    :cond_5
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    .line 37
    invoke-virtual {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(II)I

    move-result v4

    if-gez v4, :cond_7

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 38
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(II)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v15

    :cond_6
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 39
    iget-wide v5, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;IIJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v0

    return-object v0

    .line 40
    :cond_7
    iget-wide v0, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v2, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 42
    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v15

    .line 43
    :cond_8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_9
    move-wide v3, v0

    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 44
    iget-wide v5, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 45
    iget-wide v1, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(J)I

    move-result v3

    if-ne v3, v14, :cond_b

    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 46
    iget-wide v5, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v5

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 47
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(I)I

    move-result v4

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 48
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(II)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v15

    :cond_c
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 49
    iget-wide v5, v11, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;IIJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;JJ)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 9

    .line 50
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 51
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 52
    iget p6, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    invoke-virtual {p5, p6, v0}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(II)Z

    move-result p5

    if-nez p5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget v3, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v4, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    iget-wide v7, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;IIJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-wide v7, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p5

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;IIJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 17

    move-object/from16 v0, p0

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ro;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-object/from16 v3, p1

    .line 56
    invoke-virtual {v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v1

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    move/from16 v2, p3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 59
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c()J

    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_1

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    .line 60
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_1
    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/dj;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v1, v14

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v15

    move/from16 v13, v16

    .line 61
    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/dj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V

    return-object v14
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJJ)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 62
    invoke-virtual {v1, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 63
    invoke-virtual {v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(J)I

    move-result v5

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-wide/from16 v8, p7

    .line 64
    invoke-direct {v7, v2, v8, v9, v5}, Lcom/google/ads/interactivemedia/v3/internal/ro;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result v2

    .line 65
    invoke-direct {v0, v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result v17

    .line 66
    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;Z)Z

    move-result v18

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 67
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_0

    :cond_0
    move-wide v12, v8

    :goto_0
    cmp-long v1, v12, v8

    if-eqz v1, :cond_2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v12, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v14, v12

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    move-wide v14, v5

    :goto_2
    cmp-long v1, v14, v8

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    add-long/2addr v5, v14

    .line 68
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v16, v2

    .line 69
    invoke-direct/range {v6 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/dj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V

    return-object v1
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJLcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 6

    .line 107
    invoke-virtual {p0, p1, p6}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 108
    invoke-virtual {p6, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    .line 109
    invoke-virtual {p6, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(J)I

    move-result p0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 110
    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/ads/interactivemedia/v3/internal/ro;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 111
    :cond_0
    invoke-virtual {p6, v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(I)I

    move-result v3

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ro;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    .line 115
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->f:I

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->g:Z

    move-object v2, p1

    .line 116
    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Lcom/google/ads/interactivemedia/v3/internal/eq;IZ)I

    move-result v3

    .line 117
    :goto_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 122
    :cond_2
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    .line 120
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 121
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)Z

    move-result v2

    .line 122
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual {p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/dj;)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    if-nez v2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;)Z
    .locals 3

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 83
    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 85
    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p1

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;Z)Z
    .locals 6

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 79
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 80
    invoke-virtual {p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p2

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 81
    invoke-virtual {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->i:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->b:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->f:I

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->g:Z

    move-object v0, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Lcom/google/ads/interactivemedia/v3/internal/eq;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final h()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->c:Lcom/google/ads/interactivemedia/v3/internal/ev;

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aop;->i()Lcom/google/ads/interactivemedia/v3/internal/aom;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 87
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aom;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 88
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 87
    :goto_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/dk;

    .line 89
    invoke-direct {v3, p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dl;Lcom/google/ads/interactivemedia/v3/internal/aom;Lcom/google/ads/interactivemedia/v3/internal/ro;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a([Lcom/google/ads/interactivemedia/v3/internal/ee;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/ds;Lcom/google/ads/interactivemedia/v3/internal/dj;Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 11

    move-object v0, p0

    move-object/from16 v8, p5

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v8, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move-wide v3, v4

    goto :goto_0

    :cond_0
    move-wide v3, v2

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/di;->a()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 15
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    sub-long/2addr v1, v3

    move-wide v3, v1

    .line 0
    :goto_0
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/di;

    move-object v1, v10

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/di;-><init>([Lcom/google/ads/interactivemedia/v3/internal/ee;JLcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/ds;Lcom/google/ads/interactivemedia/v3/internal/dj;Lcom/google/ads/interactivemedia/v3/internal/yx;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/di;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)V

    goto :goto_1

    .line 18
    :cond_2
    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    :goto_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->l:Ljava/lang/Object;

    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->h()V

    return-object v10
.end method

.method public final a(JLcom/google/ads/interactivemedia/v3/internal/du;)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-nez v0, :cond_0

    .line 70
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/internal/du;->c:J

    iget-wide v6, p3, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;JJ)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/di;J)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/dj;)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 13

    .line 72
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result v10

    .line 73
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result v11

    .line 74
    invoke-direct {p0, p1, v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/ro;Z)Z

    move-result v12

    .line 75
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    .line 76
    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c(II)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v8, v2

    goto :goto_1

    .line 77
    :cond_1
    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    goto :goto_0

    .line 76
    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 78
    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide v4, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v6, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/dj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;J)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->l:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 100
    invoke-virtual {p1, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v1

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->m:J

    :cond_0
    :goto_0
    move-wide v7, v0

    goto :goto_3

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    .line 101
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 102
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    .line 103
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 104
    invoke-virtual {p1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v3

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    if-ne v3, v0, :cond_4

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 105
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->e:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-nez v2, :cond_0

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->l:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->m:J

    goto :goto_0

    .line 100
    :goto_3
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    .line 106
    invoke-static/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;JJLcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->c(J)V

    :cond_0
    return-void
.end method

.method final synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aom;Lcom/google/ads/interactivemedia/v3/internal/ro;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->c:Lcom/google/ads/interactivemedia/v3/internal/ev;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aom;->a()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ev;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ro;)V

    return-void
.end method

.method public final a()Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 113
    iget-boolean v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/di;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 93
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object p1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v1, 0x1

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/di;->f()V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)V

    .line 97
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->h()V

    return v1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;I)Z
    .locals 0

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->f:I

    .line 132
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;JJ)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_c

    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 123
    invoke-virtual {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/dj;)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p2

    .line 124
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Lcom/google/ads/interactivemedia/v3/internal/di;J)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object v9

    if-nez v9, :cond_2

    .line 129
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    return v6

    .line 125
    :cond_2
    iget-wide v10, v5, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide v12, v9, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_a

    iget-object v10, v5, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v11, v9, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ro;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v3, v9

    .line 126
    :goto_1
    iget-wide v13, v5, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v9, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    cmp-long v11, v13, v9

    if-nez v11, :cond_3

    move-object v1, v3

    goto :goto_2

    .line 131
    :cond_3
    new-instance v22, Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-object v10, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v11, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    iget-wide v8, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-boolean v15, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    iget-boolean v4, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    iget-boolean v1, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    move-wide/from16 v17, v8

    move-object/from16 v9, v22

    move v8, v15

    move-wide v15, v6

    move/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v1

    .line 127
    invoke-direct/range {v9 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/dj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V

    move-object/from16 v1, v22

    .line 126
    :goto_2
    iput-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 128
    iget-wide v4, v5, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v8

    if-eqz v1, :cond_9

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    cmp-long v1, v6, v8

    if-nez v1, :cond_5

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {v2, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/di;->a(J)J

    move-result-wide v3

    .line 128
    :goto_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-ne v2, v1, :cond_7

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, p4, v5

    if-eqz v1, :cond_6

    cmp-long v1, p4, v3

    if-ltz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 131
    :goto_4
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v1, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    const/4 v2, 0x0

    return v2

    .line 128
    :cond_9
    :goto_5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/di;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    return v2

    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;Z)Z
    .locals 0

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->g:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->h()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->f()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 4
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->l:Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->m:J

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->h()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->l:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 12
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->f()V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/di;->g()Lcom/google/ads/interactivemedia/v3/internal/di;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->h:Lcom/google/ads/interactivemedia/v3/internal/di;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->j:Lcom/google/ads/interactivemedia/v3/internal/di;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->i:Lcom/google/ads/interactivemedia/v3/internal/di;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl;->k:I

    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dl;->h()V

    return-void
.end method

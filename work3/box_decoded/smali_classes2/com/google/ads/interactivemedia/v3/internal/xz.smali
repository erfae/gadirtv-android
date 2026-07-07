.class public final Lcom/google/ads/interactivemedia/v3/internal/xz;
.super Lcom/google/ads/interactivemedia/v3/internal/yb;
.source "IMASDK"


# instance fields
.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:F

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/abb;

.field private i:F

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/google/ads/interactivemedia/v3/internal/tu;

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/xx;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[ILcom/google/ads/interactivemedia/v3/internal/xx;JJJFLcom/google/ads/interactivemedia/v3/internal/abb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/yb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->n:Lcom/google/ads/interactivemedia/v3/internal/xx;

    const-wide/32 p1, 0x989680

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->d:J

    const-wide/32 p1, 0x17d7840

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->e:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->f:J

    const/high16 p1, 0x3f400000    # 0.75f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->g:F

    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->h:Lcom/google/ads/interactivemedia/v3/internal/abb;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->i:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->k:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->l:J

    return-void
.end method

.method private final a(J)I
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->n:Lcom/google/ads/interactivemedia/v3/internal/xx;

    .line 1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xx;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->b:I

    if-ge v2, v4, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_0

    .line 2
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/yb;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    .line 4
    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->i:F

    mul-float v3, v3, v4

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method private static a([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 23
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v4, :cond_1

    .line 24
    aget-object p3, p0, p2

    .line 25
    aget-object p3, p3, p1

    aput-wide v1, p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b([[J)[[[J
    .locals 18

    move-object/from16 v0, p0

    array-length v1, v0

    new-array v2, v1, [[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v4

    const/4 v5, 0x0

    :goto_1
    aget-object v8, v0, v4

    array-length v9, v8

    if-ge v5, v9, :cond_1

    aget-object v9, v2, v4

    aget-wide v10, v8, v5

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_0

    move-wide v10, v6

    goto :goto_2

    :cond_0
    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    :goto_2
    aput-wide v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v4, v1, [[D

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    aget-object v8, v2, v5

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    new-array v10, v9, [D

    aput-object v10, v4, v5

    if-nez v9, :cond_3

    goto :goto_6

    :cond_3
    aget-wide v9, v8, v9

    aget-wide v11, v8, v3

    sub-double/2addr v9, v11

    const/4 v8, 0x0

    :goto_4
    aget-object v11, v2, v5

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    if-ge v8, v12, :cond_5

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v11, v8

    aget-wide v15, v11, v12

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v15

    aget-object v15, v4, v5

    cmpl-double v16, v9, v6

    if-nez v16, :cond_4

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_4
    aget-wide v16, v11, v3

    sub-double v13, v13, v16

    div-double/2addr v13, v9

    :goto_5
    aput-wide v13, v15, v8

    move v8, v12

    goto :goto_4

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v5, v1, :cond_7

    aget-object v7, v4, v5

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x3

    add-int/2addr v6, v5

    new-array v5, v5, [I

    const/4 v7, 0x2

    aput v7, v5, v7

    const/4 v8, 0x1

    aput v6, v5, v8

    aput v1, v5, v3

    const-class v9, J

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[J

    new-array v9, v1, [I

    invoke-static {v5, v8, v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/xz;->a([[[JI[[J[I)V

    :goto_8
    add-int/lit8 v10, v6, -0x1

    if-ge v7, v10, :cond_b

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v1, :cond_a

    aget v14, v9, v12

    add-int/lit8 v15, v14, 0x1

    aget-object v3, v2, v12

    array-length v3, v3

    if-ne v15, v3, :cond_8

    goto :goto_a

    :cond_8
    aget-object v3, v4, v12

    aget-wide v14, v3, v14

    cmpg-double v3, v14, v10

    if-gez v3, :cond_9

    move v13, v12

    move-wide v10, v14

    :cond_9
    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_9

    :cond_a
    aget v3, v9, v13

    add-int/2addr v3, v8

    aput v3, v9, v13

    invoke-static {v5, v7, v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/xz;->a([[[JI[[J[I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    array-length v0, v5

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_c

    aget-object v2, v5, v1

    aget-object v3, v2, v10

    add-int/lit8 v4, v6, -0x2

    aget-object v2, v2, v4

    const/4 v4, 0x0

    aget-wide v11, v2, v4

    add-long/2addr v11, v11

    aput-wide v11, v3, v4

    aget-wide v11, v2, v8

    add-long/2addr v11, v11

    aput-wide v11, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    return-object v5
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->j:I

    return v0
.end method

.method public final a(JLjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)I"
        }
    .end annotation

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tu;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->m:Lcom/google/ads/interactivemedia/v3/internal/tu;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 7
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->l:J

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tu;

    :goto_1
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->m:Lcom/google/ads/interactivemedia/v3/internal/tu;

    .line 10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    return v3

    .line 11
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 12
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/tu;

    .line 13
    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/internal/tu;->i:J

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->i:F

    sub-long/2addr v4, p1

    .line 14
    invoke-static {v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JF)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->f:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v2

    .line 15
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xz;->a(J)I

    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 17
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tu;

    .line 18
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/tu;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 19
    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tu;->i:J

    sub-long/2addr v8, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->i:F

    .line 20
    invoke-static {v8, v9, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_6

    .line 21
    iget v1, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    if-ge v1, v5, :cond_6

    iget v1, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    const/16 v8, 0x2d0

    if-ge v1, v8, :cond_6

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-eq v4, v5, :cond_6

    const/16 v5, 0x500

    if-ge v4, v5, :cond_6

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-lt v1, v4, :cond_5

    goto :goto_3

    :cond_5
    return v3

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v2
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->i:F

    return-void
.end method

.method public final a(JJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->k:I

    if-nez v2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->k:I

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xz;->a(J)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->j:I

    return-void

    :cond_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->j:I

    .line 28
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/tu;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/tu;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v4

    :goto_0
    if-eq v4, v5, :cond_2

    .line 29
    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/ads/interactivemedia/v3/internal/tu;

    iget v2, p5, Lcom/google/ads/interactivemedia/v3/internal/tu;->g:I

    move v3, v4

    .line 30
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xz;->a(J)I

    move-result p5

    .line 31
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/yb;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 32
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    .line 33
    invoke-virtual {p0, p5}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    .line 34
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    if-le v1, v0, :cond_4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p3, v4

    if-eqz v6, :cond_3

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->d:J

    cmp-long v6, p3, v4

    if-gtz v6, :cond_3

    long-to-float p3, p3

    const/high16 p4, 0x3f400000    # 0.75f

    mul-float p3, p3, p4

    float-to-long p3, p3

    goto :goto_1

    :cond_3
    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->d:J

    :goto_1
    cmp-long v4, p1, p3

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    if-ge v1, v0, :cond_5

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->e:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_5

    :goto_2
    move p5, v3

    :cond_5
    if-ne p5, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    :goto_3
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->k:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->j:I

    return-void
.end method

.method public final a([[J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->n:Lcom/google/ads/interactivemedia/v3/internal/xx;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/xx;->a([[J)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->k:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->l:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->m:Lcom/google/ads/interactivemedia/v3/internal/tu;

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xz;->m:Lcom/google/ads/interactivemedia/v3/internal/tu;

    return-void
.end method

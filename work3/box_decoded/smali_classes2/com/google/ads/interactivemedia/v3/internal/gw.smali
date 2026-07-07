.class final Lcom/google/ads/interactivemedia/v3/internal/gw;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:[S

.field private i:[S

.field private j:I

.field private k:[S

.field private l:I

.field private m:[S

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(IIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->a:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->c:F

    int-to-float p3, p1

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->d:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->e:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->f:I

    add-int/2addr p1, p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    .line 1
    new-array p3, p1, [S

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->h:[S

    mul-int p1, p1, p2

    .line 2
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    .line 3
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    .line 4
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->m:[S

    return-void
.end method

.method private final a([SIII)I
    .locals 9

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 12
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 13
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 14
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v0, v6

    :cond_1
    if-ge v5, v7, :cond_2

    move v3, p3

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v4, v6

    :cond_3
    if-le v5, v7, :cond_4

    move v2, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 15
    :cond_5
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->t:I

    .line 16
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->u:I

    return v3
.end method

.method private static a(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 20
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a([SII)[S
    .locals 2

    .line 10
    array-length v0, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method private final b([SII)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    .line 5
    invoke-direct {p0, v0, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int p2, p2, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    .line 6
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    return-void
.end method

.method private final c([SII)V
    .locals 6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    div-int/2addr v0, p3

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 7
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_0
    div-int/2addr v4, p3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->h:[S

    int-to-short v4, v4

    .line 9
    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final d()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->c:F

    float-to-double v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v10, v3, v8

    if-gtz v10, :cond_1

    const-wide v8, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v10, v3, v8

    if-gez v10, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    .line 35
    invoke-direct {v0, v2, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/gw;->b([SII)V

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    goto/16 :goto_a

    .line 0
    :cond_1
    :goto_0
    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    if-ge v8, v9, :cond_2

    goto/16 :goto_a

    :cond_2
    const/4 v9, 0x0

    .line 44
    :goto_1
    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    if-lez v10, :cond_3

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    .line 21
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    .line 22
    invoke-direct {v0, v11, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/gw;->b([SII)V

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    add-int/2addr v9, v10

    goto/16 :goto_9

    .line 34
    :cond_3
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->a:I

    const/16 v12, 0xfa0

    if-le v11, v12, :cond_4

    div-int/lit16 v11, v11, 0xfa0

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    :goto_2
    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    if-ne v12, v7, :cond_5

    if-ne v11, v7, :cond_5

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->e:I

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->f:I

    .line 28
    invoke-direct {v0, v10, v9, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SIII)I

    move-result v10

    goto :goto_4

    .line 23
    :cond_5
    invoke-direct {v0, v10, v9, v11}, Lcom/google/ads/interactivemedia/v3/internal/gw;->c([SII)V

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->h:[S

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->e:I

    div-int/2addr v13, v11

    iget v14, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->f:I

    div-int/2addr v14, v11

    .line 24
    invoke-direct {v0, v12, v6, v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SIII)I

    move-result v12

    if-eq v11, v7, :cond_9

    mul-int v12, v12, v11

    mul-int/lit8 v11, v11, 0x4

    sub-int v13, v12, v11

    add-int/2addr v12, v11

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->e:I

    if-lt v13, v11, :cond_6

    goto :goto_3

    :cond_6
    move v13, v11

    :goto_3
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->f:I

    if-le v12, v11, :cond_7

    move v12, v11

    :cond_7
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    if-ne v11, v7, :cond_8

    .line 25
    invoke-direct {v0, v10, v9, v13, v12}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SIII)I

    move-result v10

    goto :goto_4

    .line 26
    :cond_8
    invoke-direct {v0, v10, v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/gw;->c([SII)V

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->h:[S

    .line 27
    invoke-direct {v0, v10, v6, v13, v12}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SIII)I

    move-result v10

    goto :goto_4

    :cond_9
    move v10, v12

    .line 28
    :goto_4
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->t:I

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->u:I

    if-eqz v11, :cond_d

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->r:I

    if-nez v13, :cond_a

    goto :goto_5

    :cond_a
    mul-int/lit8 v14, v11, 0x3

    if-le v12, v14, :cond_b

    goto :goto_5

    :cond_b
    add-int v12, v11, v11

    .line 33
    iget v14, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->s:I

    mul-int/lit8 v14, v14, 0x3

    if-gt v12, v14, :cond_c

    goto :goto_5

    :cond_c
    move v15, v13

    goto :goto_6

    :cond_d
    :goto_5
    move v15, v10

    .line 28
    :goto_6
    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->s:I

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->r:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-double v13, v3, v10

    if-lez v13, :cond_f

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v11, v2, v10

    if-ltz v11, :cond_e

    int-to-float v10, v15

    add-float/2addr v12, v2

    div-float/2addr v10, v12

    float-to-int v10, v10

    move v13, v10

    goto :goto_7

    :cond_e
    int-to-float v11, v15

    sub-float/2addr v10, v2

    mul-float v11, v11, v10

    add-float/2addr v12, v2

    div-float/2addr v11, v12

    float-to-int v10, v11

    .line 30
    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    move v13, v15

    .line 28
    :goto_7
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    .line 29
    invoke-direct {v0, v10, v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v12

    iput-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v17, v9, v15

    move/from16 v16, v10

    move v10, v13

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v7, v15

    move v15, v9

    .line 30
    invoke-static/range {v10 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a(II[SI[SI[SI)V

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v10, v10, v18

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v15, v7, v18

    add-int/2addr v9, v15

    goto :goto_9

    :cond_f
    move v7, v15

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v2, v10

    if-gez v10, :cond_10

    int-to-float v10, v7

    mul-float v10, v10, v2

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    move/from16 v18, v10

    goto :goto_8

    :cond_10
    int-to-float v10, v7

    add-float v11, v2, v2

    add-float/2addr v11, v12

    mul-float v10, v10, v11

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 33
    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    move/from16 v18, v7

    :goto_8
    add-int v14, v7, v18

    .line 30
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    .line 31
    invoke-direct {v0, v10, v11, v14}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v10

    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v12, v9, v11

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    mul-int v13, v13, v11

    mul-int v11, v11, v7

    .line 32
    invoke-static {v15, v12, v10, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v13, v10, v7

    add-int/2addr v7, v9

    move/from16 v10, v18

    move/from16 v19, v14

    move-object v14, v15

    move-object/from16 v16, v15

    move v15, v7

    move/from16 v17, v9

    .line 33
    invoke-static/range {v10 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a(II[SI[SI[SI)V

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v7, v7, v19

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int v9, v9, v18

    .line 22
    :goto_9
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    add-int/2addr v7, v9

    if-le v7, v8, :cond_1a

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    sub-int/2addr v2, v9

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v9, v9, v4

    mul-int v4, v4, v2

    .line 34
    invoke-static {v3, v9, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    .line 0
    :goto_a
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->d:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_19

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    if-ne v3, v1, :cond_11

    goto/16 :goto_11

    :cond_11
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->a:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    :goto_b
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_18

    if-le v3, v4, :cond_12

    goto/16 :goto_10

    :cond_12
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    sub-int/2addr v4, v1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->m:[S

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    .line 36
    invoke-direct {v0, v5, v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->m:[S

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v9, v1, v8

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    mul-int v10, v10, v8

    mul-int v8, v8, v4

    .line 37
    invoke-static {v7, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    const/4 v1, 0x0

    :goto_c
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_17

    :goto_d
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->o:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    mul-int v8, v4, v2

    mul-int v9, v7, v3

    if-le v8, v9, :cond_14

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    .line 38
    invoke-direct {v0, v4, v7, v5}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v4

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    const/4 v4, 0x0

    :goto_e
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    if-ge v4, v5, :cond_13

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->m:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 39
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 40
    aget-short v9, v9, v10

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->o:I

    add-int/lit8 v13, v12, 0x1

    mul-int v13, v13, v2

    mul-int v10, v10, v3

    sub-int v10, v13, v10

    mul-int v12, v12, v2

    sub-int/2addr v13, v12

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    mul-int v11, v11, v10

    sub-int v5, v13, v10

    mul-int v5, v5, v9

    add-int/2addr v11, v5

    .line 41
    div-int/2addr v11, v13

    int-to-short v5, v11

    .line 42
    aput-short v5, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_13
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    add-int/2addr v4, v10

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    goto :goto_d

    :cond_14
    const/4 v10, 0x1

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->o:I

    if-ne v4, v3, :cond_16

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->o:I

    if-ne v7, v2, :cond_15

    const/4 v5, 0x1

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    .line 43
    :goto_f
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    if-eqz v5, :cond_19

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->m:[S

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v3, v5, v2

    sub-int/2addr v4, v5

    mul-int v4, v4, v2

    .line 44
    invoke-static {v1, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    return-void

    :cond_18
    :goto_10
    const/4 v10, 0x1

    .line 0
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_b

    :cond_19
    :goto_11
    return-void

    :cond_1a
    const/4 v7, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    int-to-float v2, v0

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->c:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->d:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    add-int/2addr v3, v3

    add-int/2addr v3, v0

    .line 45
    invoke-direct {p0, v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->g:I

    add-int/2addr v4, v4

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v6, v4, v5

    if-ge v3, v6, :cond_0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    mul-int v5, v5, v0

    add-int/2addr v5, v3

    .line 46
    aput-short v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    .line 47
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->d()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    :cond_1
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    return-void
.end method

.method public final a(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 48
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    .line 49
    invoke-direct {p0, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->i:[S

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v3, v3, v4

    add-int/2addr v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 50
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    .line 51
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gw;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->j:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->n:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->o:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->p:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->q:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->r:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->s:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->t:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->u:I

    return-void
.end method

.method public final b(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 17
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->k:[S

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    .line 19
    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->l:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gw;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, v0

    return v0
.end method

.class final Lcom/google/ads/interactivemedia/v3/internal/lb;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/lb;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/lb;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x1000

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    cmp-long v8, v1, v5

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :cond_1
    :goto_0
    long-to-int v6, v5

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v8, 0x40

    .line 2
    invoke-direct {v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v6, :cond_14

    const/16 v12, 0x8

    .line 3
    invoke-virtual {v5, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v13

    .line 4
    invoke-virtual {v0, v13, v8, v12, v11}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_a

    .line 5
    :cond_2
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v13

    .line 6
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v15

    const-wide/16 v16, 0x1

    const/16 v11, 0x10

    cmp-long v18, v13, v16

    if-nez v18, :cond_3

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v13

    .line 7
    invoke-virtual {v0, v13, v12, v12}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 8
    invoke-virtual {v5, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    .line 9
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->p()J

    move-result-wide v13

    goto :goto_2

    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-nez v11, :cond_4

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v16

    cmp-long v11, v16, v3

    if-eqz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v13

    sub-long v16, v16, v13

    const-wide/16 v13, 0x8

    add-long v13, v16, v13

    :cond_4
    const/16 v11, 0x8

    :goto_2
    int-to-long v3, v11

    cmp-long v18, v13, v3

    if-gez v18, :cond_5

    return v8

    :cond_5
    add-int/2addr v9, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_7

    long-to-int v3, v13

    add-int/2addr v6, v3

    if-eqz v7, :cond_6

    int-to-long v3, v6

    cmp-long v11, v3, v1

    if-lez v11, :cond_6

    long-to-int v6, v1

    :cond_6
    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_7
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_13

    const v11, 0x6d766578

    if-ne v15, v11, :cond_8

    goto/16 :goto_9

    :cond_8
    move-wide/from16 v18, v1

    int-to-long v1, v9

    add-long/2addr v1, v13

    sub-long/2addr v1, v3

    move/from16 v20, v9

    int-to-long v8, v6

    cmp-long v21, v1, v8

    if-ltz v21, :cond_9

    goto :goto_a

    :cond_9
    sub-long/2addr v13, v3

    long-to-int v1, v13

    add-int v9, v20, v1

    const v2, 0x66747970

    if-ne v15, v2, :cond_11

    if-ge v1, v12, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v3, 0x4

    .line 12
    invoke-virtual {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    goto :goto_6

    .line 13
    :cond_b
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    ushr-int/lit8 v4, v3, 0x8

    const v8, 0x336770

    if-ne v4, v8, :cond_c

    :goto_4
    const/4 v10, 0x1

    goto :goto_7

    :cond_c
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/lb;->a:[I

    array-length v8, v4

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_e

    .line 14
    aget v13, v4, v12

    if-ne v13, v3, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    return v1

    :cond_11
    if-eqz v1, :cond_12

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    :cond_12
    :goto_8
    move-wide/from16 v1, v18

    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_13
    :goto_9
    const/4 v2, 0x1

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v10, :cond_15

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/lb;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z

    move-result p0

    return p0
.end method

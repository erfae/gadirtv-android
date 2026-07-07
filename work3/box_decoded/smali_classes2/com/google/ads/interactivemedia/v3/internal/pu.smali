.class public final Lcom/google/ads/interactivemedia/v3/internal/pu;
.super Lcom/google/ads/interactivemedia/v3/internal/ou;
.source "IMASDK"


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/ps;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/pr;->a:Lcom/google/ads/interactivemedia/v3/internal/ps;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/pu;->a:Lcom/google/ads/interactivemedia/v3/internal/ps;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/pu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ps;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ps;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ou;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/pu;->b:Lcom/google/ads/interactivemedia/v3/internal/ps;

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result p0

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    .line 173
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    sub-int/2addr v1, p0

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    .line 174
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static a([BII)I
    .locals 1

    .line 168
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    :goto_0
    array-length p2, p0

    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_2

    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 169
    aget-byte p2, p0, p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 170
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result p1

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    return p1
.end method

.method private static a(ILcom/google/ads/interactivemedia/v3/internal/abr;ZILcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/pv;
    .locals 24

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v3

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-lt v0, v5, :cond_0

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v9

    if-nez p2, :cond_3

    and-int/lit16 v10, v9, 0xff

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    shr-int/lit8 v9, v9, 0x18

    shl-int/lit8 v9, v9, 0x15

    or-int/2addr v9, v10

    goto :goto_1

    :cond_1
    if-ne v0, v5, :cond_2

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v9

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v9

    :cond_3
    :goto_1
    if-lt v0, v5, :cond_4

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v7, :cond_6

    if-nez v9, :cond_6

    if-eqz v10, :cond_5

    goto :goto_3

    .line 163
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v0

    .line 164
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-object v11

    .line 39
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v13

    const-string v14, "Id3Decoder"

    if-le v12, v13, :cond_7

    const-string v0, "Frame size exceeds remaining tag data"

    .line 40
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-object v11

    :cond_7
    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/ps;->a()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    .line 163
    :cond_8
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-object v11

    :cond_9
    :goto_4
    const/4 v13, 0x1

    if-ne v0, v5, :cond_d

    and-int/lit16 v15, v10, 0x80

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    :goto_5
    and-int/lit8 v16, v10, 0x40

    if-eqz v16, :cond_b

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    :goto_6
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    move/from16 v17, v16

    const/16 v18, 0x0

    move/from16 v16, v15

    goto :goto_c

    :cond_d
    if-ne v0, v8, :cond_12

    and-int/lit8 v15, v10, 0x40

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_8
    and-int/lit8 v16, v10, 0x8

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    goto :goto_9

    :cond_f
    const/16 v16, 0x0

    :goto_9
    and-int/lit8 v17, v10, 0x4

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    goto :goto_a

    :cond_10
    const/16 v17, 0x0

    :goto_a
    and-int/lit8 v18, v10, 0x2

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    goto :goto_b

    :cond_11
    const/16 v18, 0x0

    :goto_b
    and-int/2addr v10, v13

    move/from16 v23, v16

    move/from16 v16, v10

    move v10, v15

    move/from16 v15, v23

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_c
    if-nez v15, :cond_3e

    if-eqz v17, :cond_13

    goto/16 :goto_22

    :cond_13
    if-eqz v10, :cond_14

    add-int/lit8 v9, v9, -0x1

    .line 44
    invoke-virtual {v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_14
    if-eqz v16, :cond_15

    add-int/lit8 v9, v9, -0x4

    .line 45
    invoke-virtual {v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_15
    if-eqz v18, :cond_16

    .line 46
    invoke-static {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)I

    move-result v9

    :cond_16
    const/16 v10, 0x54

    const/16 v15, 0x58

    const/4 v8, 0x2

    if-ne v2, v10, :cond_19

    if-ne v3, v15, :cond_19

    if-ne v4, v15, :cond_19

    if-eq v0, v8, :cond_17

    if-ne v7, v15, :cond_19

    :cond_17
    if-gtz v9, :cond_18

    goto :goto_d

    .line 151
    :cond_18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v9, -0x1

    new-array v13, v10, [B

    .line 152
    invoke-virtual {v1, v13, v6, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 153
    invoke-static {v13, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v10

    new-instance v15, Ljava/lang/String;

    .line 154
    invoke-direct {v15, v13, v6, v10, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v6

    add-int/2addr v10, v6

    .line 155
    invoke-static {v13, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v5

    .line 156
    invoke-static {v13, v10, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/qd;

    const-string v8, "TXXX"

    .line 157
    invoke-direct {v6, v8, v15, v5}, Lcom/google/ads/interactivemedia/v3/internal/qd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    if-ne v2, v10, :cond_1b

    .line 47
    invoke-static {v0, v10, v3, v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(IIIII)Ljava/lang/String;

    move-result-object v5

    if-gtz v9, :cond_1a

    :goto_d
    move/from16 v22, v2

    :goto_e
    move v6, v7

    move/from16 v20, v12

    :goto_f
    move-object/from16 v21, v14

    goto/16 :goto_1d

    .line 48
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v13, v9, -0x1

    new-array v15, v13, [B

    .line 49
    invoke-virtual {v1, v15, v6, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 50
    invoke-static {v15, v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v8

    new-instance v13, Ljava/lang/String;

    .line 51
    invoke-direct {v13, v15, v6, v8, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/qd;

    .line 52
    invoke-direct {v6, v5, v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/qd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_10
    move/from16 v22, v2

    move-object v11, v6

    goto :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_21

    :catch_0
    move-object v2, v14

    goto/16 :goto_20

    :cond_1b
    const/16 v10, 0x57

    const-string v5, "ISO-8859-1"

    if-ne v2, v10, :cond_1f

    if-ne v3, v15, :cond_1e

    if-ne v4, v15, :cond_1e

    if-eq v0, v8, :cond_1c

    if-ne v7, v15, :cond_1e

    :cond_1c
    if-gtz v9, :cond_1d

    goto :goto_d

    .line 144
    :cond_1d
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v13, v9, -0x1

    new-array v15, v13, [B

    .line 145
    invoke-virtual {v1, v15, v6, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 146
    invoke-static {v15, v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v13

    new-instance v11, Ljava/lang/String;

    .line 147
    invoke-direct {v11, v15, v6, v13, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v6

    add-int/2addr v13, v6

    .line 148
    invoke-static {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v6

    .line 149
    invoke-static {v15, v13, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/qf;

    const-string v8, "WXXX"

    .line 150
    invoke-direct {v6, v8, v11, v5}, Lcom/google/ads/interactivemedia/v3/internal/qf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1e
    const/16 v11, 0x57

    goto :goto_11

    :cond_1f
    move v11, v2

    :goto_11
    if-ne v11, v10, :cond_20

    .line 53
    invoke-static {v0, v10, v3, v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(IIIII)Ljava/lang/String;

    move-result-object v8

    .line 54
    new-array v10, v9, [B

    .line 55
    invoke-virtual {v1, v10, v6, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 56
    invoke-static {v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v11

    new-instance v13, Ljava/lang/String;

    .line 57
    invoke-direct {v13, v10, v6, v11, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/qf;

    const/4 v5, 0x0

    .line 58
    invoke-direct {v6, v8, v5, v13}, Lcom/google/ads/interactivemedia/v3/internal/qf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    const/16 v10, 0x49

    const/16 v15, 0x50

    if-ne v11, v15, :cond_22

    const/16 v11, 0x52

    if-ne v3, v11, :cond_21

    if-ne v4, v10, :cond_21

    const/16 v11, 0x56

    if-ne v7, v11, :cond_21

    .line 138
    new-array v8, v9, [B

    .line 139
    invoke-virtual {v1, v8, v6, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 140
    invoke-static {v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v10

    new-instance v11, Ljava/lang/String;

    .line 141
    invoke-direct {v11, v8, v6, v10, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v10, v13

    .line 142
    invoke-static {v8, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BII)[B

    move-result-object v5

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/qb;

    .line 143
    invoke-direct {v6, v11, v5}, Lcom/google/ads/interactivemedia/v3/internal/qb;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_10

    :cond_21
    const/16 v11, 0x50

    :cond_22
    const/16 v10, 0x47

    const/16 v15, 0x4f

    if-ne v11, v10, :cond_24

    const/16 v10, 0x45

    if-ne v3, v10, :cond_24

    if-ne v4, v15, :cond_24

    const/16 v10, 0x42

    if-eq v7, v10, :cond_23

    if-ne v0, v8, :cond_24

    .line 127
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v9, -0x1

    .line 128
    new-array v15, v11, [B

    .line 129
    invoke-virtual {v1, v15, v6, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 130
    invoke-static {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v13

    new-instance v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 131
    :try_start_2
    invoke-direct {v6, v15, v12, v13, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v13, v5

    .line 132
    invoke-static {v15, v13, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v5

    .line 133
    invoke-static {v15, v13, v5, v10}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v13

    add-int/2addr v5, v13

    .line 134
    invoke-static {v15, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v13

    .line 135
    invoke-static {v15, v5, v13, v10}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v8

    add-int/2addr v13, v8

    .line 136
    invoke-static {v15, v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BII)[B

    move-result-object v8

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/pq;

    .line 137
    invoke-direct {v10, v6, v12, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/pq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move/from16 v22, v2

    move v6, v7

    move-object v11, v10

    goto/16 :goto_f

    :cond_24
    move/from16 v20, v12

    const/16 v6, 0x41

    const/16 v10, 0x43

    if-ne v0, v8, :cond_25

    const/16 v12, 0x50

    if-ne v11, v12, :cond_2b

    const/16 v13, 0x49

    if-ne v3, v13, :cond_2b

    if-ne v4, v10, :cond_2b

    goto :goto_12

    :cond_25
    const/16 v12, 0x50

    const/16 v13, 0x49

    if-ne v11, v6, :cond_2b

    if-ne v3, v12, :cond_2b

    if-ne v4, v13, :cond_2b

    if-ne v7, v10, :cond_2b

    .line 113
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v6

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v9, -0x1

    .line 114
    new-array v12, v11, [B

    const/4 v13, 0x0

    .line 115
    invoke-virtual {v1, v12, v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    if-ne v0, v8, :cond_28

    const-string v15, "image/"

    new-instance v8, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v21, v14

    const/4 v14, 0x3

    .line 116
    :try_start_3
    invoke-direct {v8, v12, v13, v14, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 126
    :cond_26
    new-instance v5, Ljava/lang/String;

    .line 116
    invoke-direct {v5, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_13
    const-string v8, "image/jpg"

    .line 117
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    const-string v5, "image/jpeg"

    :cond_27
    const/4 v13, 0x2

    goto :goto_14

    :cond_28
    move-object/from16 v21, v14

    const/4 v8, 0x0

    .line 118
    invoke-static {v12, v8}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v13

    new-instance v14, Ljava/lang/String;

    .line 119
    invoke-direct {v14, v12, v8, v13, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2f

    .line 120
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v14, -0x1

    if-ne v8, v14, :cond_2a

    const-string v8, "image/"

    .line 121
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_29

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_29
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_2a
    :goto_14
    add-int/lit8 v8, v13, 0x1

    .line 122
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v14, 0x2

    add-int/2addr v13, v14

    .line 123
    invoke-static {v12, v13, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v14

    new-instance v15, Ljava/lang/String;

    move/from16 v22, v2

    sub-int v2, v14, v13

    .line 124
    invoke-direct {v15, v12, v13, v2, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v2

    add-int/2addr v14, v2

    .line 125
    invoke-static {v12, v14, v11}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BII)[B

    move-result-object v2

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/pg;

    .line 126
    invoke-direct {v6, v5, v15, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/pg;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_15

    :catch_1
    move-object v2, v14

    goto/16 :goto_1e

    :cond_2b
    move/from16 v22, v2

    move-object/from16 v21, v14

    const/16 v2, 0x4d

    if-ne v11, v10, :cond_2e

    if-ne v3, v15, :cond_2e

    if-ne v4, v2, :cond_2e

    if-eq v7, v2, :cond_2c

    const/4 v8, 0x2

    if-ne v0, v8, :cond_2e

    :cond_2c
    const/4 v2, 0x4

    if-ge v9, v2, :cond_2d

    move v6, v7

    const/4 v11, 0x0

    goto/16 :goto_1d

    .line 104
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v8, v6, [B

    const/4 v10, 0x0

    .line 105
    invoke-virtual {v1, v8, v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    new-instance v11, Ljava/lang/String;

    .line 106
    invoke-direct {v11, v8, v10, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v6, v9, -0x4

    new-array v8, v6, [B

    .line 107
    invoke-virtual {v1, v8, v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 108
    invoke-static {v8, v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v6

    new-instance v12, Ljava/lang/String;

    .line 109
    invoke-direct {v12, v8, v10, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b(I)I

    move-result v10

    add-int/2addr v6, v10

    .line 110
    invoke-static {v8, v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BII)I

    move-result v2

    .line 111
    invoke-static {v8, v6, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/po;

    .line 112
    invoke-direct {v6, v11, v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/po;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    move-object v11, v6

    move v6, v7

    goto/16 :goto_1d

    :cond_2e
    if-ne v11, v10, :cond_33

    const/16 v8, 0x48

    if-ne v3, v8, :cond_33

    if-ne v4, v6, :cond_33

    const/16 v6, 0x50

    if-ne v7, v6, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    .line 92
    invoke-static {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v6

    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v8

    sub-int v10, v6, v2

    .line 93
    invoke-direct {v11, v8, v2, v10, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 94
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v12

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v13

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    const-wide v14, 0xffffffffL

    cmp-long v8, v5, v14

    if-nez v8, :cond_2f

    const-wide/16 v5, -0x1

    :cond_2f
    move-wide v14, v5

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    const-wide v16, 0xffffffffL

    cmp-long v8, v5, v16

    if-nez v8, :cond_30

    const-wide/16 v5, -0x1

    :cond_30
    move-wide/from16 v16, v5

    new-instance v5, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v2, v9

    :cond_31
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v6

    if-ge v6, v2, :cond_32

    .line 100
    invoke-static/range {p0 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;ZILcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/pv;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 101
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_32
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/pv;

    .line 102
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Lcom/google/ads/interactivemedia/v3/internal/pv;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/pk;

    move-object v10, v6

    .line 103
    invoke-direct/range {v10 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/pk;-><init>(Ljava/lang/String;IIJJ[Lcom/google/ads/interactivemedia/v3/internal/pv;)V

    goto :goto_15

    :cond_33
    if-ne v11, v10, :cond_39

    const/16 v6, 0x54

    if-ne v3, v6, :cond_39

    if-ne v4, v15, :cond_39

    if-ne v7, v10, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    .line 79
    invoke-static {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v6

    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v8

    sub-int v10, v6, v2

    .line 80
    invoke-direct {v11, v8, v2, v10, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v19, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 81
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v6

    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_34

    const/4 v12, 0x1

    goto :goto_17

    :cond_34
    const/4 v12, 0x0

    :goto_17
    and-int/lit8 v6, v6, 0x1

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    new-array v14, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v8, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v15

    .line 84
    invoke-static {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/pu;->b([BI)I

    move-result v15

    move/from16 v16, v8

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    move/from16 v18, v7

    sub-int v7, v15, v13

    .line 85
    invoke-direct {v8, v0, v13, v7, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v8, v14, v10

    add-int/lit8 v15, v15, 0x1

    .line 86
    invoke-virtual {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p0

    move/from16 v8, v16

    move/from16 v7, v18

    goto :goto_18

    :cond_35
    move/from16 v18, v7

    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v2, v9

    :cond_36
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v5

    if-ge v5, v2, :cond_37

    .line 88
    invoke-static/range {p0 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;ZILcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/pv;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 89
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_37
    const/4 v2, 0x0

    new-array v5, v2, [Lcom/google/ads/interactivemedia/v3/internal/pv;

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Lcom/google/ads/interactivemedia/v3/internal/pv;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/pm;

    const/4 v2, 0x1

    if-eq v2, v6, :cond_38

    const/4 v13, 0x0

    goto :goto_1a

    :cond_38
    const/4 v13, 0x1

    :goto_1a
    move-object v10, v0

    .line 91
    invoke-direct/range {v10 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/pm;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/pv;)V

    move-object v11, v0

    move/from16 v6, v18

    goto :goto_1c

    :cond_39
    move/from16 v18, v7

    if-ne v11, v2, :cond_3b

    const/16 v0, 0x4c

    if-ne v3, v0, :cond_3b

    const/16 v0, 0x4c

    if-ne v4, v0, :cond_3b

    move/from16 v6, v18

    const/16 v0, 0x54

    if-ne v6, v0, :cond_3c

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v13

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v14

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v15

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 68
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v8

    .line 69
    invoke-virtual {v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a([BI)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    .line 70
    invoke-virtual {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    add-int/lit8 v7, v9, -0xa

    mul-int/lit8 v7, v7, 0x8

    add-int v8, v0, v2

    .line 71
    div-int/2addr v7, v8

    .line 72
    new-array v8, v7, [I

    .line 73
    new-array v10, v7, [I

    const/4 v11, 0x0

    :goto_1b
    if-ge v11, v7, :cond_3a

    .line 74
    invoke-virtual {v5, v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v12

    .line 75
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v16

    .line 76
    aput v12, v8, v11

    .line 77
    aput v16, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_3a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/pz;

    move-object v12, v0

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    .line 78
    invoke-direct/range {v12 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/pz;-><init>(III[I[I)V

    move-object v11, v0

    :goto_1c
    move/from16 v0, p0

    goto :goto_1d

    :cond_3b
    move/from16 v6, v18

    :cond_3c
    move/from16 v0, p0

    .line 59
    invoke-static {v0, v11, v3, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(IIIII)Ljava/lang/String;

    move-result-object v2

    .line 60
    new-array v5, v9, [B

    const/4 v7, 0x0

    .line 61
    invoke-virtual {v1, v5, v7, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/pi;

    .line 62
    invoke-direct {v7, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/pi;-><init>(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v11, v7

    :goto_1d
    if-nez v11, :cond_3d

    move/from16 v2, v22

    .line 158
    :try_start_4
    invoke-static {v0, v2, v3, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode frame: id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v2, v21

    .line 159
    :try_start_5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1f

    :catchall_1
    move-exception v0

    move/from16 v12, v20

    goto :goto_21

    :catch_2
    move-object/from16 v2, v21

    :catch_3
    :goto_1e
    move/from16 v12, v20

    goto :goto_20

    :cond_3d
    :goto_1f
    move/from16 v12, v20

    .line 161
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-object v11

    :catch_4
    move/from16 v12, v20

    move-object/from16 v2, v21

    :goto_20
    :try_start_6
    const-string v0, "Unsupported character encoding"

    .line 160
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    const/4 v0, 0x0

    return-object v0

    :goto_21
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 162
    throw v0

    :cond_3e
    :goto_22
    move-object v0, v11

    move-object v2, v14

    const-string v3, "Skipping unsupported compressed or encrypted frame"

    .line 42
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static a(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 166
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    .line 165
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/abr;IIZ)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v2

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_d

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v7

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v8

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v10

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v7

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_2

    cmp-long v7, v8, v11

    if-nez v7, :cond_2

    if-eqz v10, :cond_1

    goto :goto_2

    .line 181
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v4

    :cond_2
    :goto_2
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    if-nez p3, :cond_4

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v6

    :cond_3
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v11, v15

    const/16 v15, 0xe

    shl-long/2addr v11, v15

    or-long/2addr v11, v13

    const/16 v13, 0x18

    shr-long/2addr v8, v13

    const/16 v13, 0x15

    shl-long/2addr v8, v13

    or-long/2addr v8, v11

    :cond_4
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    and-int/lit8 v3, v10, 0x1

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :cond_9
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x4

    :cond_a
    int-to-long v3, v3

    cmp-long v7, v8, v3

    if-gez v7, :cond_b

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v6

    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_c

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v6

    :cond_c
    long-to-int v3, v8

    .line 180
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 181
    :cond_d
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 182
    throw v0
.end method

.method private static b(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b([BI)I
    .locals 1

    .line 171
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 172
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static b([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BI)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p1

    return-object p1
.end method

.method public final a([BI)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 6
    invoke-direct {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([BI)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p1

    const/4 p2, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "Id3Decoder"

    const/4 v7, 0x0

    if-ge p1, v2, :cond_0

    const-string p1, "Data too short to be an ID3 tag"

    .line 7
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v10, v7

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result p1

    const v8, 0x494433

    if-eq p1, v8, :cond_2

    new-array v8, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    const-string p1, "%06X"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 9
    invoke-direct {p1, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_1
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p1

    .line 12
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    .line 14
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v9

    if-ne p1, p2, :cond_3

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_6

    const-string p1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 15
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v10, 0x3

    if-ne p1, v10, :cond_4

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v10

    .line 17
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    add-int/2addr v10, v3

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_8

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_5

    .line 18
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v10

    add-int/lit8 v11, v10, -0x4

    .line 19
    invoke-virtual {v1, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    sub-int/2addr v9, v10

    :cond_5
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_6

    add-int/lit8 v9, v9, -0xa

    :cond_6
    :goto_2
    if-ge p1, v3, :cond_7

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    .line 15
    :goto_3
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/pt;

    .line 20
    invoke-direct {v10, p1, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/pt;-><init>(IZI)V

    goto :goto_4

    .line 19
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x39

    .line 21
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_4
    if-nez v10, :cond_9

    return-object v7

    .line 7
    :cond_9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result p1

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->a(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result v8

    if-ne v8, p2, :cond_a

    const/4 v2, 0x6

    :cond_a
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->b(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p2

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->c(Lcom/google/ads/interactivemedia/v3/internal/pt;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->b(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p2

    .line 23
    invoke-static {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)I

    move-result p2

    :cond_b
    add-int/2addr p1, p2

    .line 24
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->a(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p1

    .line 25
    invoke-static {v1, p1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;IIZ)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->a(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 26
    invoke-static {v1, v3, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;IIZ)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    .line 31
    :cond_c
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->a(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x38

    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 26
    :cond_d
    :goto_5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p1

    if-lt p1, v2, :cond_e

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/pt;->a(Lcom/google/ads/interactivemedia/v3/internal/pt;)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/pu;->b:Lcom/google/ads/interactivemedia/v3/internal/ps;

    .line 29
    invoke-static {p1, v1, v4, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;ZILcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/pv;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ot;

    .line 31
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>(Ljava/util/List;)V

    return-object p1
.end method

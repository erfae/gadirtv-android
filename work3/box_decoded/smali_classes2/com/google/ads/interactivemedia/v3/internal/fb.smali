.class public final Lcom/google/ads/interactivemedia/v3/internal/fb;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final synthetic a:I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fb;->b:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fb;->d:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fb;->e:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/fb;->f:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fb;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private static a(II)I
    .locals 4

    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/fb;->g:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 2
    aget p0, v2, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/2addr p0, p0

    return p0

    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/fb;->f:[I

    .line 3
    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    .line 17
    :goto_0
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/fb;->b:[I

    .line 19
    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_1
    const/16 p0, 0x600

    return p0
.end method

.method public static a([B)I
    .locals 4

    .line 125
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 126
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    const/4 v0, 0x2

    .line 127
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    .line 128
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p0

    return p0

    :cond_1
    const/4 v0, 0x4

    .line 129
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    .line 130
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/abr;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/hk;)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 5
    aget v0, v1, v0

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fb;->e:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    .line 7
    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string p1, "audio/ac3"

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/abq;)Lcom/google/ads/interactivemedia/v3/internal/fa;
    .locals 19

    move-object/from16 v0, p0

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b()I

    move-result v1

    const/16 v2, 0x28

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    const/4 v2, 0x5

    .line 22
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    const/4 v1, -0x1

    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-le v3, v4, :cond_2b

    const/16 v3, 0x10

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 25
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v10

    if-eqz v10, :cond_2

    if-eq v10, v8, :cond_1

    if-eq v10, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    const/16 v10, 0xb

    .line 27
    invoke-virtual {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v10

    .line 28
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v12

    if-ne v12, v7, :cond_3

    sget-object v13, Lcom/google/ads/interactivemedia/v3/internal/fb;->d:[I

    .line 29
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v13

    sget-object v14, Lcom/google/ads/interactivemedia/v3/internal/fb;->b:[I

    .line 31
    aget v14, v14, v13

    sget-object v15, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    .line 32
    aget v15, v15, v12

    :goto_1
    mul-int/lit16 v11, v14, 0x100

    .line 33
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v16

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    sget-object v18, Lcom/google/ads/interactivemedia/v3/internal/fb;->e:[I

    .line 35
    aget v18, v18, v16

    add-int v18, v18, v17

    .line 36
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_4
    if-nez v16, :cond_6

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move/from16 v4, v16

    :goto_2
    if-ne v1, v8, :cond_8

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_7
    const/4 v1, 0x1

    .line 44
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_21

    if-le v4, v9, :cond_9

    .line 45
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_9
    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_a

    if-le v4, v9, :cond_a

    .line 46
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_a
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_b

    .line 47
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_b
    if-eqz v17, :cond_c

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_c
    if-nez v1, :cond_21

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 51
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_d
    if-nez v4, :cond_e

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 53
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 54
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 55
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 56
    :cond_f
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    if-ne v3, v8, :cond_10

    .line 57
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    goto/16 :goto_4

    :cond_10
    if-ne v3, v9, :cond_11

    const/16 v3, 0xc

    .line 58
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    goto/16 :goto_4

    :cond_11
    if-ne v3, v7, :cond_1c

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 61
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 63
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 64
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 65
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 66
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 67
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 68
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 69
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 70
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 71
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 72
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 73
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 74
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 75
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 76
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 78
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 79
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 80
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 81
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 82
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v17

    if-eqz v17, :cond_1b

    const/4 v8, 0x7

    .line 84
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v8

    if-eqz v8, :cond_1b

    const/16 v8, 0x8

    .line 86
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    goto :goto_3

    :cond_1b
    const/16 v8, 0x8

    :goto_3
    add-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x8

    .line 87
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->e()V

    :cond_1c
    :goto_4
    if-ge v4, v9, :cond_1e

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    const/16 v8, 0xe

    if-eqz v3, :cond_1d

    .line 90
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_1d
    if-nez v16, :cond_1e

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 92
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 93
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez v13, :cond_1f

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    const/4 v13, 0x0

    goto :goto_6

    :cond_1f
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v14, :cond_21

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 95
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 97
    :cond_21
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 98
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    if-ne v4, v9, :cond_22

    .line 99
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_22
    if-lt v4, v6, :cond_23

    .line 100
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 101
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0x8

    .line 102
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    goto :goto_7

    :cond_24
    const/16 v2, 0x8

    :goto_7
    if-nez v4, :cond_25

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 104
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_25
    if-ge v12, v7, :cond_26

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    :cond_26
    if-nez v1, :cond_27

    if-eq v13, v7, :cond_27

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    :cond_27
    if-ne v1, v9, :cond_29

    if-eq v13, v7, :cond_28

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 108
    :cond_28
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 109
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 110
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    const/16 v1, 0x8

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    if-ne v0, v2, :cond_2a

    const-string v0, "audio/eac3-joc"

    goto :goto_8

    :cond_2a
    const-string v0, "audio/eac3"

    :goto_8
    move-object v5, v0

    move v8, v10

    move v9, v11

    move v7, v15

    move/from16 v6, v18

    goto :goto_a

    :cond_2b
    const/16 v2, 0x20

    .line 112
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 113
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v2

    if-ne v2, v7, :cond_2c

    const/4 v3, 0x0

    goto :goto_9

    :cond_2c
    const-string v3, "audio/ac3"

    .line 114
    :goto_9
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v4

    .line 115
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a(II)I

    move-result v10

    const/16 v4, 0x8

    .line 116
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 117
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    .line 118
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_2d
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2e

    .line 119
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_2e
    if-ne v4, v9, :cond_2f

    .line 120
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_2f
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    array-length v6, v5

    if-ge v2, v6, :cond_30

    .line 121
    aget v1, v5, v2

    .line 122
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/fb;->e:[I

    .line 123
    aget v2, v2, v4

    add-int v18, v2, v0

    const/16 v11, 0x600

    move v7, v1

    move-object v5, v3

    move v8, v10

    move/from16 v6, v18

    const/16 v9, 0x600

    .line 111
    :goto_a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fa;

    move-object v4, v0

    .line 124
    invoke-direct/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/fa;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/internal/abr;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/hk;)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 5

    const/4 v0, 0x2

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 132
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/fb;->c:[I

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 133
    aget v1, v2, v1

    .line 134
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/fb;->e:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    .line 135
    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const-string p0, "audio/eac3-joc"

    goto :goto_0

    :cond_2
    const-string p0, "audio/eac3"

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 140
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 145
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    .line 146
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p0

    return-object p0
.end method

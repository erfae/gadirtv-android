.class final Lcom/google/ads/interactivemedia/v3/internal/no;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/np;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ns;

.field private final f:I

.field private final g:[B

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final i:I

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private k:I

.field private l:J

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/no;->a:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/no;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->c:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->i:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->f:[B

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->h()I

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->h()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->f:I

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    iget v2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->e:I

    mul-int v3, v3, v1

    .line 5
    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_0

    .line 7
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result p2

    iget v2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    mul-int v2, v2, p2

    .line 8
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->g:[B

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/no;->a(II)I

    move-result v3

    mul-int p2, p2, v3

    .line 9
    invoke-direct {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget p2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    iget v2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    mul-int p2, p2, v2

    mul-int/lit8 p2, p2, 0x8

    .line 10
    div-int/2addr p2, v0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 11
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v2, "audio/raw"

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(I)V

    .line 14
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/no;->a(II)I

    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->h(I)V

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->i(I)V

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->j:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x38

    .line 6
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Expected frames per block: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; got: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(II)I
    .locals 0

    add-int/2addr p0, p0

    mul-int p0, p0, p1

    return p0
.end method

.method private final a(I)V
    .locals 12

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->l:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->n:J

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/no;->c(I)I

    move-result v11

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    add-long/2addr v0, v2

    sub-int v9, v4, v11

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v4, v5

    move-wide v5, v0

    move v8, v11

    .line 48
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->n:J

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    sub-int/2addr p1, v11

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    return-void
.end method

.method private final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    add-int/2addr v0, v0

    .line 22
    div-int/2addr p1, v0

    return p1
.end method

.method private final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/no;->a(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->c:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/nv;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->f:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/nv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ns;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->j:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 21
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->l:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/no;->n:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->i:I

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    .line 23
    invoke-direct {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/no;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->f:I

    .line 24
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    mul-int v3, v3, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-nez v8, :cond_0

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, -0x1

    if-nez v6, :cond_2

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    if-ge v8, v3, :cond_2

    sub-int v8, v3, v8

    int-to-long v8, v8

    .line 25
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->g:[B

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    long-to-int v9, v8

    move-object/from16 v8, p1

    .line 26
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result v9

    if-ne v9, v7, :cond_1

    goto :goto_0

    :cond_1
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    .line 27
    div-int/2addr v1, v2

    if-lez v1, :cond_8

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->g:[B

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_7

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v10, v10, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    if-ge v9, v10, :cond_6

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v10

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v12, v11, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    iget v11, v11, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    mul-int v13, v8, v12

    mul-int/lit8 v14, v9, 0x4

    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v13

    .line 28
    div-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x4

    add-int/lit8 v15, v13, 0x1

    .line 29
    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    aget-byte v4, v2, v13

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v15

    int-to-short v4, v4

    add-int/lit8 v13, v13, 0x2

    .line 30
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x58

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    sget-object v15, Lcom/google/ads/interactivemedia/v3/internal/no;->b:[I

    .line 31
    aget v15, v15, v13

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->f:I

    mul-int v7, v7, v8

    mul-int v7, v7, v11

    add-int/2addr v7, v9

    add-int/2addr v7, v7

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 32
    aput-byte v5, v10, v7

    add-int/lit8 v5, v7, 0x1

    move/from16 p1, v7

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 33
    aput-byte v7, v10, v5

    move/from16 v7, p1

    move/from16 v17, v6

    const/4 v5, 0x0

    :goto_4
    add-int v6, v12, v12

    if-ge v5, v6, :cond_5

    div-int/lit8 v6, v5, 0x8

    mul-int v6, v6, v11

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v14

    div-int/lit8 v18, v5, 0x2

    rem-int/lit8 v18, v18, 0x4

    add-int v6, v6, v18

    .line 34
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    rem-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_3

    and-int/lit8 v6, v6, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v6, v6, 0x4

    :goto_5
    and-int/lit8 v18, v6, 0x7

    add-int v18, v18, v18

    const/16 v16, 0x1

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v15

    shr-int/lit8 v15, v18, 0x3

    and-int/lit8 v18, v6, 0x8

    if-eqz v18, :cond_4

    neg-int v15, v15

    :cond_4
    add-int/2addr v4, v15

    const/16 v15, -0x8000

    move-object/from16 v18, v2

    const/16 v2, 0x7fff

    .line 35
    invoke-static {v4, v15, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result v4

    add-int v2, v11, v11

    add-int/2addr v7, v2

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    .line 36
    aput-byte v2, v10, v7

    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v15, v4, 0x8

    int-to-byte v15, v15

    .line 37
    aput-byte v15, v10, v2

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/no;->a:[I

    .line 38
    aget v2, v2, v6

    add-int/2addr v13, v2

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/no;->b:[I

    array-length v6, v2

    const/4 v15, -0x1

    add-int/2addr v6, v15

    const/4 v15, 0x0

    .line 39
    invoke-static {v13, v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result v13

    .line 40
    aget v2, v2, v13

    add-int/lit8 v5, v5, 0x1

    move v15, v2

    move-object/from16 v2, v18

    goto :goto_4

    :cond_5
    move-object/from16 v18, v2

    const/4 v15, 0x0

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v17

    const/4 v7, -0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v18, v2

    move/from16 v17, v6

    const/4 v15, 0x0

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v7, -0x1

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v6

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->f:I

    mul-int v2, v2, v1

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/no;->c(I)I

    move-result v2

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->e:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    mul-int v1, v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->k:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 42
    invoke-interface {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    .line 43
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/no;->b(I)I

    move-result v1

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->i:I

    if-lt v1, v2, :cond_9

    .line 44
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/no;->a(I)V

    goto :goto_6

    :cond_8
    move/from16 v17, v6

    :cond_9
    :goto_6
    if-eqz v17, :cond_a

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/no;->m:I

    .line 45
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/no;->b(I)I

    move-result v1

    if-lez v1, :cond_a

    .line 46
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/no;->a(I)V

    :cond_a
    return v17
.end method

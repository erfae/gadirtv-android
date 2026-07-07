.class public final Lcom/google/ads/interactivemedia/v3/internal/mg;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# static fields
.field private static final c:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/nn;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final g:[Z

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/mf;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->c:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->d:Lcom/google/ads/interactivemedia/v3/internal/nn;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->g:[Z

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mf;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/mf;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->g:[Z

    .line 50
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    .line 51
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/mf;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->j:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->m:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 5
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->i:J

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->i:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->g:[Z

    .line 11
    invoke-static {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->k:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    .line 44
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mf;->a([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v4, 0x3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->k:Z

    if-nez v9, :cond_a

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    .line 13
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mf;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    .line 14
    invoke-virtual {v14, v7, v9}, Lcom/google/ads/interactivemedia/v3/internal/mf;->a(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->h:Lcom/google/ads/interactivemedia/v3/internal/mf;

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->a:Ljava/lang/String;

    .line 15
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v15, v9, Lcom/google/ads/interactivemedia/v3/internal/mf;->c:[B

    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/mf;->a:I

    invoke-static {v15, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    const/4 v11, 0x4

    .line 17
    aget-byte v15, v10, v11

    const/16 v16, 0x5

    .line 18
    aget-byte v12, v10, v16

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v11

    shr-int/lit8 v17, v12, 0x4

    or-int v15, v15, v17

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v12, v12, 0x8

    const/16 v17, 0x6

    .line 19
    aget-byte v13, v10, v17

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    const/4 v13, 0x7

    .line 20
    aget-byte v11, v10, v13

    and-int/lit16 v11, v11, 0xf0

    const/4 v13, 0x4

    shr-int/2addr v11, v13

    const/4 v13, 0x2

    if-eq v11, v13, :cond_7

    const/4 v13, 0x3

    if-eq v11, v13, :cond_6

    const/4 v13, 0x4

    if-eq v11, v13, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    mul-int/lit8 v11, v12, 0x79

    int-to-float v11, v11

    mul-int/lit8 v13, v15, 0x64

    goto :goto_2

    :cond_6
    mul-int/lit8 v11, v12, 0x10

    int-to-float v11, v11

    mul-int/lit8 v13, v15, 0x9

    goto :goto_2

    :cond_7
    mul-int/lit8 v11, v12, 0x4

    int-to-float v11, v11

    mul-int/lit8 v13, v15, 0x3

    :goto_2
    int-to-float v13, v13

    div-float/2addr v11, v13

    :goto_3
    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 21
    invoke-direct {v13}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 22
    invoke-virtual {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v14, "video/mpeg2"

    .line 23
    invoke-virtual {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v13, v15}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    .line 25
    invoke-virtual {v13, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    .line 26
    invoke-virtual {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(F)V

    .line 27
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 28
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v11

    const/4 v12, 0x7

    .line 29
    aget-byte v12, v10, v12

    and-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_9

    sget-object v13, Lcom/google/ads/interactivemedia/v3/internal/mg;->c:[D

    array-length v14, v13

    if-ge v12, v14, :cond_9

    .line 30
    aget-wide v12, v13, v12

    .line 31
    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/mf;->b:I

    add-int/lit8 v9, v9, 0x9

    .line 32
    aget-byte v9, v10, v9

    and-int/lit8 v10, v9, 0x60

    shr-int/lit8 v10, v10, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v10, v9, :cond_8

    int-to-double v14, v10

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    add-int/lit8 v9, v9, 0x1

    int-to-double v9, v9

    div-double/2addr v14, v9

    mul-double v12, v12, v14

    :cond_8
    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v12

    double-to-long v9, v9

    goto :goto_4

    :cond_9
    const-wide/16 v9, 0x0

    .line 33
    :goto_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 34
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-interface {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    .line 35
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->l:J

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->k:Z

    :cond_a
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v10, 0xb2

    if-eqz v9, :cond_e

    if-lez v8, :cond_b

    .line 36
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    neg-int v1, v8

    :goto_5
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 37
    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 38
    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    invoke-static {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v1

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 39
    sget v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->d:Lcom/google/ads/interactivemedia/v3/internal/nn;

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->o:J

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 40
    invoke-virtual {v1, v8, v9, v11}, Lcom/google/ads/interactivemedia/v3/internal/nn;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V

    :cond_c
    if-ne v7, v10, :cond_e

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    add-int/lit8 v7, v4, 0x2

    aget-byte v1, v1, v7

    const/4 v7, 0x1

    if-ne v1, v7, :cond_d

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 42
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    :cond_d
    const/16 v7, 0xb2

    :cond_e
    if-eqz v7, :cond_10

    const/16 v1, 0xb3

    if-ne v7, v1, :cond_f

    goto :goto_6

    :cond_f
    const/16 v1, 0xb8

    if-ne v7, v1, :cond_17

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->p:Z

    goto :goto_b

    :cond_10
    :goto_6
    sub-int v1, v2, v4

    .line 42
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->j:Z

    if-eqz v4, :cond_11

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->q:Z

    if-eqz v4, :cond_11

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->k:Z

    if-eqz v4, :cond_11

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->p:Z

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->i:J

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->n:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->o:J

    sub-long/2addr v8, v12

    long-to-int v9, v8

    sub-int v12, v9, v1

    const/16 v16, 0x0

    move-object v8, v4

    move-wide v9, v14

    move v13, v1

    move-object/from16 v14, v16

    .line 43
    invoke-interface/range {v8 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    :cond_11
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->j:Z

    if-eqz v4, :cond_13

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->q:Z

    if-eqz v8, :cond_12

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_9

    :cond_13
    :goto_7
    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->i:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->n:J

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->m:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v10

    if-eqz v1, :cond_14

    goto :goto_8

    :cond_14
    if-eqz v4, :cond_15

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->o:J

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->l:J

    add-long/2addr v8, v12

    goto :goto_8

    :cond_15
    const-wide/16 v8, 0x0

    :goto_8
    iput-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->o:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->p:Z

    iput-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->m:J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->j:Z

    :goto_9
    if-nez v7, :cond_16

    const/4 v12, 0x1

    goto :goto_a

    :cond_16
    const/4 v12, 0x0

    :goto_a
    iput-boolean v12, v0, Lcom/google/ads/interactivemedia/v3/internal/mg;->q:Z

    :cond_17
    :goto_b
    move v1, v5

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 2

    .line 46
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 47
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mg;->d:Lcom/google/ads/interactivemedia/v3/internal/nn;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nn;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.class final Lcom/google/ads/interactivemedia/v3/internal/lt;
.super Lcom/google/ads/interactivemedia/v3/internal/lr;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/ls;

.field private b:I

.field private c:Z

.field private d:Lcom/google/ads/interactivemedia/v3/internal/jb;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/iz;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/lr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)J
    .locals 12

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 4
    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->a:Lcom/google/ads/interactivemedia/v3/internal/ls;

    .line 5
    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/ls;->d:I

    .line 6
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/internal/ls;->c:[Lcom/google/ads/interactivemedia/v3/internal/ja;

    shr-int/2addr v0, v2

    const/16 v6, 0xff

    const/16 v7, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    aget-object v0, v5, v0

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ja;->a:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/ls;->a:Lcom/google/ads/interactivemedia/v3/internal/jb;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jb;->e:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/ls;->a:Lcom/google/ads/interactivemedia/v3/internal/jb;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jb;->f:I

    .line 7
    :goto_0
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->c:Z

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->b:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v3, v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const-wide/16 v8, 0xff

    and-long v10, v3, v8

    long-to-int v6, v10

    int-to-byte v6, v6

    .line 10
    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    ushr-long v6, v3, v7

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 11
    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 12
    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 13
    aput-byte v5, v1, p1

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->c:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->b:I

    return-wide v3
.end method

.method protected final a(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->a:Lcom/google/ads/interactivemedia/v3/internal/ls;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->e:Lcom/google/ads/interactivemedia/v3/internal/iz;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->b:I

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->c:Z

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;JLcom/google/ads/interactivemedia/v3/internal/lp;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->a:Lcom/google/ads/interactivemedia/v3/internal/ls;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 14
    invoke-static {v6, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;Z)Z

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->u()I

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->u()I

    move-result v9

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->o()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v10, -0x1

    goto :goto_0

    :cond_0
    move v10, v2

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->o()I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v11, -0x1

    goto :goto_1

    :cond_1
    move v11, v2

    .line 20
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->o()I

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    .line 23
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    .line 25
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jb;

    double-to-int v12, v12

    double-to-int v13, v2

    move-object v7, v1

    .line 26
    invoke-direct/range {v7 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/jb;-><init>(IIIIII[B)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    goto :goto_2

    .line 42
    :cond_2
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->e:Lcom/google/ads/interactivemedia/v3/internal/iz;

    if-nez v2, :cond_3

    .line 27
    invoke-static {v1, v6, v6}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;ZZ)Lcom/google/ads/interactivemedia/v3/internal/iz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->e:Lcom/google/ads/interactivemedia/v3/internal/iz;

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 28
    new-array v2, v2, [B

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v7

    .line 29
    invoke-static {v4, v3, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    .line 30
    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/jb;->a:I

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)[Lcom/google/ads/interactivemedia/v3/internal/ja;

    move-result-object v1

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/ls;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    array-length v7, v1

    add-int/2addr v7, v5

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(I)I

    move-result v5

    .line 31
    invoke-direct {v4, v3, v2, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ls;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jb;[B[Lcom/google/ads/interactivemedia/v3/internal/ja;I)V

    .line 26
    :goto_2
    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->a:Lcom/google/ads/interactivemedia/v3/internal/ls;

    if-nez v4, :cond_4

    return v6

    :cond_4
    iget-object v1, v4, Lcom/google/ads/interactivemedia/v3/internal/ls;->a:Lcom/google/ads/interactivemedia/v3/internal/jb;

    new-instance v2, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/jb;->g:[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/lt;->a:Lcom/google/ads/interactivemedia/v3/internal/ls;

    .line 34
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ls;->b:[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 35
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v4, "audio/vorbis"

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/jb;->d:I

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(I)V

    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/jb;->c:I

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/jb;->a:I

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/jb;->b:I

    .line 40
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 42
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/lp;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return v6

    :cond_5
    return v3
.end method

.method protected final c(J)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lr;->c(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->c:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->d:Lcom/google/ads/interactivemedia/v3/internal/jb;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jb;->e:I

    :cond_1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lt;->b:I

    return-void
.end method

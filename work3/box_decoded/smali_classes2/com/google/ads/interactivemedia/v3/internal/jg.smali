.class public final Lcom/google/ads/interactivemedia/v3/internal/jg;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ik;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private f:I

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ot;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/io;

.field private i:I

.field private j:I

.field private k:Lcom/google/ads/interactivemedia/v3/internal/jf;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/jg;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->a:[B

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([BI)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ik;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ik;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/abr;Z)J
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->j:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;Lcom/google/ads/interactivemedia/v3/internal/io;ILcom/google/ads/interactivemedia/v3/internal/ik;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    .line 9
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ik;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->i:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->j:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    .line 12
    invoke-static {p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;Lcom/google/ads/interactivemedia/v3/internal/io;ILcom/google/ads/interactivemedia/v3/internal/ik;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    .line 13
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    .line 15
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ik;->a:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final a()V
    .locals 11

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->m:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 20
    sget v3, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/io;->e:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 21
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    const/4 v5, 0x2

    if-eq v2, v3, :cond_16

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v2, v5, :cond_14

    if-eq v2, v6, :cond_d

    const-wide/16 v8, -0x1

    if-eq v2, v7, :cond_9

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 89
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 90
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->k:Lcom/google/ads/interactivemedia/v3/internal/jf;

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->k:Lcom/google/ads/interactivemedia/v3/internal/jf;

    move-object/from16 v3, p2

    .line 112
    invoke-virtual {v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->m:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 91
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/io;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->m:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 92
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    const v6, 0x8000

    if-ge v2, v6, :cond_4

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 93
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    sub-int/2addr v6, v2

    .line 94
    invoke-virtual {v1, v7, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    add-int/2addr v2, v1

    .line 95
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 96
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    if-nez v1, :cond_5

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/jg;->a()V

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 95
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 97
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->i:I

    if-ge v2, v5, :cond_6

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    sub-int/2addr v5, v2

    .line 98
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_6
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 99
    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jg;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;Z)J

    move-result-wide v2

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 100
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 101
    invoke-virtual {v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 102
    invoke-interface {v1, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/jg;->a()V

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->m:J

    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 104
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    :goto_2
    return v4

    :cond_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 105
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 106
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 107
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 108
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    .line 109
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 110
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    return v4

    .line 73
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 74
    invoke-direct {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 75
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 76
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_c

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->j:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->d:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 80
    sget v3, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v15

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 81
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 82
    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/io;->k:Lcom/google/ads/interactivemedia/v3/internal/in;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/im;

    .line 83
    invoke-direct {v1, v11, v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/im;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;J)V

    goto :goto_3

    :cond_a
    cmp-long v1, v15, v8

    if-eqz v1, :cond_b

    .line 84
    iget-wide v5, v11, Lcom/google/ads/interactivemedia/v3/internal/io;->j:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_b

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jf;

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->j:I

    move-object v10, v1

    .line 86
    invoke-direct/range {v10 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/jf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;IJJ)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->k:Lcom/google/ads/interactivemedia/v3/internal/jf;

    .line 87
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a()Lcom/google/ads/interactivemedia/v3/internal/iu;

    move-result-object v1

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/it;

    .line 85
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/io;->a()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    .line 88
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return v4

    .line 77
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "First frame does not start with sync code."

    .line 78
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_d
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/il;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 31
    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/il;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;)V

    .line 32
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/abq;

    new-array v5, v7, [B

    .line 33
    invoke-direct {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 34
    invoke-virtual {v1, v5, v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 35
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v5

    const/4 v8, 0x7

    .line 36
    invoke-virtual {v3, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v8

    const/16 v9, 0x18

    .line 37
    invoke-virtual {v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    add-int/2addr v3, v7

    const/4 v9, 0x6

    if-nez v8, :cond_f

    const/16 v3, 0x26

    new-array v8, v3, [B

    .line 38
    invoke-virtual {v1, v8, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 39
    invoke-direct {v3, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/io;-><init>([BI)V

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    goto/16 :goto_4

    .line 72
    :cond_f
    iget-object v10, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    if-eqz v10, :cond_13

    if-ne v8, v6, :cond_10

    .line 69
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 40
    invoke-direct {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v11

    .line 41
    invoke-virtual {v1, v11, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    .line 42
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/in;

    move-result-object v3

    .line 43
    invoke-virtual {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/io;->a(Lcom/google/ads/interactivemedia/v3/internal/in;)Lcom/google/ads/interactivemedia/v3/internal/io;

    move-result-object v3

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    goto/16 :goto_4

    :cond_10
    if-ne v8, v7, :cond_11

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 44
    invoke-direct {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v11

    .line 45
    invoke-virtual {v1, v11, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    .line 46
    invoke-virtual {v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 47
    invoke-static {v8, v4, v4}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;ZZ)Lcom/google/ads/interactivemedia/v3/internal/iz;

    move-result-object v3

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/iz;->a:[Ljava/lang/String;

    .line 48
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-virtual {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/io;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/io;

    move-result-object v3

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    goto :goto_4

    :cond_11
    if-ne v8, v9, :cond_12

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 50
    invoke-direct {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v11

    .line 51
    invoke-virtual {v1, v11, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    .line 52
    invoke-virtual {v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 53
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v13

    .line 54
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    .line 55
    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/anc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v3, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    .line 56
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    .line 57
    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e(I)Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v16

    .line 59
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v17

    .line 60
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v18

    .line 61
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v19

    .line 62
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    .line 63
    new-array v11, v3, [B

    .line 64
    invoke-virtual {v8, v11, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/pa;

    move-object v12, v3

    move-object/from16 v20, v11

    .line 65
    invoke-direct/range {v12 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/pa;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 66
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/io;->b(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/io;

    move-result-object v3

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    goto :goto_4

    .line 67
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 39
    :goto_4
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 68
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    if-eqz v5, :cond_e

    .line 70
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 71
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/io;->c:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->i:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->h:Lcom/google/ads/interactivemedia/v3/internal/io;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->a:[B

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->g:Lcom/google/ads/interactivemedia/v3/internal/ot;

    .line 72
    invoke-virtual {v2, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/io;->a([BLcom/google/ads/interactivemedia/v3/internal/ot;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return v4

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 69
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 26
    :cond_14
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 27
    invoke-direct {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3, v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    .line 29
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v1

    const-wide/32 v7, 0x664c6143

    cmp-long v3, v1, v7

    if-nez v3, :cond_15

    .line 30
    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return v4

    .line 29
    :cond_15
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Failed to read FLAC stream marker."

    .line 30
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_16
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->a:[B

    .line 25
    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return v4

    .line 22
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v5

    .line 23
    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 24
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->g:Lcom/google/ads/interactivemedia/v3/internal/ot;

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    return v4
.end method

.method public final a(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->f:I

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->k:Lcom/google/ads/interactivemedia/v3/internal/jf;

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 0
    :goto_1
    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->m:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->l:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->d:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jg;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 19
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Lcom/google/ads/interactivemedia/v3/internal/ot;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x4

    .line 116
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 117
    invoke-virtual {p1, v3, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 118
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

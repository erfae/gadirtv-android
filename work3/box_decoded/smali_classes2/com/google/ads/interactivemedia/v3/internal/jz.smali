.class public final Lcom/google/ads/interactivemedia/v3/internal/jz;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:J

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/gs;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ip;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/iq;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private j:I

.field private k:Lcom/google/ads/interactivemedia/v3/internal/ot;

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:Lcom/google/ads/interactivemedia/v3/internal/ka;

.field private q:Z

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/jz;-><init>([B)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->a:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 p2, 0xa

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/gs;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/gs;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ip;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ip;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/iq;

    .line 5
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/iq;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->e:Lcom/google/ads/interactivemedia/v3/internal/iq;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ig;

    .line 6
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ig;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->i:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jz;-><init>(J)V

    return-void
.end method

.method private final a(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 7
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static a(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const v1, 0x8000

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->e:Lcom/google/ads/interactivemedia/v3/internal/iq;

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/iq;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->k:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    .line 85
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ip;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p2, :cond_2

    .line 86
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 87
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->c(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-lez v4, :cond_4

    goto :goto_4

    .line 96
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 99
    :cond_5
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 88
    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 89
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v7

    if-eqz v2, :cond_6

    int-to-long v8, v2

    invoke-static {v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(IJ)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 90
    :cond_6
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/gt;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b

    :cond_7
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v1, :cond_9

    if-eqz p2, :cond_8

    return v6

    :cond_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Searched too many bytes."

    .line 97
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 91
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    add-int v4, v3, v2

    .line 92
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_3

    .line 93
    :cond_a
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    :goto_3
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_c

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 94
    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/gs;->a(I)Z

    move v2, v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x4

    if-ne v4, v7, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v3, v5

    .line 98
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    goto :goto_5

    .line 99
    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 98
    :goto_5
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->j:I

    return v0

    :cond_e
    :goto_6
    add-int/lit8 v8, v8, -0x4

    .line 95
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_2
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/ie;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->j:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 23
    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_13

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 24
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    invoke-direct {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 25
    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    invoke-virtual {v1, v2, v4, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 26
    iget v9, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->a:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    .line 27
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->e:I

    if-eq v2, v8, :cond_2

    const/16 v2, 0x24

    goto :goto_1

    .line 28
    :cond_1
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->e:I

    if-eq v2, v8, :cond_3

    :cond_2
    const/16 v2, 0x15

    goto :goto_1

    :cond_3
    const/16 v11, 0xd

    const/16 v2, 0xd

    .line 27
    :goto_1
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v9

    add-int/lit8 v11, v2, 0x4

    const v12, 0x58696e67

    const v13, 0x56425249

    const v15, 0x496e666f

    if-lt v9, v11, :cond_5

    .line 29
    invoke-virtual {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 30
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v9

    if-eq v9, v12, :cond_4

    if-ne v9, v15, :cond_5

    const v11, 0x496e666f

    goto :goto_2

    :cond_4
    move v11, v9

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_6

    .line 31
    invoke-virtual {v14, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 32
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v9

    if-ne v9, v13, :cond_6

    const v11, 0x56425249

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eq v11, v12, :cond_9

    if-ne v11, v15, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v13, :cond_8

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 42
    invoke-static/range {v9 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/kb;->a(JJLcom/google/ads/interactivemedia/v3/internal/gs;Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/kb;

    move-result-object v2

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 43
    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    invoke-virtual {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    goto :goto_4

    .line 44
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    const/4 v2, 0x0

    goto :goto_4

    .line 30
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    move v7, v11

    move-wide v11, v12

    move-object v13, v8

    .line 33
    invoke-static/range {v9 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/kc;->a(JJLcom/google/ads/interactivemedia/v3/internal/gs;Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/kc;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    .line 34
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/ip;->a()Z

    move-result v9

    if-nez v9, :cond_b

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    add-int/lit16 v2, v2, 0x8d

    .line 36
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 37
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/4 v9, 0x3

    invoke-virtual {v1, v2, v4, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 38
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 39
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v9

    shr-int/lit8 v10, v9, 0xc

    and-int/lit16 v9, v9, 0xfff

    if-gtz v10, :cond_a

    if-lez v9, :cond_b

    :cond_a
    iput v10, v2, Lcom/google/ads/interactivemedia/v3/internal/ip;->a:I

    iput v9, v2, Lcom/google/ads/interactivemedia/v3/internal/ip;->b:I

    :cond_b
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 40
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/google/ads/interactivemedia/v3/internal/ka;->a()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v7, v15, :cond_c

    .line 41
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->d(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/ka;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v8

    :goto_4
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->k:Lcom/google/ads/interactivemedia/v3/internal/ot;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v8

    if-eqz v7, :cond_e

    .line 45
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_e

    .line 46
    invoke-virtual {v7, v11}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v12

    .line 47
    instance-of v13, v12, Lcom/google/ads/interactivemedia/v3/internal/pz;

    if-eqz v13, :cond_d

    .line 48
    check-cast v12, Lcom/google/ads/interactivemedia/v3/internal/pz;

    invoke-static {v8, v9, v12}, Lcom/google/ads/interactivemedia/v3/internal/jy;->a(JLcom/google/ads/interactivemedia/v3/internal/pz;)Lcom/google/ads/interactivemedia/v3/internal/jy;

    move-result-object v7

    goto :goto_6

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    :goto_6
    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->q:Z

    if-eqz v8, :cond_f

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/it;

    .line 49
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>()V

    goto :goto_8

    :cond_f
    if-eqz v7, :cond_10

    move-object v2, v7

    goto :goto_7

    :cond_10
    if-nez v2, :cond_11

    const/4 v2, 0x0

    :cond_11
    :goto_7
    if-nez v2, :cond_12

    .line 50
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->d(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/ka;

    move-result-object v2

    .line 49
    :cond_12
    :goto_8
    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->g:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 51
    invoke-interface {v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->i:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 52
    invoke-direct {v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/gs;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    const/16 v8, 0x1000

    .line 54
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->h(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/gs;->e:I

    .line 55
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/gs;->d:I

    .line 56
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ip;->a:I

    .line 57
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->d:Lcom/google/ads/interactivemedia/v3/internal/ip;

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ip;->b:I

    .line 58
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->k:Lcom/google/ads/interactivemedia/v3/internal/ot;

    .line 59
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    .line 60
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v7

    .line 52
    invoke-interface {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->n:J

    goto :goto_9

    .line 28
    :cond_13
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->n:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->n:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_14

    sub-long/2addr v9, v7

    long-to-int v2, v9

    .line 61
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 52
    :cond_14
    :goto_9
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    if-nez v2, :cond_1a

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 63
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->c(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_d

    :cond_15
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 64
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 65
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->j:I

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(IJ)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 66
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/gt;->a(I)I

    move-result v7

    if-ne v7, v3, :cond_16

    goto :goto_a

    .line 67
    :cond_16
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 68
    invoke-virtual {v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/gs;->a(I)Z

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    .line 69
    invoke-interface {v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ka;->b(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->a:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 70
    invoke-interface {v2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ka;->b(J)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->a:J

    sub-long/2addr v9, v5

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    :cond_17
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 71
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 72
    instance-of v7, v6, Lcom/google/ads/interactivemedia/v3/internal/jx;

    if-nez v7, :cond_18

    move v2, v5

    goto :goto_b

    .line 77
    :cond_18
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/jx;

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    .line 78
    iget v1, v2, Lcom/google/ads/interactivemedia/v3/internal/gs;->g:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 79
    invoke-direct {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(J)J

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 80
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    const/4 v2, 0x0

    throw v2

    :cond_19
    :goto_a
    const/4 v5, 0x1

    .line 67
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->j:I

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v5, 0x1

    .line 72
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->i:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 73
    invoke-interface {v6, v1, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v1

    if-ne v1, v3, :cond_1b

    goto :goto_d

    :cond_1b
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    if-lez v2, :cond_1c

    :goto_c
    const/4 v3, 0x0

    :goto_d
    return v3

    :cond_1c
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->i:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    .line 74
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 75
    invoke-interface/range {v5 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 76
    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/gs;->g:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    return v4
.end method

.method private final c(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ka;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final d(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/ka;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gs;->a(I)Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jw;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->c:Lcom/google/ads/interactivemedia/v3/internal/gs;

    move-object v2, v0

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/jw;-><init>(JJLcom/google/ads/interactivemedia/v3/internal/gs;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 16
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    .line 18
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 19
    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jx;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 21
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ka;->b()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 22
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jx;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :cond_2
    return p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->q:Z

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->l:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->m:J

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->o:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->r:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->p:Lcom/google/ads/interactivemedia/v3/internal/ka;

    .line 81
    instance-of p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jx;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jx;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->g:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->i:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jz;->g:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 13
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

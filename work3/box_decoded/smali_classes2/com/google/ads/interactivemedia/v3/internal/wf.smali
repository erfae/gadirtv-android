.class final Lcom/google/ads/interactivemedia/v3/internal/wf;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/wg;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/wz;

.field private final e:[Landroid/net/Uri;

.field private final f:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/xu;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/sz;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/wa;

.field private k:Z

.field private l:[B

.field private m:Ljava/io/IOException;

.field private n:Landroid/net/Uri;

.field private o:Z

.field private p:Lcom/google/ads/interactivemedia/v3/internal/yr;

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/xu;[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/wz;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->e:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->f:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->d:Lcom/google/ads/interactivemedia/v3/internal/wz;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->i:Ljava/util/List;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/wa;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 2
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->l:[B

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->q:J

    .line 3
    invoke-virtual {p5}, Lcom/google/ads/interactivemedia/v3/internal/vx;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->b:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-eqz p6, :cond_0

    .line 4
    invoke-interface {p1, p6}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/google/ads/interactivemedia/v3/internal/vx;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 6
    invoke-direct {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 8
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_2

    .line 9
    aget-object p5, p4, p2

    iget p5, p5, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:I

    and-int/lit16 p5, p5, 0x4000

    if-nez p5, :cond_1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/we;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 11
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/we;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/wh;ZLcom/google/ads/interactivemedia/v3/internal/xk;JJ)J
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/wh;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/tu;->g()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/wh;->l:J

    :goto_0
    return-wide p1

    .line 25
    :cond_2
    :goto_1
    iget-wide v0, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->o:Z

    if-eqz p2, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    iget-wide p6, p1, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    .line 26
    :cond_4
    :goto_2
    iget-boolean p2, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-nez p2, :cond_6

    cmp-long p2, p6, v0

    if-gez p2, :cond_5

    goto :goto_4

    .line 29
    :cond_5
    iget-wide p1, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_3
    add-long/2addr p1, p3

    return-wide p1

    .line 27
    :cond_6
    :goto_4
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    sub-long/2addr p6, p4

    .line 28
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/internal/xu;->e()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_8

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 p6, 0x0

    .line 27
    :cond_8
    :goto_5
    invoke-static {p2, p4, p6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    goto :goto_3
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xj;)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xj;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xk;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Landroid/net/Uri;I)Lcom/google/ads/interactivemedia/v3/internal/tl;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 74
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/wa;->b(Landroid/net/Uri;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 75
    invoke-virtual {p2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/wa;->a(Landroid/net/Uri;[B)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zr;

    .line 76
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(Landroid/net/Uri;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a()Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v3

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wb;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->f:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 78
    aget-object v4, v0, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 79
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b()I

    move-result v5

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 80
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->l:[B

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/wb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;[B)V

    return-object p1
.end method


# virtual methods
.method public final a(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->m:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 71
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/yr;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 72
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->m:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 84
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->b(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 83
    :cond_1
    throw v0
.end method

.method public final a(JJLjava/util/List;ZLcom/google/ads/interactivemedia/v3/internal/wc;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/wh;",
            ">;Z",
            "Lcom/google/ads/interactivemedia/v3/internal/wc;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p7

    .line 31
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    iget-object v2, v4, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 32
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v0

    move v5, v0

    :goto_1
    sub-long v2, v6, p1

    .line 31
    iget-wide v12, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->q:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v18

    if-eqz v0, :cond_2

    sub-long v12, v12, p1

    goto :goto_2

    :cond_2
    move-wide/from16 v12, v18

    :goto_2
    if-eqz v4, :cond_3

    iget-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->o:Z

    if-nez v0, :cond_3

    iget-wide v14, v4, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    iget-wide v10, v4, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    sub-long/2addr v14, v10

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    .line 33
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v0, v12, v18

    if-eqz v0, :cond_3

    sub-long/2addr v12, v14

    .line 34
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v13, v2

    move-wide v15, v10

    goto :goto_3

    :cond_3
    move-wide v15, v12

    move-wide v13, v2

    .line 35
    :goto_3
    invoke-virtual {v8, v4, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;J)[Lcom/google/ads/interactivemedia/v3/internal/tw;

    iget-object v12, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-object/from16 v17, p5

    .line 36
    invoke-interface/range {v12 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(JJLjava/util/List;)V

    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 37
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/yr;->i()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v5, v10, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->e:[Landroid/net/Uri;

    .line 38
    aget-object v14, v0, v10

    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 39
    invoke-interface {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v14, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->c:Landroid/net/Uri;

    iget-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    .line 40
    invoke-virtual {v14, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    iput-object v14, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    return-void

    :cond_5
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 41
    invoke-interface {v0, v14, v12}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;Z)Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-result-object v15

    .line 42
    invoke-static {v15}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->p:Z

    iput-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->o:Z

    .line 44
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 45
    :cond_6
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/xk;->a()J

    move-result-wide v0

    iget-object v2, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c()J

    move-result-wide v2

    sub-long v18, v0, v2

    :goto_5
    move-wide/from16 v0, v18

    .line 44
    iput-wide v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->q:J

    .line 46
    iget-wide v0, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-object v2, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c()J

    move-result-wide v2

    sub-long v16, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move-object v3, v15

    move-object/from16 v25, v4

    move/from16 v18, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, p3

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;ZLcom/google/ads/interactivemedia/v3/internal/xk;JJ)J

    move-result-wide v0

    .line 48
    iget-wide v2, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    if-eqz v25, :cond_7

    if-eqz v13, :cond_7

    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->e:[Landroid/net/Uri;

    .line 49
    aget-object v0, v0, v18

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 50
    invoke-interface {v1, v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;Z)Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-object v4, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual/range {v25 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/tu;->g()J

    move-result-wide v4

    move-wide v15, v2

    move-object v3, v0

    move-object v2, v1

    move-wide v0, v4

    move/from16 v5, v18

    goto :goto_6

    :cond_7
    move v5, v10

    move-object v3, v14

    move-object v2, v15

    move-wide/from16 v15, v16

    .line 53
    :goto_6
    iget-wide v6, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ql;

    .line 54
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ql;-><init>()V

    iput-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->m:Ljava/io/IOException;

    return-void

    :cond_8
    sub-long/2addr v0, v6

    long-to-int v1, v0

    .line 55
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    .line 56
    iget-boolean v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v1, :cond_b

    if-nez p6, :cond_a

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, -0x1

    add-int/2addr v0, v1

    goto :goto_8

    :cond_a
    :goto_7
    iput-boolean v12, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->b:Z

    return-void

    .line 69
    :cond_b
    iput-object v3, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->c:Landroid/net/Uri;

    iget-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    .line 70
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    iput-object v3, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    return-void

    :cond_c
    move v0, v1

    .line 56
    :goto_8
    iput-boolean v11, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    .line 57
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/xj;

    .line 58
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xj;->b:Lcom/google/ads/interactivemedia/v3/internal/xj;

    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xj;)Landroid/net/Uri;

    move-result-object v4

    .line 59
    invoke-direct {v8, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Landroid/net/Uri;I)Lcom/google/ads/interactivemedia/v3/internal/tl;

    move-result-object v6

    iput-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 60
    iget-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    if-eqz v6, :cond_d

    return-void

    .line 61
    :cond_d
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xj;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    invoke-direct {v8, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Landroid/net/Uri;I)Lcom/google/ads/interactivemedia/v3/internal/tl;

    move-result-object v6

    iput-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 63
    iget-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    if-eqz v6, :cond_e

    return-void

    :cond_e
    iget-object v12, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iget-object v13, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->b:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v6, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->f:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 64
    aget-object v14, v6, v5

    iget-object v5, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->i:Ljava/util/List;

    iget-object v6, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 65
    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b()I

    move-result v21

    iget-object v6, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 66
    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c()Ljava/lang/Object;

    move-result-object v22

    iget-boolean v6, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->k:Z

    iget-object v7, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->d:Lcom/google/ads/interactivemedia/v3/internal/wz;

    iget-object v10, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 67
    invoke-virtual {v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/wa;->a(Landroid/net/Uri;)[B

    move-result-object v26

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 68
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/wa;->a(Landroid/net/Uri;)[B

    move-result-object v27

    move-object/from16 v17, v2

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 69
    invoke-static/range {v12 .. v27}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/cz;JLcom/google/ads/interactivemedia/v3/internal/xk;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLcom/google/ads/interactivemedia/v3/internal/wz;Lcom/google/ads/interactivemedia/v3/internal/wh;[B[B)Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object v0

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/tl;)V
    .locals 2

    .line 85
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/wb;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/wb;

    .line 87
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ts;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->l:[B

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->j:Lcom/google/ads/interactivemedia/v3/internal/wa;

    .line 88
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/wb;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    .line 89
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/wb;->g()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 88
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/wa;->a(Landroid/net/Uri;[B)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->k:Z

    return-void
.end method

.method public final a(JLcom/google/ads/interactivemedia/v3/internal/tl;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/ads/interactivemedia/v3/internal/tl;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->m:Ljava/io/IOException;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 95
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->j()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/net/Uri;J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->e:[Landroid/net/Uri;

    .line 90
    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    .line 91
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 92
    invoke-interface {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->n:Landroid/net/Uri;

    .line 93
    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->r:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 94
    invoke-interface {p1, v1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/tl;J)Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 81
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 82
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c(I)I

    move-result p1

    .line 81
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(IJ)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/wh;J)[Lcom/google/ads/interactivemedia/v3/internal/tw;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v0

    move v10, v0

    .line 0
    :goto_0
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 13
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/yr;->g()I

    move-result v11

    new-array v12, v11, [Lcom/google/ads/interactivemedia/v3/internal/tw;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 14
    invoke-interface {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b(I)I

    move-result v0

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->e:[Landroid/net/Uri;

    .line 15
    aget-object v1, v1, v0

    iget-object v2, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 16
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/tw;->a:Lcom/google/ads/interactivemedia/v3/internal/tw;

    .line 17
    aput-object v0, v12, v14

    goto :goto_3

    :cond_1
    iget-object v2, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 18
    invoke-interface {v2, v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;Z)Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-result-object v15

    .line 19
    invoke-static {v15}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-wide v1, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-object v3, v8, Lcom/google/ads/interactivemedia/v3/internal/wf;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c()J

    move-result-wide v3

    sub-long v4, v1, v3

    if-eq v0, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide/from16 v6, p2

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;ZLcom/google/ads/interactivemedia/v3/internal/xk;JJ)J

    move-result-wide v0

    .line 22
    iget-wide v2, v15, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/tw;->a:Lcom/google/ads/interactivemedia/v3/internal/tw;

    .line 23
    aput-object v0, v12, v14

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/wd;

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 24
    invoke-direct {v4, v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/wd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/xk;I)V

    aput-object v4, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/sz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->h:Lcom/google/ads/interactivemedia/v3/internal/sz;

    return-object v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/yr;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->p:Lcom/google/ads/interactivemedia/v3/internal/yr;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wf;->m:Ljava/io/IOException;

    return-void
.end method

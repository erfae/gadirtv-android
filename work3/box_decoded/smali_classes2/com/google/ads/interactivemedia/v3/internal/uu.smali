.class public final Lcom/google/ads/interactivemedia/v3/internal/uu;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ty;


# instance fields
.field protected final a:[Lcom/google/ads/interactivemedia/v3/internal/us;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aas;

.field private final c:[I

.field private final d:I

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private final f:J

.field private final g:I

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/uy;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/yr;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/vb;

.field private k:I

.field private l:Ljava/io/IOException;

.field private m:Z

.field private n:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/vb;I[ILcom/google/ads/interactivemedia/v3/internal/yr;ILcom/google/ads/interactivemedia/v3/internal/zo;JIZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/uy;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aas;",
            "Lcom/google/ads/interactivemedia/v3/internal/vb;",
            "I[I",
            "Lcom/google/ads/interactivemedia/v3/internal/yr;",
            "I",
            "Lcom/google/ads/interactivemedia/v3/internal/zo;",
            "JIZ",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/uy;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->b:Lcom/google/ads/interactivemedia/v3/internal/aas;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->c:[I

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    move/from16 v10, p6

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->d:I

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    move/from16 v3, p3

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    move-wide/from16 v4, p8

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->f:J

    const/4 v4, 0x1

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->g:I

    move-object/from16 v11, p13

    iput-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->h:Lcom/google/ads/interactivemedia/v3/internal/uy;

    .line 1
    invoke-virtual/range {p2 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v12

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->n:J

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/uu;->c()Ljava/util/ArrayList;

    move-result-object v14

    .line 3
    invoke-interface/range {p5 .. p5}, Lcom/google/ads/interactivemedia/v3/internal/yr;->g()I

    move-result v2

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/us;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 4
    array-length v2, v2

    if-ge v15, v2, :cond_0

    .line 5
    invoke-interface {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b(I)I

    move-result v2

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/vl;

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    new-instance v16, Lcom/google/ads/interactivemedia/v3/internal/us;

    move-object/from16 v2, v16

    move-wide v3, v12

    move/from16 v5, p6

    move/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v17, v9

    move-object/from16 v9, p13

    .line 6
    invoke-direct/range {v2 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JILcom/google/ads/interactivemedia/v3/internal/vl;ZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    aput-object v16, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(Lcom/google/ads/interactivemedia/v3/internal/us;Lcom/google/ads/interactivemedia/v3/internal/tu;JJJ)J
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/tu;->g()J

    move-result-wide p0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/us;->c(J)J

    move-result-wide v0

    move-wide v2, p4

    move-wide v4, p6

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JJJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private final c()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/vl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vg;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->c:[I

    .line 78
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 79
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/va;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/va;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
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

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 73
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/yr;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 75
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 74
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 8
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/us;->c(J)J

    move-result-wide v0

    .line 10
    invoke-virtual {v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v7

    cmp-long v2, v7, p1

    if-gez v2, :cond_0

    .line 11
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/us;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 12
    invoke-virtual {v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_1

    :cond_0
    move-wide v9, v7

    :goto_1
    move-object v4, p3

    move-wide v5, p1

    .line 13
    invoke-virtual/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/eg;->a(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide p1
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->b:Lcom/google/ads/interactivemedia/v3/internal/aas;

    .line 83
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/aas;->a()V

    return-void

    .line 82
    :cond_0
    throw v0
.end method

.method public final a(JJLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/tm;)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/tm;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p6

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sub-long v10, p3, p1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 14
    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->n:J

    cmp-long v4, v2, v12

    if-eqz v4, :cond_1

    sub-long v2, v2, p1

    move-wide v14, v2

    goto :goto_0

    :cond_1
    move-wide v14, v12

    .line 15
    :goto_0
    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    .line 16
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 17
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long v1, v1, p3

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->h:Lcom/google/ads/interactivemedia/v3/internal/uy;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 18
    invoke-virtual {v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(J)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->f:J

    .line 19
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v7

    .line 20
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_4

    move-object/from16 v5, p5

    move-object/from16 v17, v16

    goto :goto_2

    :cond_4
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v5, p5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tu;

    move-object/from16 v17, v1

    :goto_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 21
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->g()I

    move-result v6

    new-array v3, v6, [Lcom/google/ads/interactivemedia/v3/internal/tw;

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 22
    aget-object v1, v1, v4

    .line 23
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    if-nez v2, :cond_5

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/tw;->a:Lcom/google/ads/interactivemedia/v3/internal/tw;

    .line 24
    aput-object v1, v3, v4

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v6

    move-wide/from16 v24, v7

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 25
    invoke-virtual {v1, v2, v12, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J

    move-result-wide v12

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    move-object/from16 p1, v3

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 26
    invoke-virtual {v1, v2, v3, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/us;->b(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J

    move-result-wide v2

    move-wide/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v21, p1

    move/from16 v22, v4

    move-wide/from16 v3, p3

    move/from16 v23, v6

    move-wide v5, v12

    move-wide/from16 v24, v7

    move-wide/from16 v7, v19

    .line 27
    invoke-static/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/uu;->a(Lcom/google/ads/interactivemedia/v3/internal/us;Lcom/google/ads/interactivemedia/v3/internal/tu;JJJ)J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-gez v3, :cond_6

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/tw;->a:Lcom/google/ads/interactivemedia/v3/internal/tw;

    .line 28
    aput-object v1, v21, v22

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ut;

    move-wide/from16 v4, v19

    .line 29
    invoke-direct {v3, v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ut;-><init>(JJ)V

    aput-object v3, v21, v22

    :goto_4
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v5, p5

    move-object/from16 v3, v21

    move/from16 v6, v23

    move-wide/from16 v7, v24

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_7
    move-wide/from16 v24, v7

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-wide v3, v10

    move-wide v5, v14

    move-object/from16 v7, p5

    .line 30
    invoke-interface/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(JJLjava/util/List;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 31
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a()I

    move-result v2

    aget-object v10, v1, v2

    .line 32
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    if-eqz v1, :cond_c

    .line 33
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tk;->c()[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    if-nez v1, :cond_8

    .line 34
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/vl;->f()Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object/from16 v1, v16

    .line 35
    :goto_5
    iget-object v3, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    if-nez v3, :cond_9

    .line 36
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/vl;->c()Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v16

    :cond_9
    move-object/from16 v2, v16

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 37
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/yr;->h()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v29

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b()I

    move-result v30

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 38
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c()Ljava/lang/Object;

    move-result-object v31

    .line 39
    iget-object v4, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    if-eqz v1, :cond_b

    .line 40
    iget-object v5, v4, Lcom/google/ads/interactivemedia/v3/internal/vl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/vi;->a(Lcom/google/ads/interactivemedia/v3/internal/vi;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v2

    .line 41
    :goto_6
    invoke-static {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a(Lcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/vi;)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v28

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/tt;

    .line 42
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v32, v2

    invoke-direct/range {v26 .. v32}, Lcom/google/ads/interactivemedia/v3/internal/tt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/tk;)V

    iput-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/tm;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    return-void

    .line 43
    :cond_c
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(Lcom/google/ads/interactivemedia/v3/internal/us;)J

    move-result-wide v11

    const/4 v13, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v11, v1

    if-eqz v14, :cond_d

    const/4 v15, 0x1

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    .line 44
    :goto_7
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/us;->b()I

    move-result v1

    if-nez v1, :cond_e

    iput-boolean v15, v9, Lcom/google/ads/interactivemedia/v3/internal/tm;->b:Z

    return-void

    :cond_e
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    move-wide/from16 v3, v24

    .line 45
    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J

    move-result-wide v19

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 46
    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/us;->b(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 47
    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v1, :cond_f

    .line 48
    invoke-virtual {v10, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/us;->b(J)J

    move-result-wide v1

    goto :goto_8

    :cond_f
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->n:J

    move-object v1, v10

    move-object/from16 v2, v17

    move-wide/from16 v3, p3

    move-wide/from16 v5, v19

    move-wide/from16 v16, v7

    .line 49
    invoke-static/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/uu;->a(Lcom/google/ads/interactivemedia/v3/internal/us;Lcom/google/ads/interactivemedia/v3/internal/tu;JJJ)J

    move-result-wide v1

    cmp-long v3, v1, v19

    if-gez v3, :cond_10

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ql;

    .line 50
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ql;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    return-void

    :cond_10
    cmp-long v3, v1, v16

    if-gtz v3, :cond_1a

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->m:Z

    if-eqz v4, :cond_11

    if-gez v3, :cond_1a

    :cond_11
    if-eqz v15, :cond_13

    .line 51
    invoke-virtual {v10, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-gez v5, :cond_12

    goto :goto_9

    .line 69
    :cond_12
    iput-boolean v13, v9, Lcom/google/ads/interactivemedia/v3/internal/tm;->b:Z

    return-void

    :cond_13
    :goto_9
    sub-long v7, v16, v1

    const-wide/16 v3, 0x1

    add-long/2addr v7, v3

    .line 52
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const-wide/16 v5, -0x1

    if-eqz v14, :cond_14

    :goto_a
    if-le v4, v13, :cond_14

    int-to-long v7, v4

    add-long/2addr v7, v1

    add-long/2addr v7, v5

    .line 53
    invoke-virtual {v10, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v7

    cmp-long v3, v7, v11

    if-ltz v3, :cond_14

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 54
    :cond_14
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eq v13, v3, :cond_15

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_b

    :cond_15
    move-wide/from16 v31, p3

    :goto_b
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->d:I

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 55
    invoke-interface {v8}, Lcom/google/ads/interactivemedia/v3/internal/yr;->h()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v8

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 56
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b()I

    move-result v25

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 57
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/internal/yr;->c()Ljava/lang/Object;

    move-result-object v26

    .line 58
    iget-object v11, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    .line 59
    invoke-virtual {v10, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v27

    .line 60
    invoke-virtual {v10, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/us;->d(J)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v12

    .line 61
    iget-object v14, v11, Lcom/google/ads/interactivemedia/v3/internal/vl;->b:Ljava/lang/String;

    .line 62
    iget-object v15, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    if-nez v15, :cond_16

    .line 70
    invoke-virtual {v10, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/us;->b(J)J

    move-result-wide v29

    .line 71
    invoke-static {v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a(Lcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/vi;)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v23

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/tx;

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v24, v8

    move-wide/from16 v31, v1

    move/from16 v33, v7

    move-object/from16 v34, v8

    .line 72
    invoke-direct/range {v21 .. v34}, Lcom/google/ads/interactivemedia/v3/internal/tx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJILcom/google/ads/interactivemedia/v3/internal/cz;)V

    goto :goto_f

    :cond_16
    const/4 v7, 0x1

    :goto_c
    if-ge v13, v4, :cond_18

    int-to-long v5, v13

    add-long/2addr v5, v1

    .line 63
    invoke-virtual {v10, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/us;->d(J)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v5

    .line 64
    invoke-virtual {v12, v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/vi;->a(Lcom/google/ads/interactivemedia/v3/internal/vi;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v5

    if-nez v5, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v12, v5

    const-wide/16 v5, -0x1

    goto :goto_c

    :cond_18
    :goto_d
    int-to-long v4, v7

    add-long/2addr v4, v1

    const-wide/16 v13, -0x1

    add-long/2addr v4, v13

    .line 65
    invoke-virtual {v10, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/us;->b(J)J

    move-result-wide v29

    .line 66
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(Lcom/google/ads/interactivemedia/v3/internal/us;)J

    move-result-wide v4

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v13

    if-eqz v6, :cond_19

    cmp-long v6, v4, v29

    if-gtz v6, :cond_19

    move-wide/from16 v33, v4

    goto :goto_e

    :cond_19
    move-wide/from16 v33, v13

    .line 67
    :goto_e
    invoke-static {v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a(Lcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/vi;)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v23

    .line 68
    iget-wide v4, v11, Lcom/google/ads/interactivemedia/v3/internal/vl;->c:J

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/tr;

    move-object/from16 v21, v6

    neg-long v4, v4

    move-wide/from16 v38, v4

    .line 69
    iget-object v4, v10, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    move-object/from16 v40, v4

    move-object/from16 v22, v3

    move-object/from16 v24, v8

    move-wide/from16 v35, v1

    move/from16 v37, v7

    invoke-direct/range {v21 .. v40}, Lcom/google/ads/interactivemedia/v3/internal/tr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJJJIJLcom/google/ads/interactivemedia/v3/internal/tk;)V

    move-object v4, v6

    .line 72
    :goto_f
    iput-object v4, v9, Lcom/google/ads/interactivemedia/v3/internal/tm;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    return-void

    .line 69
    :cond_1a
    iput-boolean v15, v9, Lcom/google/ads/interactivemedia/v3/internal/tm;->b:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/tl;)V
    .locals 7

    .line 84
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/tt;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tt;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 86
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/tt;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 87
    aget-object v1, v1, v0

    .line 88
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    if-nez v2, :cond_0

    .line 89
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/tk;->b()Lcom/google/ads/interactivemedia/v3/internal/ic;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/uq;

    .line 90
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    iget-wide v5, v5, Lcom/google/ads/interactivemedia/v3/internal/vl;->c:J

    invoke-direct {v4, v2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/uq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ic;J)V

    .line 91
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(Lcom/google/ads/interactivemedia/v3/internal/up;)Lcom/google/ads/interactivemedia/v3/internal/us;

    move-result-object v1

    aput-object v1, v3, v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->h:Lcom/google/ads/interactivemedia/v3/internal/uy;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 92
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uz;->b(Lcom/google/ads/interactivemedia/v3/internal/tl;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vb;I)V
    .locals 5

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->k:I

    .line 106
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide p1

    .line 107
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uu;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 108
    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 109
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->b(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/vl;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 110
    aget-object v4, v3, v1

    .line 111
    invoke-virtual {v4, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(JLcom/google/ads/interactivemedia/v3/internal/vl;)Lcom/google/ads/interactivemedia/v3/internal/us;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/ql; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

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

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->l:Ljava/io/IOException;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 105
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->j()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/tl;ZLjava/lang/Exception;J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->h:Lcom/google/ads/interactivemedia/v3/internal/uy;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 93
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(Lcom/google/ads/interactivemedia/v3/internal/tl;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->j:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 94
    iget-boolean p2, p2, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-nez p2, :cond_4

    instance-of p2, p1, Lcom/google/ads/interactivemedia/v3/internal/tu;

    if-eqz p2, :cond_4

    instance-of p2, p3, Lcom/google/ads/interactivemedia/v3/internal/aaf;

    if-eqz p2, :cond_4

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/aaf;

    iget p2, p3, Lcom/google/ads/interactivemedia/v3/internal/aaf;->a:I

    const/16 p3, 0x194

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 95
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 96
    invoke-interface {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p3

    aget-object p2, p2, p3

    .line 97
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/us;->b()I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_4

    if-eqz p3, :cond_4

    .line 98
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/us;->a()J

    move-result-wide v2

    .line 99
    move-object p2, p1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/tu;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/tu;->g()J

    move-result-wide v4

    int-to-long p2, p3

    add-long/2addr v2, p2

    const-wide/16 p2, -0x1

    add-long/2addr v2, p2

    cmp-long p2, v4, v2

    if-gtz p2, :cond_3

    goto :goto_1

    .line 101
    :cond_3
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->m:Z

    return v1

    :cond_4
    :goto_1
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, p2

    if-eqz v2, :cond_5

    .line 99
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->i:Lcom/google/ads/interactivemedia/v3/internal/yr;

    .line 100
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 101
    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1

    invoke-interface {p2, p1, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uu;->a:[Lcom/google/ads/interactivemedia/v3/internal/us;

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/tk;->d()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

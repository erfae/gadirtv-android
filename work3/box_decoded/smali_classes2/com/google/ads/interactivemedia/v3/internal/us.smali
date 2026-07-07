.class public final Lcom/google/ads/interactivemedia/v3/internal/us;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/vl;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/up;

.field final c:Lcom/google/ads/interactivemedia/v3/internal/tk;

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(JILcom/google/ads/interactivemedia/v3/internal/vl;ZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ix;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/google/ads/interactivemedia/v3/internal/vl;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/ix;",
            ")V"
        }
    .end annotation

    move-object/from16 v3, p4

    move-object/from16 v0, p6

    .line 1
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 3
    iget-object v2, v3, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 4
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_0

    :catch_0
    move-object v2, v6

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v7, "com.google.ads.interactivemedia.v3.exoplayer2.source.MediaParserChunkExtractor"

    .line 5
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    .line 6
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    const-class v10, Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object v10, v9, v5

    const-class v10, Ljava/util/List;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 7
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v2, v8, v5

    aput-object v0, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_3

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "application/x-rawcc"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lu;

    .line 11
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/lu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    goto :goto_2

    :cond_2
    move-object v4, v6

    goto :goto_3

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jt;

    invoke-direct {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/jt;-><init>(I)V

    goto :goto_2

    :cond_4
    move/from16 v1, p5

    if-eq v5, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x4

    .line 14
    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ks;

    move-object/from16 v2, p7

    invoke-direct {v1, v4, v6, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ks;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    move-object v0, v1

    .line 11
    :goto_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/tk;

    .line 15
    iget-object v2, v3, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    move v4, p3

    invoke-direct {v1, v0, p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/tk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ih;ILcom/google/ads/interactivemedia/v3/internal/cz;)V

    move-object v4, v1

    :goto_3
    const-wide/16 v5, 0x0

    .line 16
    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/vl;->d()Lcom/google/ads/interactivemedia/v3/internal/up;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p4

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-void
.end method

.method private constructor <init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/us;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    .line 40
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/up;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    sub-long/2addr p1, v1

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J
    .locals 6

    .line 34
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/us;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/vb;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 36
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    .line 37
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object p2

    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    .line 38
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/vb;->f:J

    .line 39
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/us;->a()J

    move-result-wide v4

    sub-long/2addr p3, v0

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/us;->c(J)J

    move-result-wide p1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/us;->a()J

    move-result-wide p1

    return-wide p1
.end method

.method final a(JLcom/google/ads/interactivemedia/v3/internal/vl;)Lcom/google/ads/interactivemedia/v3/internal/us;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ql;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    .line 18
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/vl;->d()Lcom/google/ads/interactivemedia/v3/internal/up;

    move-result-object v1

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/vl;->d()Lcom/google/ads/interactivemedia/v3/internal/up;

    move-result-object v8

    if-nez v1, :cond_0

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    const/4 v8, 0x0

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-object v9

    :cond_0
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/up;->b()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-object v9

    .line 22
    :cond_1
    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/up;->c(J)I

    move-result v4

    if-nez v4, :cond_2

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-object v9

    :cond_2
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/up;->a()J

    move-result-wide v5

    .line 24
    invoke-interface {v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(J)J

    move-result-wide v9

    int-to-long v11, v4

    add-long/2addr v11, v5

    const-wide/16 v13, -0x1

    add-long/2addr v11, v13

    .line 25
    invoke-interface {v1, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(J)J

    move-result-wide v13

    .line 26
    invoke-interface {v1, v11, v12, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/up;->b(JJ)J

    move-result-wide v15

    add-long/2addr v13, v15

    move-wide v15, v5

    .line 27
    invoke-interface {v8}, Lcom/google/ads/interactivemedia/v3/internal/up;->a()J

    move-result-wide v4

    .line 28
    invoke-interface {v8, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(J)J

    move-result-wide v6

    move-object v3, v1

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    cmp-long v17, v13, v6

    if-nez v17, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr v11, v6

    sub-long/2addr v11, v4

    add-long/2addr v1, v11

    move-wide/from16 v11, p1

    :goto_0
    move-wide v6, v1

    goto :goto_1

    :cond_3
    if-ltz v17, :cond_5

    cmp-long v11, v6, v9

    if-gez v11, :cond_4

    move-wide/from16 v11, p1

    .line 30
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(JJ)J

    move-result-wide v3

    sub-long/2addr v3, v15

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_4
    move-wide/from16 v11, p1

    .line 31
    invoke-interface {v3, v6, v7, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v1, v6

    goto :goto_0

    .line 28
    :goto_1
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-object v9

    :cond_5
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ql;

    .line 29
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ql;-><init>()V

    throw v1
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/up;)Lcom/google/ads/interactivemedia/v3/internal/us;
    .locals 9

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/us;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->a:Lcom/google/ads/interactivemedia/v3/internal/vl;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->c:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    move-object v0, v8

    move-object v7, p1

    .line 33
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/us;-><init>(JLcom/google/ads/interactivemedia/v3/internal/vl;Lcom/google/ads/interactivemedia/v3/internal/tk;JLcom/google/ads/interactivemedia/v3/internal/up;)V

    return-object v8
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    .line 46
    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/up;->c(J)I

    move-result v0

    return v0
.end method

.method public final b(J)J
    .locals 5

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/us;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    .line 48
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/up;->b(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/vb;IJ)J
    .locals 5

    .line 41
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/us;->b()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 42
    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v3

    sub-long/2addr p3, v3

    .line 43
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    .line 44
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/us;->c(J)J

    move-result-wide p1

    :goto_0
    add-long/2addr p1, v1

    return-wide p1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/us;->a()J

    move-result-wide p1

    int-to-long p3, v0

    add-long/2addr p1, p3

    goto :goto_0
.end method

.method public final c(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->d:J

    .line 49
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/up;->a(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(J)Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->b:Lcom/google/ads/interactivemedia/v3/internal/up;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/us;->e:J

    sub-long/2addr p1, v1

    .line 51
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/up;->b(J)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object p1

    return-object p1
.end method

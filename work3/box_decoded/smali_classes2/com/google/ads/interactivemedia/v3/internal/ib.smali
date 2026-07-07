.class public Lcom/google/ads/interactivemedia/v3/internal/ib;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/hv;

.field protected final b:Lcom/google/ads/interactivemedia/v3/internal/ia;

.field protected c:Lcom/google/ads/interactivemedia/v3/internal/hx;

.field private final d:I


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hy;Lcom/google/ads/interactivemedia/v3/internal/ia;JJJJJI)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Lcom/google/ads/interactivemedia/v3/internal/ia;

    move/from16 v1, p13

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->d:I

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/hv;

    move-object v1, v13

    move-object v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 1
    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/hv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/hy;JJJJJ)V

    iput-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    return-void
.end method

.method protected static final a(Lcom/google/ads/interactivemedia/v3/internal/ie;JLcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method protected static final a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Lcom/google/ads/interactivemedia/v3/internal/hx;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/hx;->b(Lcom/google/ads/interactivemedia/v3/internal/hx;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/hx;->c(Lcom/google/ads/interactivemedia/v3/internal/hx;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/hx;->d(Lcom/google/ads/interactivemedia/v3/internal/hx;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->d:I

    int-to-long v7, v7

    cmp-long v9, v3, v7

    if-gtz v9, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c()V

    .line 12
    invoke-static {p1, v1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;JLcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {p1, v5, v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;JLcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Lcom/google/ads/interactivemedia/v3/internal/ia;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/hx;->e(Lcom/google/ads/interactivemedia/v3/internal/hx;)J

    move-result-wide v2

    .line 5
    invoke-interface {v1, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ia;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Lcom/google/ads/interactivemedia/v3/internal/hz;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->a(Lcom/google/ads/interactivemedia/v3/internal/hz;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 14
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->c(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z

    .line 15
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->c(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    .line 16
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c()V

    .line 17
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->c(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v0

    .line 18
    invoke-static {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;JLcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1

    .line 7
    :cond_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->b(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->c(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v4

    .line 8
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/hx;->a(Lcom/google/ads/interactivemedia/v3/internal/hx;JJ)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->b(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->c(Lcom/google/ads/interactivemedia/v3/internal/hz;)J

    move-result-wide v4

    .line 10
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/hx;->b(Lcom/google/ads/interactivemedia/v3/internal/hx;JJ)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c()V

    .line 20
    invoke-static {p1, v5, v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;JLcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/iu;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    return-object v0
.end method

.method public final a(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Lcom/google/ads/interactivemedia/v3/internal/hx;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hx;->a(Lcom/google/ads/interactivemedia/v3/internal/hx;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/hx;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/hv;->b(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hv;->a(Lcom/google/ads/interactivemedia/v3/internal/hv;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hv;->b(Lcom/google/ads/interactivemedia/v3/internal/hv;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hv;->c(Lcom/google/ads/interactivemedia/v3/internal/hv;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/hv;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/hv;->d(Lcom/google/ads/interactivemedia/v3/internal/hv;)J

    move-result-wide v15

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object v0, v14

    move-wide v14, v15

    .line 23
    invoke-direct/range {v1 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/hx;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Lcom/google/ads/interactivemedia/v3/internal/hx;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Lcom/google/ads/interactivemedia/v3/internal/hx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Lcom/google/ads/interactivemedia/v3/internal/hx;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Lcom/google/ads/interactivemedia/v3/internal/ia;

    .line 21
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ia;->a()V

    return-void
.end method

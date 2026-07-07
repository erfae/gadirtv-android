.class public final Lcom/google/ads/interactivemedia/v3/internal/qo;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rn;
.implements Lcom/google/ads/interactivemedia/v3/internal/rm;


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/rn;

.field final b:J

.field private c:Lcom/google/ads/interactivemedia/v3/internal/rm;

.field private d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/rn;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/qn;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 3
    iget-wide v3, p3, Lcom/google/ads/interactivemedia/v3/internal/eg;->c:J

    const-wide/16 v5, 0x0

    move-wide v7, p1

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JJJ)J

    move-result-wide v0

    .line 5
    iget-wide v2, p3, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    :goto_0
    move-wide v6, v4

    const-wide/16 v4, 0x0

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JJJ)J

    move-result-wide v2

    .line 7
    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/internal/eg;->c:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    :cond_1
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/eg;

    .line 8
    invoke-direct {p3, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/eg;-><init>(JJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    return-wide v0
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v3, v2, [Lcom/google/ads/interactivemedia/v3/internal/qn;

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/st;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    const/4 v11, 0x0

    if-ge v4, v5, :cond_1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 26
    aget-object v6, v1, v4

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/qn;

    aput-object v6, v5, v4

    if-eqz v6, :cond_0

    iget-object v11, v6, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 27
    :cond_0
    aput-object v11, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    .line 28
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    const/4 v6, 0x1

    cmp-long v7, v4, p5

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-ltz v9, :cond_2

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v12, v7, v9

    if-eqz v12, :cond_3

    cmp-long v9, v4, v7

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 29
    :cond_3
    :goto_1
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_7

    .line 30
    aget-object v6, v2, v3

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 31
    aput-object v11, v6, v3

    goto :goto_3

    .line 34
    :cond_4
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 32
    aget-object v8, v7, v3

    if-eqz v8, :cond_5

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    if-eq v8, v6, :cond_6

    :cond_5
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 33
    invoke-direct {v8, p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/qn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/qo;Lcom/google/ads/interactivemedia/v3/internal/st;)V

    aput-object v8, v7, v3

    .line 31
    :cond_6
    :goto_3
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 34
    aget-object v6, v6, v3

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-wide v4
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 14
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a()V

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(JZ)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->c:Lcom/google/ads/interactivemedia/v3/internal/rm;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 16
    invoke-interface {p1, p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->c:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 15
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/rn;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->c:Lcom/google/ads/interactivemedia/v3/internal/rm;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final b(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->d:[Lcom/google/ads/interactivemedia/v3/internal/qn;

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/qn;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->b(J)J

    move-result-wide v0

    const/4 v3, 0x1

    cmp-long v4, v0, p1

    if-eqz v4, :cond_2

    const-wide/16 p1, 0x0

    cmp-long v4, v0, p1

    if-ltz v4, :cond_3

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, p1

    if-gtz v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 25
    :cond_3
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    return-wide v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 12
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->b()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 9

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qo;->g()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    .line 17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qo;->c()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 18
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_4

    cmp-long v6, v3, v0

    if-gtz v6, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 20
    :cond_5
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    return-wide v3
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 10
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final e()J
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 11
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->f(J)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 13
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->f()Z

    move-result v0

    return v0
.end method

.method final g()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qo;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

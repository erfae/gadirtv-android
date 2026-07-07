.class public final Lcom/google/ads/interactivemedia/v3/internal/rh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rn;
.implements Lcom/google/ads/interactivemedia/v3/internal/rm;


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/rq;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/rn;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/rm;

.field private final e:J

.field private f:J

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/zt;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->e:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    return-void
.end method

.method private final e(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 5
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/rh;->e:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 19
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 20
    invoke-interface/range {v8 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a()V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 11
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rq;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    throw v0
.end method

.method public final a(JZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 4
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(JZ)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->d:Lcom/google/ads/interactivemedia/v3/internal/rm;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->e:J

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/rh;->e(J)J

    move-result-wide p2

    .line 14
    invoke-interface {p1, p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->d:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 13
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->e:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/rh;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 2
    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->d:Lcom/google/ads/interactivemedia/v3/internal/rm;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1, p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V
    .locals 1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/rn;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->d:Lcom/google/ads/interactivemedia/v3/internal/rm;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final b(J)J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 18
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 8
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->b()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 15
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 6
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    return-void
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 7
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 16
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->f(J)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->e:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->f:J

    return-wide v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->c:Lcom/google/ads/interactivemedia/v3/internal/rn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rh;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 17
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    :cond_0
    return-void
.end method

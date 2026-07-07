.class public final Lcom/google/ads/interactivemedia/v3/internal/rk;
.super Lcom/google/ads/interactivemedia/v3/internal/qs;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/qs<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/rq;

.field private final b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/eq;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ep;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ri;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/rh;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qs;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->b:Z

    .line 3
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 4
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->d:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->e()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p2, p1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->i:Z

    return-void

    .line 7
    :cond_1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->h()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/dg;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    return-void
.end method

.method private final a(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    .line 20
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/rh;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/rd;->c(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->d:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 21
    invoke-virtual {v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    .line 22
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 23
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rh;->d(J)V

    return-void
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    .line 12
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/ri;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    .line 14
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/ri;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rh;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/ri;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/ri;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->g:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 1

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/rh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/rh;->i()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    :cond_0
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 11

    check-cast p1, Ljava/lang/Void;

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/rh;->h()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->a(J)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ri;->c:Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-virtual {p2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/rh;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    move-wide v9, v3

    goto :goto_1

    :cond_3
    move-wide v9, v1

    :goto_1
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object p1, v6, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->d:Lcom/google/ads/interactivemedia/v3/internal/ep;

    const/4 v8, 0x0

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->i:Z

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p2, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ri;->a(Lcom/google/ads/interactivemedia/v3/internal/er;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/rk;->a(J)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/rh;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object v0

    :cond_5
    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->i:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->h:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/rh;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)V

    :cond_6
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rh;
    .locals 7

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/rh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/rh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->h:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 9
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    .line 10
    invoke-virtual {v6, p1}, Lcom/google/ads/interactivemedia/v3/internal/rh;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)V

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->f:Lcom/google/ads/interactivemedia/v3/internal/rh;

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->g:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    :cond_1
    :goto_0
    return-object v6
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->h:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->g:Z

    .line 19
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->c()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 15
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rq;->h()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rk;->e:Lcom/google/ads/interactivemedia/v3/internal/ri;

    return-object v0
.end method

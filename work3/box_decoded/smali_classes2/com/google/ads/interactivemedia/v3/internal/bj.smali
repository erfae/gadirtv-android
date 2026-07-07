.class public abstract Lcom/google/ads/interactivemedia/v3/internal/bj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ed;
.implements Lcom/google/ads/interactivemedia/v3/internal/ee;


# instance fields
.field private final a:I

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/da;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ef;

.field private d:I

.field private e:I

.field private f:Lcom/google/ads/interactivemedia/v3/internal/st;

.field private g:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->a:I

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/da;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/da;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Lcom/google/ads/interactivemedia/v3/internal/da;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->a:I

    return v0
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 16
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/st;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result p3

    const/4 v0, -0x4

    const/4 v1, -0x5

    if-ne p3, v0, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 18
    :cond_1
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    .line 19
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    goto :goto_0

    :cond_2
    if-ne p3, v1, :cond_4

    .line 20
    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p3, v2, v4

    if-nez p3, :cond_3

    const/4 p3, -0x5

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object p3

    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:J

    add-long/2addr v2, v4

    .line 22
    invoke-virtual {p3, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(J)V

    .line 23
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p2

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return v1

    :cond_4
    :goto_0
    return p3
.end method

.method protected final a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 3

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->k:Z

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(I)I

    move-result v0
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->k:Z

    .line 2
    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->k:Z

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->x()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->d:I

    .line 3
    invoke-static {p1, v1, v2, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Ljava/lang/Exception;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;I)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->d:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    .line 29
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(JZ)V

    return-void
.end method

.method protected a(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ef;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/st;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bj;->c:Lcom/google/ads/interactivemedia/v3/internal/ef;

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    move/from16 v0, p7

    .line 8
    invoke-virtual {p0, p6, v0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a([Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/st;JJ)V

    move-wide v0, p4

    .line 10
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(JZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    return-void
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/st;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    xor-int/lit8 v0, v0, 0x1

    .line 24
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->g:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:J

    .line 25
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(JJ)V

    return-void
.end method

.method public final ae()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    return v0
.end method

.method protected final b(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 30
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/st;->a(J)I

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/ee;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/internal/abj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    .line 32
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->p()V

    return-void
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/internal/st;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    return-object v0
.end method

.method public final g()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:J

    return-wide v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    return v0
.end method

.method public final k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 15
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/st;->c()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    .line 34
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->q()V

    return-void
.end method

.method public final m()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Lcom/google/ads/interactivemedia/v3/internal/da;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/da;->a()V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->g:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->r()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Lcom/google/ads/interactivemedia/v3/internal/da;

    .line 27
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/da;->a()V

    .line 28
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->s()V

    return-void
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method protected p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected final t()Lcom/google/ads/interactivemedia/v3/internal/da;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Lcom/google/ads/interactivemedia/v3/internal/da;

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/da;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Lcom/google/ads/interactivemedia/v3/internal/da;

    return-object v0
.end method

.method protected final u()[Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->g:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-object v0
.end method

.method protected final v()Lcom/google/ads/interactivemedia/v3/internal/ef;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->c:Lcom/google/ads/interactivemedia/v3/internal/ef;

    .line 11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->j:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 14
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/st;->b()Z

    move-result v0

    :goto_0
    return v0
.end method

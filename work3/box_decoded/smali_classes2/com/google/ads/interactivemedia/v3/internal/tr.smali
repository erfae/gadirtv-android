.class public final Lcom/google/ads/interactivemedia/v3/internal/tr;
.super Lcom/google/ads/interactivemedia/v3/internal/tg;
.source "IMASDK"


# instance fields
.field private final m:I

.field private final n:J

.field private o:J

.field private volatile p:Z

.field private q:Z

.field private final r:Lcom/google/ads/interactivemedia/v3/internal/tk;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJJJIJLcom/google/ads/interactivemedia/v3/internal/tk;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/google/ads/interactivemedia/v3/internal/tg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tr;->m:I

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tr;->n:J

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tr;->r:Lcom/google/ads/interactivemedia/v3/internal/tk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->p:Z

    return-void
.end method

.method public final b()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tg;->c()Lcom/google/ads/interactivemedia/v3/internal/ti;

    move-result-object v6

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->n:J

    .line 3
    invoke-virtual {v6, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ti;->a(J)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->r:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide v7, v2

    goto :goto_0

    .line 9
    :cond_0
    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->n:J

    sub-long/2addr v0, v7

    move-wide v7, v0

    .line 3
    :goto_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v9, v2

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->n:J

    sub-long/2addr v0, v2

    move-wide v9, v0

    .line 4
    :goto_1
    invoke-virtual/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/tk;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;JJ)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->o:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zs;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v0

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ie;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->r:Lcom/google/ads/interactivemedia/v3/internal/tk;

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/tk;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :cond_4
    :try_start_2
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->o:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->p:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->q:Z

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->o:J

    .line 8
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 10
    throw v0
.end method

.method public final g()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->l:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tr;->q:Z

    return v0
.end method

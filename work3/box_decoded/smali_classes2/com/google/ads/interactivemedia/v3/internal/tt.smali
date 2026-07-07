.class public final Lcom/google/ads/interactivemedia/v3/internal/tt;
.super Lcom/google/ads/interactivemedia/v3/internal/tl;
.source "IMASDK"


# instance fields
.field private a:J

.field private volatile b:Z

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/tk;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/ti;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/tk;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/tl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tt;->l:Lcom/google/ads/interactivemedia/v3/internal/tk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->b:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ti;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->m:Lcom/google/ads/interactivemedia/v3/internal/ti;

    return-void
.end method

.method public final b()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->l:Lcom/google/ads/interactivemedia/v3/internal/tk;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->m:Lcom/google/ads/interactivemedia/v3/internal/ti;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-virtual/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/tk;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->a:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zs;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v0

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ie;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->l:Lcom/google/ads/interactivemedia/v3/internal/tk;

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/tk;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :cond_2
    :try_start_2
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->a:J

    .line 6
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tt;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 8
    throw v0
.end method

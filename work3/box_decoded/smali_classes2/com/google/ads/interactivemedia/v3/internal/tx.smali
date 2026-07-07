.class public final Lcom/google/ads/interactivemedia/v3/internal/tx;
.super Lcom/google/ads/interactivemedia/v3/internal/tg;
.source "IMASDK"


# instance fields
.field private final m:I

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJILcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 16

    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/tg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tx;->m:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tx;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tg;->c()Lcom/google/ads/interactivemedia/v3/internal/ti;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ti;->a(J)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->m:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ti;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 5
    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    .line 6
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zs;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    add-long/2addr v0, v3

    :cond_0
    move-wide v7, v0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ie;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    move-object v3, v0

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v9, 0x1

    if-eq v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    const v1, 0x7fffffff

    .line 9
    invoke-interface {v2, v0, v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->o:J

    long-to-int v6, v0

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->i:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    iput-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->p:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 12
    throw v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tx;->p:Z

    return v0
.end method

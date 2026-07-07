.class abstract Lcom/google/ads/interactivemedia/v3/internal/lr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ll;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ln;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/google/ads/interactivemedia/v3/internal/lp;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ll;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-ne v1, v12, :cond_6

    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    .line 11
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ln;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_0

    move-object/from16 v1, p2

    iput-wide v7, v1, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    cmp-long v1, v7, v4

    if-gez v1, :cond_1

    const-wide/16 v14, 0x2

    add-long/2addr v7, v14

    neg-long v7, v7

    .line 12
    invoke-virtual {v11, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/lr;->c(J)V

    :cond_1
    iget-boolean v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->l:Z

    if-nez v1, :cond_2

    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    .line 13
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ln;->a()Lcom/google/ads/interactivemedia/v3/internal/iu;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->c:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 14
    invoke-interface {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iput-boolean v6, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->l:Z

    :cond_2
    iget-wide v6, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->k:J

    cmp-long v1, v6, v9

    if-gtz v1, :cond_4

    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    iput v3, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    goto :goto_1

    .line 15
    :cond_4
    :goto_0
    iput-wide v9, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->k:J

    iget-object v0, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;->c()Lcom/google/ads/interactivemedia/v3/internal/abr;

    move-result-object v0

    .line 16
    invoke-virtual {v11, v0}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-ltz v3, :cond_5

    iget-wide v6, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->g:J

    add-long v8, v6, v1

    iget-wide v14, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->e:J

    cmp-long v3, v8, v14

    if-ltz v3, :cond_5

    .line 17
    invoke-virtual {v11, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(J)J

    move-result-wide v15

    iget-object v3, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v6

    .line 18
    invoke-interface {v3, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v14, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/16 v17, 0x1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 19
    invoke-interface/range {v14 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iput-wide v4, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->e:J

    :cond_5
    iget-wide v3, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->g:J

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 9
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    iget-wide v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    long-to-int v2, v1

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v12, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    return v13

    .line 19
    :cond_8
    :goto_2
    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v1

    if-nez v1, :cond_9

    iput v3, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iget-wide v9, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    sub-long/2addr v7, v9

    iput-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->k:J

    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ll;->c()Lcom/google/ads/interactivemedia/v3/internal/abr;

    move-result-object v1

    iget-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    iget-object v9, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->j:Lcom/google/ads/interactivemedia/v3/internal/lp;

    .line 5
    invoke-virtual {v11, v1, v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;JLcom/google/ads/interactivemedia/v3/internal/lp;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iput-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    goto :goto_2

    :cond_a
    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->j:Lcom/google/ads/interactivemedia/v3/internal/lp;

    .line 6
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lp;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    iput v2, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->i:I

    iget-boolean v2, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->m:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 7
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput-boolean v6, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->m:Z

    :cond_b
    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->j:Lcom/google/ads/interactivemedia/v3/internal/lp;

    .line 8
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lp;->b:Lcom/google/ads/interactivemedia/v3/internal/ln;

    const/4 v14, 0x0

    if-eqz v1, :cond_c

    iput-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    goto :goto_4

    .line 10
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-nez v3, :cond_d

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lq;

    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/lq;-><init>([B)V

    iput-object v0, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    goto :goto_4

    :cond_d
    iget-object v1, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ll;->b()Lcom/google/ads/interactivemedia/v3/internal/lm;

    move-result-object v1

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    const/4 v10, 0x1

    goto :goto_3

    :cond_e
    const/4 v10, 0x0

    :goto_3
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/lh;

    iget-wide v2, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v4

    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->e:I

    iget v6, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->f:I

    add-int/2addr v0, v6

    int-to-long v6, v0

    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->c:J

    move-object v0, v15

    move-object/from16 v1, p0

    .line 9
    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/lh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/lr;JJJJZ)V

    iput-object v15, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    .line 8
    :goto_4
    iput-object v14, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->j:Lcom/google/ads/interactivemedia/v3/internal/lp;

    iput v12, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    iget-object v0, v11, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;->d()V

    const/4 v2, 0x0

    :goto_5
    return v2
.end method

.method protected final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->i:I

    int-to-long v0, v0

    .line 2
    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/abr;)J
.end method

.method final a(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->a:Lcom/google/ads/interactivemedia/v3/internal/ll;

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ll;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->l:Z

    xor-int/lit8 p1, p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Z)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/lr;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->e:J

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->d:Lcom/google/ads/interactivemedia/v3/internal/ln;

    .line 24
    invoke-interface {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ln;->a(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    :cond_1
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->c:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/lp;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/lp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->j:Lcom/google/ads/interactivemedia/v3/internal/lp;

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->f:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->h:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->g:J

    return-void
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/abr;JLcom/google/ads/interactivemedia/v3/internal/lp;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final b(J)J
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lr;->g:J

    return-void
.end method

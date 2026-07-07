.class public final Lcom/google/ads/interactivemedia/v3/internal/ji;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/jj;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private g:I

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:Z

.field private o:Lcom/google/ads/interactivemedia/v3/internal/jh;

.field private p:Lcom/google/ads/interactivemedia/v3/internal/jm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v1, 0x4

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0x9

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0xb

    .line 3
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jj;

    .line 5
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jj;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->e:Lcom/google/ads/interactivemedia/v3/internal/jj;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    return-void
.end method

.method private final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/it;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->n:Z

    :cond_0
    return-void
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/abr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v1

    add-int/2addr v1, v1

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    .line 11
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 12
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v7, :cond_9

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->h:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->i:J

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    add-long/2addr v14, v10

    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->e:Lcom/google/ads/interactivemedia/v3/internal/jj;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/jj;->a()J

    move-result-wide v10

    cmp-long v2, v10, v12

    if-nez v2, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_2
    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    .line 12
    :goto_1
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->k:I

    if-ne v2, v3, :cond_4

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->o:Lcom/google/ads/interactivemedia/v3/internal/jh;

    if-eqz v3, :cond_4

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ji;->a()V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->o:Lcom/google/ads/interactivemedia/v3/internal/jh;

    .line 36
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ji;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/abr;

    move-result-object v3

    invoke-virtual {v2, v3, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/jl;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z

    move-result v2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    if-ne v2, v5, :cond_5

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->p:Lcom/google/ads/interactivemedia/v3/internal/jm;

    if-eqz v3, :cond_5

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ji;->a()V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->p:Lcom/google/ads/interactivemedia/v3/internal/jm;

    .line 34
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ji;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/abr;

    move-result-object v3

    invoke-virtual {v2, v3, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/jl;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->n:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->e:Lcom/google/ads/interactivemedia/v3/internal/jj;

    .line 31
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ji;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/abr;

    move-result-object v3

    invoke-virtual {v2, v3, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/jl;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z

    move-result v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->e:Lcom/google/ads/interactivemedia/v3/internal/jj;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/jj;->a()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/it;

    .line 32
    invoke-direct {v10, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {v5, v10}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->n:Z

    goto :goto_2

    :cond_6
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    :goto_3
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->h:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->h:Z

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->e:Lcom/google/ads/interactivemedia/v3/internal/jj;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/jj;->a()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    neg-long v10, v4

    goto :goto_4

    :cond_7
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->i:J

    :cond_8
    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->j:I

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    if-eqz v3, :cond_0

    return v8

    .line 23
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 22
    :cond_a
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/16 v3, 0xb

    .line 23
    invoke-virtual {v1, v2, v8, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    return v4

    .line 37
    :cond_b
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 24
    invoke-virtual {v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 25
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->k:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 26
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->l:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 27
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 28
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->m:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-virtual {v2, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    goto/16 :goto_0

    .line 21
    :cond_c
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->j:I

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->j:I

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    goto/16 :goto_0

    .line 30
    :cond_d
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2, v8, v5, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    return v4

    :cond_e
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 16
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    and-int/2addr v2, v7

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->o:Lcom/google/ads/interactivemedia/v3/internal/jh;

    if-nez v2, :cond_f

    .line 17
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/jh;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 18
    invoke-interface {v7, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->o:Lcom/google/ads/interactivemedia/v3/internal/jh;

    :cond_f
    if-eqz v4, :cond_10

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->p:Lcom/google/ads/interactivemedia/v3/internal/jm;

    if-nez v2, :cond_10

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/jm;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 19
    invoke-interface {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->p:Lcom/google/ads/interactivemedia/v3/internal/jm;

    :cond_10
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 20
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 21
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->j:I

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    goto/16 :goto_0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->h:Z

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->j:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 40
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v2, 0x2

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 43
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v2, 0x4

    .line 44
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 46
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v0

    .line 47
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 50
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ji;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 51
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.class public final Lcom/google/ads/interactivemedia/v3/internal/wk;
.super Lcom/google/ads/interactivemedia/v3/internal/qk;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/xt;


# static fields
.field public static final synthetic a:I


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/wg;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/dg;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/df;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final f:I

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/xu;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/vx;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/aaj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/xu;I[B[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;-><init>()V

    iget-object p9, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    invoke-static {p9}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->d:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->i:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->b:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->k:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->j:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iput p8, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v9

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object v7

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/wi;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->b:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->i:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->h:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->j:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->k:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->f:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v10, p2

    .line 4
    invoke-direct/range {v1 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/wi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/xu;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/aaj;I[B[B)V

    return-object v15
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->h:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 21
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a()V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->d:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 23
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/xt;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/wi;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/wi;->g()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/xk;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->j:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 7
    :goto_0
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 8
    :goto_2
    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->b:J

    new-instance v23, Lcom/google/ads/interactivemedia/v3/internal/wp;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/xu;->b()Lcom/google/ads/interactivemedia/v3/internal/xi;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {v23 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/wp;-><init>()V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/xu;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10
    iget-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 11
    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    add-long v14, v18, v14

    move-wide/from16 v25, v14

    goto :goto_3

    :cond_3
    move-wide/from16 v25, v3

    .line 12
    :goto_3
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    cmp-long v5, v12, v3

    if-nez v5, :cond_6

    .line 13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 15
    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    add-long/2addr v12, v12

    sub-long/2addr v4, v12

    :goto_4
    if-lez v3, :cond_4

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/xj;

    iget-wide v12, v7, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    cmp-long v7, v12, v4

    if-lez v7, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/xj;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_6
    move-wide v2, v12

    .line 18
    :goto_5
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/sx;

    move-object v7, v4

    iget-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    const/16 v20, 0x1

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    xor-int/lit8 v21, v1, 0x1

    const/16 v22, 0x1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v24, v1

    move-wide/from16 v12, v25

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    invoke-direct/range {v7 .. v24}, Lcom/google/ads/interactivemedia/v3/internal/sx;-><init>(JJJJJJZZZLjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    goto :goto_7

    :cond_7
    cmp-long v2, v12, v3

    if-nez v2, :cond_8

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_8
    move-wide/from16 v18, v12

    .line 19
    :goto_6
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/sx;

    move-object v7, v4

    iget-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    move-wide v12, v14

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wk;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v24, v1

    invoke-direct/range {v7 .. v24}, Lcom/google/ads/interactivemedia/v3/internal/sx;-><init>(JJJJJJZZZLjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    .line 20
    :goto_7
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    return-void
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 25
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 26
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/hq;->b()V

    return-void
.end method

.method public final g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->g:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 5
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->d()V

    return-void
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wk;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-object v0
.end method

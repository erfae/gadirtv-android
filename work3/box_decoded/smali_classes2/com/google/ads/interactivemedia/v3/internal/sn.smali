.class public final Lcom/google/ads/interactivemedia/v3/internal/sn;
.super Lcom/google/ads/interactivemedia/v3/internal/qk;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/sg;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/dg;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/df;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/zn;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ij;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final f:I

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/aaa;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/ij;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;-><init>()V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->c:Lcom/google/ads/interactivemedia/v3/internal/zn;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->d:Lcom/google/ads/interactivemedia/v3/internal/ij;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->l:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->g:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->h:J

    return-void
.end method

.method private final i()V
    .locals 20

    move-object/from16 v0, p0

    .line 8
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/sx;

    move-object v1, v15

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/sn;->h:J

    move-wide v6, v8

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/internal/sn;->i:Z

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/sn;->j:Z

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/sn;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v18, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v15

    move/from16 v15, v17

    const/16 v17, 0x0

    .line 9
    invoke-direct/range {v1 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/sx;-><init>(JJJJJJZZZLjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/sn;->g:Z

    if-eqz v1, :cond_0

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/sl;

    move-object/from16 v1, v19

    .line 10
    invoke-direct {v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/sl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v19

    move-object v15, v1

    .line 11
    :goto_0
    invoke-virtual {v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 11

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->c:Lcom/google/ads/interactivemedia/v3/internal/zn;

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/zy;

    .line 3
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zy;->b()Lcom/google/ads/interactivemedia/v3/internal/zx;

    move-result-object v2

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->k:Lcom/google/ads/interactivemedia/v3/internal/aay;

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    .line 5
    :cond_0
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v1, p4, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->d:Lcom/google/ads/interactivemedia/v3/internal/ij;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->l:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v7

    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->f:I

    move-object v0, p3

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/sk;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/ij;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/sg;Lcom/google/ads/interactivemedia/v3/internal/zt;I)V

    return-object p3
.end method

.method public final a(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->h:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->g:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->h:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->i:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->j:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->h:J

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->i:Z

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->j:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->g:Z

    .line 12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/sn;->i()V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->k:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 13
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a()V

    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/sn;->i()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sk;->g()V

    return-void
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 16
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/hq;->b()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sn;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-object v0
.end method

.class public final Lcom/google/vr/sdk/widgets/video/deps/kt;
.super Lcom/google/vr/sdk/widgets/video/deps/hs;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/lh$d;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/kp;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ko;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/hw;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final f:Z

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/lh;

.field private final h:Ljava/lang/Object;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/oo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 52
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/kp;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/ko;",
            "Lcom/google/vr/sdk/widgets/video/deps/kp;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ig;",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 5
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/hx;

    invoke-direct {v7}, Lcom/google/vr/sdk/widgets/video/deps/hx;-><init>()V

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/od;

    invoke-direct {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/od;-><init>(I)V

    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/lb;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/od;

    invoke-direct {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/od;-><init>(I)V

    move-object v0, p2

    move-object/from16 v4, p7

    invoke-direct {v9, p2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/lb;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/kt;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/hw;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/lh;ZLjava/lang/Object;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/kt;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/hw;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/lh;ZLjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/hs;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->b:Landroid/net/Uri;

    .line 11
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->c:Lcom/google/vr/sdk/widgets/video/deps/ko;

    .line 12
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    .line 13
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->d:Lcom/google/vr/sdk/widgets/video/deps/hw;

    .line 14
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 15
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 16
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->f:Z

    .line 17
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/kl;

    invoke-direct {v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/kl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/kp;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/lf;

    invoke-direct {v7}, Lcom/google/vr/sdk/widgets/video/deps/lf;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kt;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/kp;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/kt;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/nl;)Lcom/google/vr/sdk/widgets/video/deps/ie;
    .locals 10

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/kt;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v6

    .line 26
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ks;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->c:Lcom/google/vr/sdk/widgets/video/deps/ko;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->i:Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->d:Lcom/google/vr/sdk/widgets/video/deps/hw;

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->f:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ks;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/lh;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/hw;Z)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 0

    .line 19
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->i:Lcom/google/vr/sdk/widgets/video/deps/oo;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/kt;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->b:Landroid/net/Uri;

    invoke-interface {p2, p3, p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/lh$d;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ks;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ks;->f()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ld;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 31
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->j:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    invoke-static {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 33
    :goto_0
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->a:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 36
    :goto_2
    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->b:J

    .line 37
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/lh;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 39
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 40
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 41
    :goto_3
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    cmp-long v5, v12, v3

    if-nez v5, :cond_5

    .line 43
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->f:J

    move-wide/from16 v16, v2

    :goto_4
    move-wide/from16 v2, v16

    goto :goto_5

    :cond_5
    move-wide v2, v12

    .line 45
    :goto_5
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/iu;

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    const/16 v20, 0x1

    iget-boolean v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    xor-int/lit8 v21, v5, 0x1

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kt;->h:Ljava/lang/Object;

    move-object v7, v4

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v7 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/iu;-><init>(JJJJJJZZLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    cmp-long v2, v12, v3

    if-nez v2, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    .line 49
    :goto_6
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/iu;

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kt;->h:Ljava/lang/Object;

    move-object v7, v4

    move-object/from16 v22, v2

    invoke-direct/range {v7 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/iu;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 50
    :goto_7
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/kq;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/lh;->b()Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/kq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lc;Lcom/google/vr/sdk/widgets/video/deps/ld;)V

    invoke-virtual {v0, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/kt;->a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kt;->g:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->d()V

    return-void
.end method

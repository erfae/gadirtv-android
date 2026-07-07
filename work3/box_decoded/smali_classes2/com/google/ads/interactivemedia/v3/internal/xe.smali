.class public final Lcom/google/ads/interactivemedia/v3/internal/xe;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/xu;
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/xu;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/xp;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/xo;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/google/ads/interactivemedia/v3/internal/xd;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/xq;",
            ">;"
        }
    .end annotation
.end field

.field private final e:D

.field private f:Lcom/google/ads/interactivemedia/v3/internal/aat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/aar;

.field private i:Landroid/os/Handler;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/xt;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/xi;

.field private l:Landroid/net/Uri;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/xk;

.field private n:Z

.field private o:J

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/vx;

.field private final q:Lcom/google/ads/interactivemedia/v3/internal/aaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xc;->a:Lcom/google/ads/interactivemedia/v3/internal/xp;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xe;->a:Lcom/google/ads/interactivemedia/v3/internal/xp;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/xo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->p:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->b:Lcom/google/ads/interactivemedia/v3/internal/xo;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    const-wide/high16 p1, 0x400c000000000000L    # 3.5

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->e:D

    new-instance p1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->o:J

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/aat;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->f:Lcom/google/ads/interactivemedia/v3/internal/aat;

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xk;)Lcom/google/ads/interactivemedia/v3/internal/xj;
    .locals 4

    .line 4
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/xj;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xe;Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xk;)Lcom/google/ads/interactivemedia/v3/internal/xk;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_5

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    goto :goto_2

    :cond_0
    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_5

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean v0, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-object v2, v0

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->a:I

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->n:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->o:Ljava/util/List;

    iget-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->b:J

    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-boolean v10, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->d:Z

    iget v11, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget v14, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->g:I

    move-object/from16 p0, v2

    move/from16 p2, v3

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    move-wide v15, v2

    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->p:Z

    move/from16 v17, v2

    const/16 v18, 0x1

    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->j:Z

    move/from16 v19, v2

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->k:Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-object/from16 v20, v2

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/xk;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/util/List;)V

    goto/16 :goto_9

    :cond_4
    :goto_1
    move-object v0, v1

    goto/16 :goto_9

    :cond_5
    :goto_2
    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->j:Z

    if-eqz v3, :cond_7

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    :cond_6
    :goto_3
    move-wide v11, v3

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-eqz v3, :cond_8

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    goto :goto_4

    :cond_8
    const-wide/16 v3, 0x0

    :goto_4
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static/range {p1 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xk;)Lcom/google/ads/interactivemedia/v3/internal/xj;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-wide v5, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    add-long/2addr v3, v5

    goto :goto_3

    :cond_a
    int-to-long v5, v5

    iget-wide v7, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget-wide v9, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    sub-long/2addr v7, v9

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/xk;->a()J

    move-result-wide v3

    goto :goto_3

    :goto_5
    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->d:Z

    if-eqz v3, :cond_c

    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    :cond_b
    :goto_6
    move v14, v0

    goto :goto_8

    :cond_c
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v1, :cond_b

    invoke-static/range {p1 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xk;)Lcom/google/ads/interactivemedia/v3/internal/xj;

    move-result-object v4

    if-eqz v4, :cond_b

    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    iget v1, v4, Lcom/google/ads/interactivemedia/v3/internal/xj;->d:I

    add-int/2addr v0, v1

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/xj;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/xj;->d:I

    sub-int/2addr v0, v1

    goto :goto_6

    :goto_8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-object v5, v0

    iget v6, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->a:I

    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->n:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->o:Ljava/util/List;

    iget-wide v9, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->b:J

    const/4 v13, 0x1

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    move-wide v15, v3

    iget v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->g:I

    move/from16 v17, v1

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    move-wide/from16 v18, v3

    iget-boolean v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->p:Z

    move/from16 v20, v1

    iget-boolean v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    move/from16 v21, v1

    iget-boolean v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->j:Z

    move/from16 v22, v1

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->k:Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-object/from16 v23, v1

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    move-object/from16 v24, v1

    invoke-direct/range {v5 .. v24}, Lcom/google/ads/interactivemedia/v3/internal/xk;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/util/List;)V

    :goto_9
    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/xk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->n:Z

    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->o:J

    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->j:Lcom/google/ads/interactivemedia/v3/internal/xt;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xt;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;)V

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/xq;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/xq;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/xq;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/xq;->a(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/xe;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->g:Lcom/google/ads/interactivemedia/v3/internal/ry;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/xe;)D
    .locals 2

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    return-wide v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/xe;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/xe;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->k:Lcom/google/ads/interactivemedia/v3/internal/xi;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(Lcom/google/ads/interactivemedia/v3/internal/xd;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/xd;->b(Lcom/google/ads/interactivemedia/v3/internal/xd;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/xd;->d()V

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v4
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/vx;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->p:Lcom/google/ads/interactivemedia/v3/internal/vx;

    return-object p0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/aaa;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 2

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-direct {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(I)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aai;

    invoke-direct {p3, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->b(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide p3

    const/4 p5, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p7, p3, v0

    if-nez p7, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->g:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {v0, p2, v1, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V

    if-eqz p7, :cond_1

    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    goto :goto_1

    :cond_1
    invoke-static {p5, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Landroid/net/Uri;Z)Lcom/google/ads/interactivemedia/v3/internal/xk;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a()Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    .line 7
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->k:Lcom/google/ads/interactivemedia/v3/internal/xi;

    .line 8
    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-nez p2, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/xd;->d()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->m:Lcom/google/ads/interactivemedia/v3/internal/xk;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->k:Lcom/google/ads/interactivemedia/v3/internal/xi;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->o:J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 26
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->f()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/xd;

    .line 28
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/xd;->c()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->i:Landroid/os/Handler;

    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/xt;)V
    .locals 3

    .line 18
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->i:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->g:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->j:Lcom/google/ads/interactivemedia/v3/internal/xt;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->p:Lcom/google/ads/interactivemedia/v3/internal/vx;

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/vx;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->b:Lcom/google/ads/interactivemedia/v3/internal/xo;

    .line 20
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/xo;->a()Lcom/google/ads/interactivemedia/v3/internal/aat;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p3, v0, p1, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aau;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Landroid/net/Uri;ILcom/google/ads/interactivemedia/v3/internal/aat;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 22
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aar;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v0

    .line 24
    invoke-virtual {p1, p3, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J

    .line 25
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/xl;

    instance-of p3, p2, Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-eqz p3, :cond_0

    iget-object p4, p2, Lcom/google/ads/interactivemedia/v3/internal/xl;->n:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/xi;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/xi;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p2

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/xi;

    :goto_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->k:Lcom/google/ads/interactivemedia/v3/internal/xi;

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->b:Lcom/google/ads/interactivemedia/v3/internal/xo;

    invoke-interface {p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/xo;->a(Lcom/google/ads/interactivemedia/v3/internal/xi;)Lcom/google/ads/interactivemedia/v3/internal/aat;

    move-result-object p5

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->f:Lcom/google/ads/interactivemedia/v3/internal/aat;

    iget-object p5, p4, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object p5, p5, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    iget-object p4, p4, Lcom/google/ads/interactivemedia/v3/internal/xi;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    :goto_1
    if-ge v0, p5, :cond_1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-direct {v2, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/xd;

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p5}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    if-eqz p3, :cond_2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/xk;

    invoke-static {p4, p2, p5}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(Lcom/google/ads/interactivemedia/v3/internal/xd;Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/rg;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/xd;->d()V

    :goto_2
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->g:Lcom/google/ads/interactivemedia/v3/internal/ry;

    const/4 p2, 0x4

    invoke-virtual {p1, p5, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->g:Lcom/google/ads/interactivemedia/v3/internal/ry;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/xq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/xd;->b()Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/xi;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->k:Lcom/google/ads/interactivemedia/v3/internal/xi;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/xd;->e()V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/xq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->d:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->o:J

    return-wide v0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->c:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/xd;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/xd;->d()V

    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->l:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/xe;->b(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xe;->n:Z

    return v0
.end method

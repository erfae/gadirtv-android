.class public final Lcom/google/ads/interactivemedia/v3/internal/uo;
.super Lcom/google/ads/interactivemedia/v3/internal/qk;
.source "IMASDK"


# instance fields
.field private A:I

.field private B:J

.field private C:I

.field private final D:Lcom/google/ads/interactivemedia/v3/internal/ur;

.field private final E:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private final F:Lcom/google/ads/interactivemedia/v3/internal/aaj;

.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zn;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final c:J

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/aat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/vb;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/uj;

.field private final g:Ljava/lang/Object;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/ub;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/ux;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/aas;

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/dg;

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/df;

.field private o:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private p:Lcom/google/ads/interactivemedia/v3/internal/aar;

.field private q:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private r:Ljava/io/IOException;

.field private s:Landroid/os/Handler;

.field private t:Landroid/net/Uri;

.field private final u:Landroid/net/Uri;

.field private v:Lcom/google/ads/interactivemedia/v3/internal/vb;

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/aat;Lcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;J[B[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->m:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->n:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->t:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->u:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->e:Lcom/google/ads/interactivemedia/v3/internal/aat;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->D:Lcom/google/ads/interactivemedia/v3/internal/ur;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->E:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iput-wide p8, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->c:J

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->F:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->g:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ug;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ug;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->k:Lcom/google/ads/interactivemedia/v3/internal/ux;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->B:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/uj;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/uj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->f:Lcom/google/ads/interactivemedia/v3/internal/uj;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/uk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/uk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->l:Lcom/google/ads/interactivemedia/v3/internal/aas;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/uc;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/uc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->i:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ud;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ud;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/uo;)Lcom/google/ads/interactivemedia/v3/internal/aar;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    return-object p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/aau;Lcom/google/ads/interactivemedia/v3/internal/aak;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/aak<",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 140
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-direct {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/uo;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/uo;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Ljava/io/IOException;)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/vu;Lcom/google/ads/interactivemedia/v3/internal/aat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/vu;",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->o:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/vu;->b:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/aau;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Landroid/net/Uri;ILcom/google/ads/interactivemedia/v3/internal/aat;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/um;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/um;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/aau;Lcom/google/ads/interactivemedia/v3/internal/aak;I)V

    return-void
.end method

.method private final a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    .line 88
    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/abh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    if-lt v3, v4, :cond_0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ub;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Lcom/google/ads/interactivemedia/v3/internal/vb;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 99
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 100
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 101
    invoke-virtual {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v4

    .line 100
    invoke-static {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ul;->a(Lcom/google/ads/interactivemedia/v3/internal/vg;J)Lcom/google/ads/interactivemedia/v3/internal/ul;

    move-result-object v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 102
    invoke-virtual {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v5

    .line 103
    invoke-static {v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ul;->a(Lcom/google/ads/interactivemedia/v3/internal/vg;J)Lcom/google/ads/interactivemedia/v3/internal/ul;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/ads/interactivemedia/v3/internal/ul;->b:J

    iget-wide v7, v4, Lcom/google/ads/interactivemedia/v3/internal/ul;->c:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 104
    iget-boolean v3, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_5

    iget-boolean v3, v4, Lcom/google/ads/interactivemedia/v3/internal/ul;->a:Z

    if-nez v3, :cond_5

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    .line 105
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v3

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 106
    iget-wide v13, v13, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    invoke-static {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v13

    sub-long/2addr v3, v13

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 107
    invoke-virtual {v13, v2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v13

    iget-wide v13, v13, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    invoke-static {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v13

    sub-long/2addr v3, v13

    .line 108
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 109
    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->f:J

    cmp-long v13, v3, v11

    if-eqz v13, :cond_4

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v3

    sub-long v3, v7, v3

    :goto_1
    cmp-long v13, v3, v9

    if-gez v13, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 110
    invoke-virtual {v13, v2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v13

    add-long/2addr v3, v13

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 111
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 129
    :cond_3
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 112
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v2

    :goto_2
    move-wide v5, v2

    :cond_4
    const/4 v2, 0x1

    move-wide/from16 v21, v5

    goto :goto_3

    :cond_5
    move-wide/from16 v21, v5

    const/4 v2, 0x0

    :goto_3
    sub-long v7, v7, v21

    move-wide/from16 v23, v7

    const/4 v3, 0x0

    .line 111
    :goto_4
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 113
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_6

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 114
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/vb;->c(I)J

    move-result-wide v4

    add-long v23, v23, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 115
    iget-boolean v4, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v4, :cond_9

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->c:J

    .line 116
    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->g:J

    cmp-long v3, v6, v11

    if-eqz v3, :cond_7

    move-wide v4, v6

    .line 117
    :cond_7
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v3

    sub-long v3, v23, v3

    const-wide/32 v5, 0x4c4b40

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    const-wide/16 v3, 0x2

    div-long v3, v23, v3

    .line 118
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_8
    move-wide/from16 v25, v3

    goto :goto_5

    :cond_9
    move-wide/from16 v25, v9

    :goto_5
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 119
    iget-wide v4, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    cmp-long v6, v4, v11

    if-eqz v6, :cond_a

    .line 120
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v1

    iget-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    add-long/2addr v4, v6

    .line 121
    invoke-static/range {v21 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide/from16 v16, v4

    goto :goto_6

    :cond_a
    move-wide/from16 v16, v11

    :goto_6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/uf;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 122
    iget-wide v14, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->a:J

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->m:Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object v13, v1

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move-object/from16 v27, v3

    move-object/from16 v28, v7

    invoke-direct/range {v13 .. v28}, Lcom/google/ads/interactivemedia/v3/internal/uf;-><init>(JJJIJJJLcom/google/ads/interactivemedia/v3/internal/vb;Lcom/google/ads/interactivemedia/v3/internal/dg;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->j:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_b

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->j:Ljava/lang/Runnable;

    .line 125
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    if-eqz v1, :cond_c

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->m()V

    return-void

    :cond_c
    if-eqz p1, :cond_e

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 127
    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v2, :cond_e

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/vb;->e:J

    cmp-long v5, v1, v11

    if-eqz v5, :cond_e

    cmp-long v5, v1, v9

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    move-wide v3, v1

    :goto_7
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->x:J

    add-long/2addr v1, v3

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 129
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->c(J)V

    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/uo;)Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->r:Ljava/io/IOException;

    return-object p0
.end method

.method private final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    const/4 p1, 0x1

    .line 90
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Z)V

    return-void
.end method

.method private final c(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->i:Ljava/lang/Runnable;

    .line 138
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final l()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ue;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ue;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aca;->a(Lcom/google/ads/interactivemedia/v3/internal/aar;Lcom/google/ads/interactivemedia/v3/internal/abx;)V

    return-void
.end method

.method private final m()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->i:Ljava/lang/Runnable;

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 142
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 143
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->g:Ljava/lang/Object;

    .line 144
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->t:Landroid/net/Uri;

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->o:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->e:Lcom/google/ads/interactivemedia/v3/internal/aat;

    const/4 v4, 0x4

    .line 146
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/aau;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Landroid/net/Uri;ILcom/google/ads/interactivemedia/v3/internal/aat;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->f:Lcom/google/ads/interactivemedia/v3/internal/uj;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->E:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 147
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v2

    .line 146
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/aau;Lcom/google/ads/interactivemedia/v3/internal/aak;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/internal/aau;JJLjava/io/IOException;)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aal;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 81
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 82
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    .line 83
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    const/4 p5, 0x1

    .line 81
    invoke-virtual {p2, p3, p4, p6, p5}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V

    .line 85
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    .line 86
    invoke-direct {p0, p6}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Ljava/io/IOException;)V

    .line 87
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    return-object p1
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/aau;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "Lcom/google/ads/interactivemedia/v3/internal/vb;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/ads/interactivemedia/v3/internal/aal;"
        }
    .end annotation

    .line 63
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    .line 65
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rl;

    .line 67
    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-direct {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(I)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aai;

    .line 68
    invoke-direct {p3, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    .line 69
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->b(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide p3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    .line 70
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 71
    invoke-static {p5, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object p3

    .line 70
    :goto_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aal;->a()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 72
    iget p7, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p5, p2, p7, p6, p4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V

    if-eqz p4, :cond_1

    .line 73
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    :cond_1
    return-object p3
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 2
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    sub-int v3, v2, v3

    move v5, v3

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v2

    iget-wide v6, v2, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v11

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object v9

    .line 5
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ub;

    move-object v2, v1

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->D:Lcom/google/ads/interactivemedia/v3/internal/ur;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->q:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->E:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->l:Lcom/google/ads/interactivemedia/v3/internal/aas;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->F:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->k:Lcom/google/ads/interactivemedia/v3/internal/ux;

    move-object/from16 v17, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/ub;-><init>(ILcom/google/ads/interactivemedia/v3/internal/vb;ILcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;JLcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/ux;[B[B)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    move-object/from16 v2, p1

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ub;->a:I

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method final a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->B:J

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/aau;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "Lcom/google/ads/interactivemedia/v3/internal/vb;",
            ">;JJ)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 17
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    .line 21
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 22
    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {v5, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a()I

    move-result v5

    .line 25
    :goto_0
    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_1

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 26
    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v10

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    cmp-long v12, v10, v7

    if-gez v12, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 27
    :cond_1
    iget-boolean v7, v4, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v7, :cond_5

    sub-int v7, v5, v9

    .line 28
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a()I

    move-result v8

    if-le v7, v8, :cond_2

    const-string v2, "DashMediaSource"

    const-string v3, "Loaded out of sync manifest"

    .line 29
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 62
    :cond_2
    iget-wide v7, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->B:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v7, v10

    if-eqz v12, :cond_4

    .line 30
    iget-wide v10, v4, Lcom/google/ads/interactivemedia/v3/internal/vb;->h:J

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v10

    cmp-long v14, v12, v7

    if-gtz v14, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Loaded stale dynamic manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "DashMediaSource"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_2
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->A:I

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->E:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 58
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    .line 59
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v0

    if-ge v2, v0, :cond_3

    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->A:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v2, 0x1388

    .line 60
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v2, v0

    .line 61
    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/uo;->c(J)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/tz;

    .line 62
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/tz;-><init>()V

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->r:Ljava/io/IOException;

    return-void

    .line 57
    :cond_4
    iput v6, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->A:I

    :cond_5
    iput-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget-boolean v6, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    .line 31
    iget-boolean v4, v4, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    and-int/2addr v4, v6

    iput-boolean v4, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    sub-long v6, v2, p4

    iput-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->x:J

    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->y:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->g:Ljava/lang/Object;

    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->t:Landroid/net/Uri;

    if-ne v3, v4, :cond_7

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 34
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->j:Landroid/net/Uri;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->t:Landroid/net/Uri;

    .line 35
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez v5, :cond_12

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 36
    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v3, :cond_11

    .line 37
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/vb;->i:Lcom/google/ads/interactivemedia/v3/internal/vu;

    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/vu;->a:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:utc:direct:2014"

    .line 38
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "urn:mpeg:dash:utc:direct:2012"

    .line 39
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const-string v3, "urn:mpeg:dash:utc:http-iso:2014"

    .line 43
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "urn:mpeg:dash:utc:http-iso:2012"

    .line 44
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 46
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 47
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    .line 49
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    .line 50
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 51
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    .line 52
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Ljava/io/IOException;)V

    return-void

    .line 51
    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->l()V

    return-void

    .line 47
    :cond_d
    :goto_5
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/un;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/un;-><init>([B)V

    .line 48
    invoke-direct {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/vu;Lcom/google/ads/interactivemedia/v3/internal/aat;)V

    return-void

    .line 45
    :cond_e
    :goto_6
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ui;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/ui;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/vu;Lcom/google/ads/interactivemedia/v3/internal/aat;)V

    return-void

    .line 39
    :cond_f
    :goto_7
    :try_start_1
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vu;->b:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->g(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->y:J

    sub-long/2addr v2, v4

    .line 41
    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(J)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/dt; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Ljava/io/IOException;)V

    return-void

    .line 53
    :cond_10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->l()V

    return-void

    .line 54
    :cond_11
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Z)V

    return-void

    :cond_12
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    .line 55
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->q:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 91
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    .line 92
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zn;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->o:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 93
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aar;

    const-string v0, "Loader:DashMediaSource"

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 94
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->m()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 1

    .line 130
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ub;

    .line 131
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ub;->g()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ub;->a:I

    .line 132
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method final b(Lcom/google/ads/interactivemedia/v3/internal/aau;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 74
    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p5, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 75
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    .line 78
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 79
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p5, p4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    .line 80
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p4, p2

    invoke-direct {p0, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(J)V

    return-void
.end method

.method protected final c()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->w:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->o:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->f()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->p:Lcom/google/ads/interactivemedia/v3/internal/aar;

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->x:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->y:J

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->v:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->u:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->t:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->r:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->z:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->A:I

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->B:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->C:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->h:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 136
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/hq;->b()V

    return-void
.end method

.method final c(Lcom/google/ads/interactivemedia/v3/internal/aau;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "*>;JJ)V"
        }
    .end annotation

    .line 11
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    .line 13
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    .line 15
    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->d:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 16
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p3, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method public final g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->l:Lcom/google/ads/interactivemedia/v3/internal/aas;

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/aas;->a()V

    return-void
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->m:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-object v0
.end method

.method final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uo;->j:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->m()V

    return-void
.end method

.method final synthetic j()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Z)V

    return-void
.end method

.method final bridge synthetic k()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->m()V

    return-void
.end method

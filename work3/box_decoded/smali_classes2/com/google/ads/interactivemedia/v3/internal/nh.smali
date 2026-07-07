.class public final Lcom/google/ads/interactivemedia/v3/internal/nh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/acf;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final d:Landroid/util/SparseIntArray;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/nk;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/nm;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseBooleanArray;

.field private final h:Landroid/util/SparseBooleanArray;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/ne;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/nd;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/google/ads/interactivemedia/v3/internal/nm;

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/nh;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/acf;

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acf;-><init>(J)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/mb;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/nh;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/nk;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/nk;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->e:Lcom/google/ads/interactivemedia/v3/internal/nk;

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->b:Ljava/util/List;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([BI)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->g:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->h:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->d:Landroid/util/SparseIntArray;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 9
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ne;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->r:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 12
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/nk;->a()Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/nm;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/na;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/nf;

    .line 15
    invoke-direct {p3, p0}, Lcom/google/ads/interactivemedia/v3/internal/nf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nh;)V

    invoke-direct {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/na;-><init>(Lcom/google/ads/interactivemedia/v3/internal/mz;)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->p:Lcom/google/ads/interactivemedia/v3/internal/nm;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/nh;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/nh;I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->l:I

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/nh;Lcom/google/ads/interactivemedia/v3/internal/nm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->p:Lcom/google/ads/interactivemedia/v3/internal/nm;

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/nh;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/nh;I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->r:I

    return-void
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/nh;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->l:I

    return p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/nh;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/nh;)Lcom/google/ads/interactivemedia/v3/internal/nm;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->p:Lcom/google/ads/interactivemedia/v3/internal/nm;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/nh;)Lcom/google/ads/interactivemedia/v3/internal/nk;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->e:Lcom/google/ads/interactivemedia/v3/internal/nk;

    return-object p0
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/internal/nh;)Lcom/google/ads/interactivemedia/v3/internal/ii;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->k:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-object p0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/internal/nh;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->g:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/internal/nh;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Lcom/google/ads/interactivemedia/v3/internal/nh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->m:Z

    return p0
.end method

.method static synthetic k(Lcom/google/ads/interactivemedia/v3/internal/nh;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->m:Z

    return-void
.end method

.method static synthetic l(Lcom/google/ads/interactivemedia/v3/internal/nh;)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->l:I

    return-void
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

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v10

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->m:Z

    const-wide/16 v12, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/4 v9, 0x0

    if-eqz v3, :cond_7

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    if-eq v3, v15, :cond_1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 16
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->r:I

    .line 55
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;I)I

    move-result v1

    return v1

    .line 16
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->n:Z

    if-nez v3, :cond_3

    iput-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->n:Z

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 17
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ne;->b()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/nd;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 18
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ne;->c()Lcom/google/ads/interactivemedia/v3/internal/acf;

    move-result-object v4

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 19
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ne;->b()J

    move-result-wide v5

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->r:I

    move-object v3, v7

    move-object v12, v7

    move v13, v8

    move-wide v7, v10

    const/4 v15, 0x0

    move v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/nd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/acf;JJI)V

    iput-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->j:Lcom/google/ads/interactivemedia/v3/internal/nd;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->k:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 20
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a()Lcom/google/ads/interactivemedia/v3/internal/iu;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 54
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->k:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/it;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->i:Lcom/google/ads/interactivemedia/v3/internal/ne;

    .line 21
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ne;->b()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 20
    :goto_1
    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->o:Z

    if-eqz v3, :cond_5

    iput-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->o:Z

    const-wide/16 v3, 0x0

    .line 22
    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/nh;->a(JJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_4

    goto :goto_2

    .line 54
    :cond_4
    iput-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    return v14

    .line 22
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->j:Lcom/google/ads/interactivemedia/v3/internal/nd;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ib;->b()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->j:Lcom/google/ads/interactivemedia/v3/internal/nd;

    .line 54
    invoke-virtual {v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result v1

    return v1

    :cond_7
    const/4 v15, 0x0

    .line 22
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 23
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 24
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v3

    rsub-int v3, v3, 0x24b8

    const/16 v4, 0xbc

    if-lt v3, v4, :cond_9

    goto :goto_4

    .line 53
    :cond_9
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 25
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 26
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v5

    invoke-static {v2, v5, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 27
    invoke-virtual {v5, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    .line 24
    :goto_4
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 28
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v3

    const/4 v5, -0x1

    if-ge v3, v4, :cond_c

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v3

    rsub-int v6, v3, 0x24b8

    .line 30
    invoke-virtual {v1, v2, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result v6

    if-ne v6, v5, :cond_b

    return v5

    :cond_b
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    add-int/2addr v3, v6

    .line 31
    invoke-virtual {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 32
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 33
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 34
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a([BII)I

    move-result v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 35
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    add-int/lit16 v4, v3, 0xbc

    if-le v4, v2, :cond_e

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->q:I

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->q:I

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    const/16 v1, 0x178

    if-gt v2, v1, :cond_d

    goto :goto_5

    .line 21
    :cond_d
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 36
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_e
    iput v15, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->q:I

    .line 35
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 37
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    if-le v4, v1, :cond_10

    return v15

    :cond_10
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 38
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    if-eqz v3, :cond_11

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 39
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v15

    :cond_11
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_12

    const/4 v9, 0x1

    goto :goto_6

    :cond_12
    const/4 v9, 0x0

    :goto_6
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0x1fff

    and-int/lit8 v6, v2, 0x20

    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_13

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/nm;

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_14

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 41
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v15

    :cond_14
    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    const/4 v12, 0x2

    if-eq v8, v12, :cond_16

    and-int/lit8 v2, v2, 0xf

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v12, v2, -0x1

    .line 42
    invoke-virtual {v8, v3, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->d:Landroid/util/SparseIntArray;

    .line 43
    invoke-virtual {v12, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v8, v2, :cond_15

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 44
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v15

    :cond_15
    add-int/2addr v8, v14

    and-int/lit8 v8, v8, 0xf

    if-eq v2, v8, :cond_16

    .line 45
    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/internal/nm;->a()V

    :cond_16
    if-eqz v6, :cond_18

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 46
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 47
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_17

    const/4 v6, 0x2

    goto :goto_8

    :cond_17
    const/4 v6, 0x0

    :goto_8
    or-int/2addr v9, v6

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    add-int/2addr v2, v5

    .line 48
    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_18
    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->m:Z

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_19

    if-nez v2, :cond_19

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->h:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {v5, v3, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 50
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 51
    invoke-interface {v7, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/nm;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 52
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    :cond_1a
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1b

    if-nez v2, :cond_1b

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->m:Z

    if-eqz v1, :cond_1b

    const-wide/16 v1, -0x1

    cmp-long v3, v10, v1

    if-eqz v3, :cond_1b

    iput-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->o:Z

    :cond_1b
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 53
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return v15
.end method

.method public final a(JJ)V
    .locals 9

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->a:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->b:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->b:Ljava/util/List;

    .line 58
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 59
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_2

    .line 61
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->a()J

    move-result-wide v1

    cmp-long v4, v1, p3

    if-eqz v4, :cond_2

    .line 62
    :goto_2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->d()V

    .line 63
    invoke-virtual {v3, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/acf;->a(J)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmp-long p1, p3, v1

    if-eqz p1, :cond_4

    .line 61
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->j:Lcom/google/ads/interactivemedia/v3/internal/nd;

    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(J)V

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->d:Landroid/util/SparseIntArray;

    .line 66
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    :goto_3
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->f:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/nm;

    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/nm;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->q:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->k:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nh;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 69
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 70
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 71
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

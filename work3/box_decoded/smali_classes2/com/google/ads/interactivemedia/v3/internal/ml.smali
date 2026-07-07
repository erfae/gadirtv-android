.class final Lcom/google/ads/interactivemedia/v3/internal/ml;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/abo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/abn;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/abs;

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/google/ads/interactivemedia/v3/internal/mk;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/mk;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ix;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->b:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    .line 1
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->e:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mk;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/mk;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->m:Lcom/google/ads/interactivemedia/v3/internal/mk;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mk;

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/mk;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->g:[B

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/abs;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p1, p3, p3}, Lcom/google/ads/interactivemedia/v3/internal/abs;-><init>([BII)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ml;->b()V

    return-void
.end method


# virtual methods
.method public final a(JIJ)V
    .locals 0

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->i:I

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->l:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->j:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->m:Lcom/google/ads/interactivemedia/v3/internal/mk;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->m:Lcom/google/ads/interactivemedia/v3/internal/mk;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 54
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/mk;->a()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->h:I

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/abn;->a:I

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/abo;->d:I

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a([BII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->g:[B

    .line 5
    array-length v4, v3

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->h:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_1

    add-int/2addr v5, v5

    .line 6
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->g:[B

    :cond_1
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->g:[B

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->h:I

    move-object/from16 v5, p1

    .line 7
    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->h:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->g:[B

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a([BII)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    const/16 v2, 0x8

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 10
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    const/4 v3, 0x5

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 13
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 14
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 15
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 16
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v8

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->c:Z

    if-nez v1, :cond_5

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 17
    invoke-virtual {v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/mk;->a(I)V

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 18
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 19
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v10

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->e:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    return-void

    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->e:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/abn;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->d:Landroid/util/SparseArray;

    .line 22
    iget v6, v1, Lcom/google/ads/interactivemedia/v3/internal/abn;->b:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/abo;

    .line 23
    iget-boolean v5, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->h:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 24
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v5

    if-nez v5, :cond_8

    return-void

    :cond_8
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 25
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    :cond_9
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 26
    iget v5, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->j:I

    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 27
    iget v5, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->j:I

    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v9

    .line 28
    iget-boolean v2, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->i:Z

    const/4 v5, 0x1

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 29
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 30
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 31
    invoke-virtual {v11, v5}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v11

    if-nez v11, :cond_c

    return-void

    :cond_c
    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 32
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v11

    move v13, v11

    const/4 v12, 0x1

    move v11, v2

    goto :goto_1

    :cond_d
    move v11, v2

    goto :goto_0

    :cond_e
    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->i:I

    if-ne v2, v3, :cond_f

    const/4 v14, 0x1

    goto :goto_2

    :cond_f
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_11

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 33
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 34
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v2

    move v15, v2

    goto :goto_3

    :cond_11
    const/4 v15, 0x0

    .line 35
    :goto_3
    iget v2, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->k:I

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 36
    iget v3, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->l:I

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 37
    iget v3, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->l:I

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v2

    .line 38
    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/abn;->c:Z

    if-eqz v1, :cond_14

    if-nez v11, :cond_14

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 39
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 40
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->e()I

    move-result v1

    move/from16 v17, v1

    move/from16 v16, v2

    goto :goto_5

    :cond_14
    move/from16 v16, v2

    goto :goto_4

    :cond_15
    if-ne v2, v5, :cond_19

    .line 41
    iget-boolean v2, v6, Lcom/google/ads/interactivemedia/v3/internal/abo;->m:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 42
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 43
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abs;->e()I

    move-result v2

    .line 44
    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/abn;->c:Z

    if-eqz v1, :cond_18

    if-nez v11, :cond_18

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 45
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->f:Lcom/google/ads/interactivemedia/v3/internal/abs;

    .line 46
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->e()I

    move-result v1

    move/from16 v19, v1

    move/from16 v18, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_7

    :cond_18
    move/from16 v18, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_6

    :cond_19
    const/16 v16, 0x0

    :goto_4
    const/16 v17, 0x0

    :goto_5
    const/16 v18, 0x0

    :goto_6
    const/16 v19, 0x0

    .line 40
    :goto_7
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 47
    invoke-virtual/range {v5 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/mk;->a(Lcom/google/ads/interactivemedia/v3/internal/abo;IIIIZZZZIIIII)V

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->c:Z

    return v0
.end method

.method public final a(JIZZ)Z
    .locals 13

    move-object v0, p0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->m:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 48
    invoke-static {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mk;->a(Lcom/google/ads/interactivemedia/v3/internal/mk;Lcom/google/ads/interactivemedia/v3/internal/mk;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->o:Z

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->j:J

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->r:Z

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->p:J

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->q:J

    sub-long v6, v4, v6

    long-to-int v12, v6

    sub-long v4, p1, v4

    long-to-int v5, v4

    add-int v4, p3, v5

    const/4 v5, 0x0

    move-object v6, v1

    move-wide v7, v10

    move v10, v12

    move v11, v4

    move-object v12, v5

    .line 49
    invoke-interface/range {v6 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    :cond_1
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->j:J

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->p:J

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->l:J

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->q:J

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->r:Z

    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->o:Z

    :cond_2
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 50
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/mk;->b()Z

    move-result v1

    goto :goto_0

    :cond_3
    move/from16 v1, p5

    :goto_0
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->r:Z

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->i:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    if-eqz v1, :cond_5

    if-ne v5, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    or-int v1, v4, v2

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ml;->r:Z

    return v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->k:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->o:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ml;->n:Lcom/google/ads/interactivemedia/v3/internal/mk;

    .line 53
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/mk;->a()V

    return-void
.end method

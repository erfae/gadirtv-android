.class public final Lcom/google/ads/interactivemedia/v3/internal/mm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/nb;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/ml;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Lcom/google/ads/interactivemedia/v3/internal/abr;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/nb;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->b:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->h:[Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/4 p2, 0x7

    .line 1
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 p2, 0x8

    .line 2
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/4 p2, 0x6

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method

.method private final a([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 62
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 63
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 66
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->n:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->h:[Z

    .line 67
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 68
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 69
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 70
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ml;->b()V

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->m:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->n:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 5
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->g:J

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->g:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->h:[Z

    .line 12
    invoke-static {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_b

    add-int/lit8 v5, v4, 0x3

    .line 13
    aget-byte v6, v3, v5

    and-int/lit8 v10, v6, 0x1f

    sub-int v6, v4, v1

    if-lez v6, :cond_0

    .line 14
    invoke-direct {v0, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mm;->a([BII)V

    :cond_0
    sub-int v14, v2, v4

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->g:J

    int-to-long v11, v14

    sub-long v8, v7, v11

    if-gez v6, :cond_1

    neg-int v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->m:J

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 15
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v19, v2

    move/from16 v17, v5

    goto/16 :goto_3

    :cond_3
    :goto_2
    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 16
    invoke-virtual {v11, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 17
    invoke-virtual {v11, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    const/4 v12, 0x3

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v15, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v13, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 19
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v15, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v13, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 20
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v15, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v13, v13, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 21
    invoke-static {v15, v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII)Lcom/google/ads/interactivemedia/v3/internal/abo;

    move-result-object v13

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v15, v15, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 22
    invoke-static {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/abp;->b([BI)Lcom/google/ads/interactivemedia/v3/internal/abn;

    move-result-object v1

    iget v15, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->a:I

    iget v12, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->b:I

    move/from16 v17, v5

    iget v5, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->c:I

    .line 23
    sget v18, Lcom/google/ads/interactivemedia/v3/internal/abc;->a:I

    move/from16 v19, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v2, v15

    const/4 v12, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v12

    const-string v5, "avc1.%02X%02X%02X"

    .line 25
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 26
    invoke-direct {v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->i:Ljava/lang/String;

    .line 27
    invoke-virtual {v12, v15}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v15, "video/avc"

    .line 28
    invoke-virtual {v12, v15}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    iget v2, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->e:I

    .line 30
    invoke-virtual {v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    iget v2, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->f:I

    .line 31
    invoke-virtual {v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    iget v2, v13, Lcom/google/ads/interactivemedia/v3/internal/abo;->g:F

    .line 32
    invoke-virtual {v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(F)V

    .line 33
    invoke-virtual {v12, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 34
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v2

    .line 26
    invoke-interface {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 35
    invoke-virtual {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(Lcom/google/ads/interactivemedia/v3/internal/abo;)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 36
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(Lcom/google/ads/interactivemedia/v3/internal/abn;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 37
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 38
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    goto :goto_3

    :cond_4
    move/from16 v19, v2

    move/from16 v17, v5

    .line 55
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    const/4 v5, 0x3

    .line 39
    invoke-static {v2, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII)Lcom/google/ads/interactivemedia/v3/internal/abo;

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 40
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(Lcom/google/ads/interactivemedia/v3/internal/abo;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 41
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 42
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->b([BI)Lcom/google/ads/interactivemedia/v3/internal/abn;

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 43
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(Lcom/google/ads/interactivemedia/v3/internal/abn;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 44
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    .line 38
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 45
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 46
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    .line 47
    invoke-virtual {v2, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x4

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 49
    invoke-virtual {v1, v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/nb;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V

    :cond_7
    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->n:Z

    move-wide v12, v8

    move/from16 v16, v1

    .line 50
    invoke-virtual/range {v11 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->n:Z

    :cond_8
    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->m:J

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->l:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 51
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->d:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 52
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->e:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 53
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    :cond_a
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 54
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    .line 55
    invoke-virtual/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ml;->a(JIJ)V

    move/from16 v1, v17

    move/from16 v2, v19

    goto/16 :goto_0

    .line 56
    :cond_b
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mm;->a([BII)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 4

    .line 57
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 58
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->i:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ml;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->b:Z

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->c:Z

    .line 60
    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ml;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;ZZ)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->k:Lcom/google/ads/interactivemedia/v3/internal/ml;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mm;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nb;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

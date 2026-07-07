.class final Lcom/google/ads/interactivemedia/v3/internal/ub;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rn;
.implements Lcom/google/ads/interactivemedia/v3/internal/su;
.implements Lcom/google/ads/interactivemedia/v3/internal/to;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/rn;",
        "Lcom/google/ads/interactivemedia/v3/internal/su;",
        "Lcom/google/ads/interactivemedia/v3/internal/to;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field final a:I

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final f:J

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/aas;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/tb;

.field private final i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/uz;

.field private final k:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/tp<",
            "Lcom/google/ads/interactivemedia/v3/internal/ty;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/uy;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/rm;

.field private o:[Lcom/google/ads/interactivemedia/v3/internal/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/ads/interactivemedia/v3/internal/tp<",
            "Lcom/google/ads/interactivemedia/v3/internal/ty;",
            ">;"
        }
    .end annotation
.end field

.field private p:[Lcom/google/ads/interactivemedia/v3/internal/uv;

.field private q:Lcom/google/ads/interactivemedia/v3/internal/sv;

.field private r:Lcom/google/ads/interactivemedia/v3/internal/vb;

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vf;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/google/ads/interactivemedia/v3/internal/ur;

.field private final v:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private final w:Lcom/google/ads/interactivemedia/v3/internal/zt;

.field private final x:Lcom/google/ads/interactivemedia/v3/internal/aaj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->b:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/vb;ILcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;JLcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/ux;[B[B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v4, p1

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->a:I

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->r:Lcom/google/ads/interactivemedia/v3/internal/vb;

    move/from16 v4, p3

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->s:I

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->u:Lcom/google/ads/interactivemedia/v3/internal/ur;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->d:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->m:Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->v:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->l:Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-wide/from16 v5, p10

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->f:J

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->g:Lcom/google/ads/interactivemedia/v3/internal/aas;

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->w:Lcom/google/ads/interactivemedia/v3/internal/zt;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->x:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    .line 3
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/uz;

    move-object/from16 v6, p15

    invoke-direct {v5, v1, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/uz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vb;Lcom/google/ads/interactivemedia/v3/internal/ux;Lcom/google/ads/interactivemedia/v3/internal/zt;)V

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->j:Lcom/google/ads/interactivemedia/v3/internal/uz;

    const/4 v3, 0x0

    new-array v5, v3, [Lcom/google/ads/interactivemedia/v3/internal/tp;

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    new-array v5, v3, [Lcom/google/ads/interactivemedia/v3/internal/uv;

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->p:[Lcom/google/ads/interactivemedia/v3/internal/uv;

    new-instance v5, Ljava/util/IdentityHashMap;

    .line 4
    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->k:Ljava/util/IdentityHashMap;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 5
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a([Lcom/google/ads/interactivemedia/v3/internal/sv;)Lcom/google/ads/interactivemedia/v3/internal/sv;

    move-result-object v5

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 6
    invoke-virtual/range {p2 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v1

    .line 7
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/vg;->d:Ljava/util/List;

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->t:Ljava/util/List;

    .line 8
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/vg;->c:Ljava/util/List;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->t:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Landroid/util/SparseIntArray;

    .line 10
    invoke-direct {v6, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v8, v5}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_0

    .line 13
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/ads/interactivemedia/v3/internal/va;

    iget v10, v10, Lcom/google/ads/interactivemedia/v3/internal/va;->a:I

    invoke-virtual {v6, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v10, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/4 v10, -0x1

    if-ge v9, v5, :cond_7

    .line 18
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/va;

    .line 19
    iget-object v12, v11, Lcom/google/ads/interactivemedia/v3/internal/va;->e:Ljava/util/List;

    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v12

    if-nez v12, :cond_1

    .line 20
    iget-object v12, v11, Lcom/google/ads/interactivemedia/v3/internal/va;->f:Ljava/util/List;

    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v12

    :cond_1
    if-eqz v12, :cond_2

    iget-object v12, v12, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    .line 21
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 22
    invoke-virtual {v6, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ne v12, v10, :cond_3

    :cond_2
    move v12, v9

    :cond_3
    if-ne v12, v9, :cond_5

    .line 23
    iget-object v11, v11, Lcom/google/ads/interactivemedia/v3/internal/va;->f:Ljava/util/List;

    const-string v13, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 24
    invoke-static {v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, v11, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    const-string v13, ","

    .line 25
    invoke-static {v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 26
    array-length v13, v11

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v15, v11, v14

    .line 27
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 28
    invoke-virtual {v6, v15, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v10, :cond_4

    .line 29
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    if-eq v12, v9, :cond_6

    .line 30
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 31
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 32
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {v8, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    invoke-interface {v7, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 35
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [[I

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_8

    .line 36
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/util/Collection;)[I

    move-result-object v9

    aput-object v9, v6, v8

    .line 37
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    new-array v7, v5, [Z

    new-array v8, v5, [[Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v9, v5, :cond_11

    .line 38
    aget-object v13, v6, v9

    .line 39
    array-length v14, v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_b

    aget v10, v13, v15

    .line 40
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/ads/interactivemedia/v3/internal/va;

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/va;->c:Ljava/util/List;

    .line 41
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_a

    .line 42
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/ads/interactivemedia/v3/internal/vl;

    .line 43
    iget-object v12, v12, Lcom/google/ads/interactivemedia/v3/internal/vl;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    .line 44
    aput-boolean v12, v7, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    const/4 v10, -0x1

    goto :goto_5

    .line 45
    :cond_b
    :goto_7
    aget-object v3, v6, v9

    .line 46
    array-length v10, v3

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_f

    aget v13, v3, v12

    .line 47
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/va;

    .line 48
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/va;

    iget-object v13, v13, Lcom/google/ads/interactivemedia/v3/internal/va;->d:Ljava/util/List;

    move-object/from16 p2, v3

    const/4 v15, 0x0

    .line 49
    :goto_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_e

    .line 50
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/ve;

    move/from16 p3, v10

    .line 51
    iget-object v10, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    move-object/from16 p5, v13

    const-string v13, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v13, 0x12

    if-eqz v10, :cond_c

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 53
    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v12, "application/cea-608"

    .line 54
    invoke-virtual {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v12, v14, Lcom/google/ads/interactivemedia/v3/internal/va;->a:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":cea608"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 55
    invoke-virtual {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    sget-object v12, Lcom/google/ads/interactivemedia/v3/internal/ub;->b:Ljava/util/regex/Pattern;

    .line 57
    invoke-static {v3, v12, v10}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Lcom/google/ads/interactivemedia/v3/internal/ve;Ljava/util/regex/Pattern;Lcom/google/ads/interactivemedia/v3/internal/cz;)[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    goto :goto_a

    .line 52
    :cond_c
    iget-object v10, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    const-string v13, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 58
    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v12, "application/cea-708"

    .line 59
    invoke-virtual {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v12, v14, Lcom/google/ads/interactivemedia/v3/internal/va;->a:I

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x12

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":cea708"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-virtual {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    sget-object v12, Lcom/google/ads/interactivemedia/v3/internal/ub;->c:Ljava/util/regex/Pattern;

    .line 62
    invoke-static {v3, v12, v10}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Lcom/google/ads/interactivemedia/v3/internal/ve;Ljava/util/regex/Pattern;Lcom/google/ads/interactivemedia/v3/internal/cz;)[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    goto :goto_a

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p3

    move-object/from16 v13, p5

    goto/16 :goto_9

    :cond_e
    move/from16 p3, v10

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_8

    :cond_f
    const/4 v3, 0x0

    new-array v10, v3, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-object v3, v10

    .line 63
    :goto_a
    aput-object v3, v8, v9

    array-length v3, v3

    if-eqz v3, :cond_10

    add-int/lit8 v11, v11, 0x1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v10, -0x1

    goto/16 :goto_4

    :cond_11
    add-int/2addr v11, v5

    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v11, v3

    .line 65
    new-array v3, v11, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 66
    new-array v9, v11, [Lcom/google/ads/interactivemedia/v3/internal/ua;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    const-string v12, "application/x-emsg"

    if-ge v10, v5, :cond_18

    .line 67
    aget-object v13, v6, v10

    new-instance v14, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v15, v13

    move/from16 p3, v5

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v15, :cond_12

    move-object/from16 p5, v6

    aget v6, v13, v5

    .line 70
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/va;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/va;->c:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p5

    goto :goto_c

    :cond_12
    move-object/from16 p5, v6

    .line 71
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v5, :cond_13

    .line 72
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p7, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/vl;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/vl;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-object/from16 p8, v14

    .line 73
    invoke-interface {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    aput-object v5, v6, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p7

    move-object/from16 v14, p8

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    .line 74
    aget v14, v13, v5

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/va;

    add-int/lit8 v14, v11, 0x1

    .line 75
    aget-boolean v15, v7, v10

    if-eqz v15, :cond_14

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v16, v1

    move/from16 v17, v15

    move v15, v14

    move/from16 v14, v17

    goto :goto_e

    :cond_14
    move-object/from16 v16, v1

    const/4 v15, -0x1

    .line 76
    :goto_e
    aget-object v1, v8, v10

    array-length v1, v1

    if-eqz v1, :cond_15

    add-int/lit8 v1, v14, 0x1

    move/from16 v17, v14

    move v14, v1

    move/from16 v1, v17

    goto :goto_f

    :cond_15
    const/4 v1, -0x1

    :goto_f
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 77
    invoke-direct {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v2, v3, v11

    .line 78
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/internal/va;->b:I

    .line 79
    invoke-static {v2, v13, v11, v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/ua;->a(I[IIII)Lcom/google/ads/interactivemedia/v3/internal/ua;

    move-result-object v2

    aput-object v2, v9, v11

    const/4 v2, -0x1

    if-eq v15, v2, :cond_16

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 80
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/va;->a:I

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 p7, v7

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":emsg"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v2

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/sz;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    .line 84
    invoke-direct {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v5, v3, v15

    .line 85
    invoke-static {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/ua;->a([II)Lcom/google/ads/interactivemedia/v3/internal/ua;

    move-result-object v2

    aput-object v2, v9, v15

    const/4 v2, -0x1

    goto :goto_10

    :cond_16
    move-object/from16 p7, v7

    :goto_10
    if-eq v1, v2, :cond_17

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 86
    aget-object v6, v8, v10

    invoke-direct {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v5, v3, v1

    .line 87
    invoke-static {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/ua;->b([II)Lcom/google/ads/interactivemedia/v3/internal/ua;

    move-result-object v5

    aput-object v5, v9, v1

    :cond_17
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v2, p6

    move-object/from16 v7, p7

    move v11, v14

    move-object/from16 v1, v16

    goto/16 :goto_b

    :cond_18
    const/4 v1, 0x0

    .line 88
    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 89
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/vf;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 90
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 91
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/vf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v2

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/sz;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 94
    invoke-direct {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v5, v3, v11

    add-int/lit8 v2, v11, 0x1

    .line 95
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ua;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ua;

    move-result-object v5

    aput-object v5, v9, v11

    add-int/lit8 v1, v1, 0x1

    move v11, v2

    goto :goto_11

    .line 96
    :cond_19
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-direct {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/tb;-><init>([Lcom/google/ads/interactivemedia/v3/internal/sz;)V

    invoke-static {v1, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 97
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tb;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->h:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 98
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/ua;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ub;->i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

    return-void
.end method

.method private final a(I[I)I
    .locals 4

    .line 111
    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

    .line 112
    aget-object p1, v1, p1

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ua;->e:I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 113
    aget v2, p2, v1

    if-ne v2, p1, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

    .line 114
    aget-object v2, v3, v2

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->c:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;"
        }
    .end annotation

    const-string v0, "http://dashif.org/guidelines/trickmode"

    .line 105
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ve;

    .line 104
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ve;Ljava/util/regex/Pattern;Lcom/google/ads/interactivemedia/v3/internal/cz;)[Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 10

    .line 119
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array p0, v1, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object p2, p0, v0

    return-object p0

    :cond_0
    const-string v2, ";"

    .line 120
    invoke-static {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 121
    array-length v2, p0

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v3, 0x0

    .line 122
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 123
    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    new-array p0, v1, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object p2, p0, v0

    return-object p0

    .line 125
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 126
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v6

    iget-object v7, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0xc

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I)V

    const/4 v5, 0x2

    .line 129
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 106
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 107
    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 108
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J
    .locals 33

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-wide/from16 v12, p5

    .line 140
    array-length v1, v0

    new-array v11, v1, [I

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, v0

    const/4 v8, -0x1

    if-ge v1, v2, :cond_1

    .line 142
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    iget-object v3, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->h:Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->f()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v2

    .line 143
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(Lcom/google/ads/interactivemedia/v3/internal/sz;)I

    move-result v2

    aput v2, v11, v1

    goto :goto_1

    .line 144
    :cond_0
    aput v8, v11, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 145
    :goto_2
    array-length v2, v0

    const/16 v16, 0x0

    if-ge v1, v2, :cond_6

    .line 146
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-boolean v2, p2, v1

    if-nez v2, :cond_5

    .line 147
    :cond_2
    aget-object v2, v15, v1

    instance-of v3, v2, Lcom/google/ads/interactivemedia/v3/internal/tp;

    if-eqz v3, :cond_3

    .line 148
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 149
    invoke-virtual {v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/to;)V

    goto :goto_3

    .line 150
    :cond_3
    instance-of v3, v2, Lcom/google/ads/interactivemedia/v3/internal/tn;

    if-eqz v3, :cond_4

    .line 151
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tn;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/tn;->a()V

    .line 152
    :cond_4
    :goto_3
    aput-object v16, v15, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 153
    :goto_4
    array-length v2, v0

    const/4 v9, 0x1

    if-ge v1, v2, :cond_c

    .line 154
    aget-object v2, v15, v1

    instance-of v3, v2, Lcom/google/ads/interactivemedia/v3/internal/rc;

    if-nez v3, :cond_7

    instance-of v2, v2, Lcom/google/ads/interactivemedia/v3/internal/tn;

    if-eqz v2, :cond_b

    .line 155
    :cond_7
    invoke-direct {v14, v1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(I[I)I

    move-result v2

    if-ne v2, v8, :cond_8

    .line 156
    aget-object v2, v15, v1

    instance-of v9, v2, Lcom/google/ads/interactivemedia/v3/internal/rc;

    goto :goto_5

    .line 157
    :cond_8
    aget-object v3, v15, v1

    instance-of v4, v3, Lcom/google/ads/interactivemedia/v3/internal/tn;

    if-eqz v4, :cond_9

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/tn;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/tn;->a:Lcom/google/ads/interactivemedia/v3/internal/tp;

    aget-object v2, v15, v2

    if-ne v3, v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_b

    .line 158
    aget-object v2, v15, v1

    instance-of v3, v2, Lcom/google/ads/interactivemedia/v3/internal/tn;

    if-eqz v3, :cond_a

    .line 159
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tn;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/tn;->a()V

    .line 160
    :cond_a
    aput-object v16, v15, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    .line 161
    :goto_6
    array-length v1, v0

    if-ge v7, v1, :cond_18

    .line 162
    aget-object v1, v0, v7

    if-nez v1, :cond_e

    move/from16 v17, v7

    move-object/from16 v32, v11

    move-object v4, v15

    :cond_d
    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 163
    :cond_e
    aget-object v2, v15, v7

    if-nez v2, :cond_16

    .line 164
    aput-boolean v9, p4, v7

    .line 165
    aget v2, v11, v7

    iget-object v3, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

    .line 166
    aget-object v2, v3, v2

    .line 167
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->c:I

    if-nez v3, :cond_15

    .line 168
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->f:I

    if-eq v3, v8, :cond_f

    const/16 v26, 0x1

    goto :goto_8

    :cond_f
    const/16 v26, 0x0

    :goto_8
    if-eqz v26, :cond_10

    iget-object v4, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->h:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 169
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v3, v16

    const/4 v4, 0x0

    .line 170
    :goto_9
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->g:I

    if-eq v5, v8, :cond_11

    iget-object v6, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->h:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 171
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v6

    .line 172
    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    add-int/2addr v4, v9

    goto :goto_a

    :cond_11
    move-object/from16 v6, v16

    .line 173
    :goto_a
    new-array v9, v4, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 174
    new-array v4, v4, [I

    if-eqz v26, :cond_12

    .line 175
    invoke-virtual {v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x4

    .line 176
    aput v3, v4, v10

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    :goto_b
    new-instance v10, Ljava/util/ArrayList;

    .line 177
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eq v5, v8, :cond_13

    const/4 v5, 0x0

    .line 178
    :goto_c
    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    if-ge v5, v8, :cond_13

    .line 179
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v8

    aput-object v8, v9, v3

    const/16 v17, 0x3

    .line 180
    aput v17, v4, v3

    .line 181
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    const/4 v8, 0x1

    iget-object v3, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->r:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 182
    iget-boolean v3, v3, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v3, :cond_14

    if-eqz v26, :cond_14

    iget-object v3, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->j:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 183
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a()Lcom/google/ads/interactivemedia/v3/internal/uy;

    move-result-object v3

    move-object v6, v3

    goto :goto_d

    :cond_14
    move-object/from16 v6, v16

    :goto_d
    iget-object v3, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->u:Lcom/google/ads/interactivemedia/v3/internal/ur;

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->g:Lcom/google/ads/interactivemedia/v3/internal/aas;

    iget-object v8, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->r:Lcom/google/ads/interactivemedia/v3/internal/vb;

    move/from16 v30, v7

    iget v7, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->s:I

    move-object/from16 v31, v11

    .line 184
    iget-object v11, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->a:[I

    iget v12, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->b:I

    move-object v13, v9

    move-object/from16 v27, v10

    iget-wide v9, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->f:J

    iget-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->d:Lcom/google/ads/interactivemedia/v3/internal/aay;

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v20, v7

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    move/from16 v23, v12

    move-wide/from16 v24, v9

    move-object/from16 v28, v6

    move-object/from16 v29, v0

    .line 185
    invoke-virtual/range {v17 .. v29}, Lcom/google/ads/interactivemedia/v3/internal/ur;->a(Lcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/vb;I[ILcom/google/ads/interactivemedia/v3/internal/yr;IJZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/uy;Lcom/google/ads/interactivemedia/v3/internal/aay;)Lcom/google/ads/interactivemedia/v3/internal/ty;

    move-result-object v5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 186
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->b:I

    iget-object v7, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->w:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iget-object v10, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->e:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v11, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->m:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iget-object v12, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->v:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget-object v8, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->l:Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-object v1, v0

    move-object v3, v4

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v6, p0

    move/from16 v17, v30

    move-object/from16 v18, v8

    move-wide/from16 v8, p5

    move-object/from16 v32, v31

    move-object v15, v13

    move-object/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/tp;-><init>(I[I[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/tq;Lcom/google/ads/interactivemedia/v3/internal/su;Lcom/google/ads/interactivemedia/v3/internal/zt;JLcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->k:Ljava/util/IdentityHashMap;

    .line 187
    invoke-virtual {v1, v0, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p3

    .line 189
    aput-object v0, v4, v17

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    .line 188
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_15
    move/from16 v17, v7

    move-object/from16 v32, v11

    move-object v4, v15

    const/4 v0, 0x2

    if-ne v3, v0, :cond_d

    .line 189
    iget-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->t:Ljava/util/List;

    .line 190
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/vf;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->f()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v1

    const/4 v3, 0x0

    .line 191
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/uv;

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->r:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 192
    iget-boolean v5, v5, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    invoke-direct {v2, v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/uv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vf;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)V

    aput-object v2, v4, v17

    goto :goto_e

    :cond_16
    move/from16 v17, v7

    move-object/from16 v32, v11

    move-object v4, v15

    const/4 v3, 0x0

    .line 193
    instance-of v0, v2, Lcom/google/ads/interactivemedia/v3/internal/tp;

    if-eqz v0, :cond_17

    .line 194
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a()Lcom/google/ads/interactivemedia/v3/internal/tq;

    move-result-object v0

    .line 195
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ty;->a(Lcom/google/ads/interactivemedia/v3/internal/yr;)V

    :cond_17
    :goto_e
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v12, p5

    move-object v15, v4

    move-object/from16 v11, v32

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_18
    move-object/from16 v32, v11

    move-object v4, v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    const/4 v10, 0x0

    .line 196
    :goto_f
    array-length v1, v0

    if-ge v10, v1, :cond_1c

    .line 197
    aget-object v1, v4, v10

    if-nez v1, :cond_1b

    aget-object v1, v0, v10

    if-eqz v1, :cond_1b

    move-object/from16 v1, v32

    .line 198
    aget v2, v1, v10

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->i:[Lcom/google/ads/interactivemedia/v3/internal/ua;

    .line 199
    aget-object v2, v5, v2

    .line 200
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 201
    invoke-direct {v14, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ub;->a(I[I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_19

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/rc;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/rc;-><init>()V

    .line 202
    aput-object v2, v4, v10

    move-wide/from16 v8, p5

    goto :goto_11

    .line 203
    :cond_19
    aget-object v5, v4, v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/tp;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ua;->b:I

    move-wide/from16 v8, p5

    .line 204
    invoke-virtual {v5, v8, v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(JI)Lcom/google/ads/interactivemedia/v3/internal/tn;

    move-result-object v2

    aput-object v2, v4, v10

    goto :goto_11

    :cond_1a
    move-wide/from16 v8, p5

    goto :goto_10

    :cond_1b
    move-wide/from16 v8, p5

    move-object/from16 v1, v32

    const/4 v6, 0x1

    :goto_10
    const/4 v7, -0x1

    :goto_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v32, v1

    goto :goto_f

    :cond_1c
    move-wide/from16 v8, p5

    new-instance v0, Ljava/util/ArrayList;

    .line 205
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 206
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v4

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v2, :cond_1f

    .line 207
    aget-object v3, v4, v10

    .line 208
    instance-of v5, v3, Lcom/google/ads/interactivemedia/v3/internal/tp;

    if-eqz v5, :cond_1d

    .line 209
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 210
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 211
    :cond_1d
    instance-of v5, v3, Lcom/google/ads/interactivemedia/v3/internal/uv;

    if-eqz v5, :cond_1e

    .line 212
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/uv;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 213
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 214
    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/tp;

    iput-object v2, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 215
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/uv;

    iput-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->p:[Lcom/google/ads/interactivemedia/v3/internal/uv;

    .line 217
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 218
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a([Lcom/google/ads/interactivemedia/v3/internal/sv;)Lcom/google/ads/interactivemedia/v3/internal/sv;

    move-result-object v0

    iput-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    return-wide v8
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->g:Lcom/google/ads/interactivemedia/v3/internal/aas;

    .line 116
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/aas;->a()V

    return-void
.end method

.method public final a(JZ)V
    .locals 4

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 100
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 101
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->n:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 131
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->n:Lcom/google/ads/interactivemedia/v3/internal/rm;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/interactivemedia/v3/internal/tp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/tp<",
            "Lcom/google/ads/interactivemedia/v3/internal/ty;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->k:Ljava/util/IdentityHashMap;

    .line 117
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/uy;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/uy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vb;I)V
    .locals 9

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->r:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->s:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->j:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 219
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(Lcom/google/ads/interactivemedia/v3/internal/vb;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 220
    aget-object v4, v0, v3

    .line 221
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a()Lcom/google/ads/interactivemedia/v3/internal/tq;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ty;->a(Lcom/google/ads/interactivemedia/v3/internal/vb;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->n:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 222
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    .line 223
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vg;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->p:[Lcom/google/ads/interactivemedia/v3/internal/uv;

    .line 224
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->t:Ljava/util/List;

    .line 225
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/vf;

    .line 226
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/vf;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/uv;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/vb;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 228
    iget-boolean v7, p1, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    if-eqz v7, :cond_3

    if-ne p2, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/uv;->a(Lcom/google/ads/interactivemedia/v3/internal/vf;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final b(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 136
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 137
    invoke-virtual {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->p:[Lcom/google/ads/interactivemedia/v3/internal/uv;

    .line 138
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/uv;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->h:Lcom/google/ads/interactivemedia/v3/internal/tb;

    return-object v0
.end method

.method public final c()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sv;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 109
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 110
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 132
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sv;->f(J)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->q:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 115
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->f()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->j:Lcom/google/ads/interactivemedia/v3/internal/uz;

    .line 133
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/uz;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->o:[Lcom/google/ads/interactivemedia/v3/internal/tp;

    .line 134
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 135
    invoke-virtual {v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/to;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ub;->n:Lcom/google/ads/interactivemedia/v3/internal/rm;

    return-void
.end method

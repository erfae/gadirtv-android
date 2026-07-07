.class public final Lcom/google/ads/interactivemedia/v3/internal/wi;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rn;
.implements Lcom/google/ads/interactivemedia/v3/internal/wq;
.implements Lcom/google/ads/interactivemedia/v3/internal/xq;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/wg;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/xu;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final g:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/st;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/wz;

.field private final i:I

.field private j:Lcom/google/ads/interactivemedia/v3/internal/rm;

.field private k:I

.field private l:Lcom/google/ads/interactivemedia/v3/internal/tb;

.field private m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

.field private n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

.field private o:Lcom/google/ads/interactivemedia/v3/internal/sv;

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/vx;

.field private final q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private final r:Lcom/google/ads/interactivemedia/v3/internal/zt;

.field private final s:Lcom/google/ads/interactivemedia/v3/internal/aaj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/xu;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/aaj;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->p:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->c:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->e:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->f:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->r:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->s:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    iput p11, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->i:I

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a([Lcom/google/ads/interactivemedia/v3/internal/sv;)Lcom/google/ads/interactivemedia/v3/internal/sv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    new-instance p2, Ljava/util/IdentityHashMap;

    .line 2
    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->g:Ljava/util/IdentityHashMap;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/wz;

    .line 3
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/wz;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->h:Lcom/google/ads/interactivemedia/v3/internal/wz;

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    return-void
.end method

.method private final a(I[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Ljava/util/Map;J)Lcom/google/ads/interactivemedia/v3/internal/wt;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;",
            ">;J)",
            "Lcom/google/ads/interactivemedia/v3/internal/wt;"
        }
    .end annotation

    move-object/from16 v14, p0

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/wf;

    iget-object v1, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iget-object v2, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->p:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iget-object v6, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->c:Lcom/google/ads/interactivemedia/v3/internal/aay;

    iget-object v7, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->h:Lcom/google/ads/interactivemedia/v3/internal/wz;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/wf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/xu;[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aay;Lcom/google/ads/interactivemedia/v3/internal/wz;Ljava/util/List;)V

    .line 5
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->r:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iget-object v10, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v11, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->e:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iget-object v12, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->q:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget-object v13, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->f:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v8, v14, Lcom/google/ads/interactivemedia/v3/internal/wi;->i:I

    move-object v0, v15

    move/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move/from16 v16, v8

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/wt;-><init>(ILcom/google/ads/interactivemedia/v3/internal/wq;Lcom/google/ads/interactivemedia/v3/internal/wf;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/internal/zt;JLcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;I)V

    return-object v15
.end method


# virtual methods
.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 0

    return-wide p1
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 104
    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 105
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 106
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    .line 112
    :cond_0
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->g:Ljava/util/IdentityHashMap;

    .line 107
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v4, v6

    .line 108
    aput v8, v3, v6

    .line 109
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/internal/yr;->f()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 110
    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 111
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/wt;->g()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(Lcom/google/ads/interactivemedia/v3/internal/sz;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 112
    aput v9, v3, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->g:Ljava/util/IdentityHashMap;

    .line 113
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    new-array v6, v7, [Lcom/google/ads/interactivemedia/v3/internal/st;

    new-array v15, v7, [Lcom/google/ads/interactivemedia/v3/internal/st;

    new-array v13, v7, [Lcom/google/ads/interactivemedia/v3/internal/yr;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 114
    array-length v8, v8

    new-array v14, v8, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_4
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 115
    array-length v8, v8

    if-ge v12, v8, :cond_f

    const/4 v8, 0x0

    .line 116
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 117
    aget v9, v4, v8

    const/4 v10, 0x0

    if-ne v9, v12, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v15, v8

    .line 118
    aget v9, v3, v8

    if-ne v9, v12, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 119
    aget-object v10, v8, v12

    move-object v8, v10

    move-object v9, v13

    move-object v5, v10

    move-object/from16 v10, p2

    move v2, v11

    move-object v11, v15

    move/from16 v17, v7

    move v7, v12

    move-object/from16 v12, p4

    move/from16 v19, v2

    move-object/from16 v18, v13

    move-object v2, v14

    move-wide/from16 v13, p5

    move-object/from16 v20, v15

    move/from16 v15, v16

    .line 120
    invoke-virtual/range {v8 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJZ)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 121
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v9, v11, :cond_a

    .line 122
    aget-object v11, v20, v9

    .line 123
    aget v13, v3, v9

    if-ne v13, v7, :cond_7

    .line 124
    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    aput-object v11, v6, v9

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->g:Ljava/util/IdentityHashMap;

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_9

    .line 127
    :cond_7
    aget v13, v4, v9

    if-ne v13, v7, :cond_9

    if-nez v11, :cond_8

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    .line 128
    :goto_8
    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    :cond_9
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    if-eqz v10, :cond_d

    .line 129
    aput-object v5, v2, v19

    add-int/lit8 v11, v19, 0x1

    if-nez v19, :cond_c

    .line 130
    invoke-virtual {v5, v12}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Z)V

    if-nez v8, :cond_b

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 131
    array-length v9, v8

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eq v5, v8, :cond_e

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->h:Lcom/google/ads/interactivemedia/v3/internal/wz;

    .line 132
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/wz;->a()V

    const/16 v16, 0x1

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    .line 133
    invoke-virtual {v5, v9}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Z)V

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    move/from16 v11, v19

    :cond_e
    :goto_b
    add-int/lit8 v12, v7, 0x1

    move-object v14, v2

    move/from16 v7, v17

    move-object/from16 v13, v18

    move-object/from16 v15, v20

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_f
    move-object v5, v2

    move-object v2, v14

    const/4 v9, 0x0

    .line 134
    invoke-static {v6, v9, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-static {v2, v11}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 136
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/aaj;->a([Lcom/google/ads/interactivemedia/v3/internal/sv;)Lcom/google/ads/interactivemedia/v3/internal/sv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    return-wide p5
.end method

.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 4

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 9
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 10
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 21
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/xu;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rm;J)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 30
    invoke-interface {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/xu;->a(Lcom/google/ads/interactivemedia/v3/internal/xq;)V

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->b()Lcom/google/ads/interactivemedia/v3/internal/xi;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->d:Ljava/util/List;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->e:Ljava/util/List;

    const/4 v13, 0x0

    iput v13, v9, Lcom/google/ads/interactivemedia/v3/internal/wi;->k:I

    new-instance v14, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 37
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v3, v6, :cond_3

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 38
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/xh;

    .line 39
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v13, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-gtz v13, :cond_2

    iget-object v13, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 40
    invoke-static {v13, v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 42
    invoke-static {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 43
    aput v7, v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, -0x1

    .line 44
    aput v6, v2, v3

    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    aput v8, v2, v3

    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    const/4 v1, 0x1

    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    if-ge v5, v1, :cond_5

    sub-int/2addr v1, v5

    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v4, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 45
    :goto_4
    new-array v5, v4, [Landroid/net/Uri;

    .line 46
    new-array v6, v4, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 47
    new-array v13, v4, [I

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 48
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    if-eqz v1, :cond_7

    .line 49
    aget v7, v2, v4

    if-ne v7, v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v8, 0x1

    goto :goto_8

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    aget v7, v2, v4

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    goto :goto_7

    :cond_8
    const/4 v8, 0x1

    :goto_7
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->c:Ljava/util/List;

    .line 50
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/xh;

    .line 51
    iget-object v8, v7, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    aput-object v8, v5, v16

    .line 52
    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object v7, v6, v16

    add-int/lit8 v7, v16, 0x1

    .line 53
    aput v4, v13, v16

    move/from16 v16, v7

    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x2

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    .line 54
    aget-object v1, v6, v4

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->g:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v5

    move-object v3, v6

    move-object v5, v7

    move-object v6, v10

    const/4 v9, 0x1

    move-wide/from16 v7, p2

    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/wi;->a(I[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Ljava/util/Map;J)Lcom/google/ads/interactivemedia/v3/internal/wt;

    move-result-object v0

    .line 56
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    const/4 v9, 0x1

    :goto_9
    new-instance v13, Ljava/util/ArrayList;

    .line 58
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    .line 59
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    .line 60
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    .line 61
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 62
    :goto_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_f

    .line 63
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/xg;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/xg;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    move/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_c

    .line 65
    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 68
    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 69
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/xg;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/xg;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 70
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/xg;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xg;->a:Landroid/net/Uri;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/xg;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/xg;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/net/Uri;

    .line 75
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/net/Uri;

    new-array v0, v1, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 76
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v17, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object v6, v10

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-wide/from16 v7, p2

    .line 78
    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/wi;->a(I[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Ljava/util/Map;J)Lcom/google/ads/interactivemedia/v3/internal/wt;

    move-result-object v0

    .line 79
    invoke-static/range {v19 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_a

    :cond_f
    const/4 v11, 0x0

    .line 81
    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_10

    .line 82
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/xg;

    new-array v2, v9, [Landroid/net/Uri;

    .line 83
    iget-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/xg;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    new-array v3, v9, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/xg;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object v0, v3, v1

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v10

    move-wide/from16 v7, p2

    .line 85
    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/wi;->a(I[Landroid/net/Uri;[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Ljava/util/Map;J)Lcom/google/ads/interactivemedia/v3/internal/wt;

    move-result-object v0

    new-array v1, v9, [I

    const/4 v2, 0x0

    aput v11, v1, v2

    .line 86
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v9, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/sz;

    new-array v4, v9, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 88
    iget-object v5, v13, Lcom/google/ads/interactivemedia/v3/internal/xg;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v3, v1, v2

    new-array v3, v2, [I

    invoke-virtual {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a([Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 89
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/wt;

    const/4 v3, 0x1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    new-array v0, v2, [[I

    .line 90
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 91
    array-length v4, v0

    iput v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->k:I

    .line 92
    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Z)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 93
    array-length v3, v0

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v3, :cond_11

    aget-object v2, v0, v13

    .line 94
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_11
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;J)Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 18
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v0, v4

    .line 19
    invoke-virtual {v6, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Landroid/net/Uri;J)Z

    move-result v6

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 20
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    if-eq v3, v5, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public final b(J)J
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 99
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 100
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(JZ)Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->n:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 101
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 102
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->h:Lcom/google/ads/interactivemedia/v3/internal/wz;

    .line 103
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/wz;->a()V

    :cond_1
    return-wide p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->l:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final c()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->l:Lcom/google/ads/interactivemedia/v3/internal/tb;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 6
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sv;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 11
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 12
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 95
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sv;->f(J)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->o:Lcom/google/ads/interactivemedia/v3/internal/sv;

    .line 14
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sv;->f()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->b:Lcom/google/ads/interactivemedia/v3/internal/xu;

    .line 96
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/xu;->b(Lcom/google/ads/interactivemedia/v3/internal/xq;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 97
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 98
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->i()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    return-void
.end method

.method public final h()V
    .locals 11

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->k:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 23
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/wt;->g()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v5

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_1
    new-array v0, v4, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->m:[Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 25
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 26
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/wt;->g()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v7

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 27
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/wt;->g()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 28
    :cond_3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/tb;-><init>([Lcom/google/ads/interactivemedia/v3/internal/sz;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->l:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 29
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wi;->j:Lcom/google/ads/interactivemedia/v3/internal/rm;

    .line 17
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/rm;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.class public abstract Lcom/google/ads/interactivemedia/v3/internal/yw;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/zh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/yw;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/yp;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/yp;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/ads/interactivemedia/v3/internal/ef;",
            "[",
            "Lcom/google/ads/interactivemedia/v3/internal/yr;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation
.end method

.method public a([Lcom/google/ads/interactivemedia/v3/internal/ee;Lcom/google/ads/interactivemedia/v3/internal/tb;)Lcom/google/ads/interactivemedia/v3/internal/yx;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [I

    .line 2
    new-array v5, v2, [[Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 3
    new-array v6, v2, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_0

    .line 4
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    new-array v10, v9, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    aput-object v10, v5, v8

    .line 5
    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v2, v0

    new-array v8, v2, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_1

    .line 7
    aget-object v10, v0, v9

    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/internal/ee;->o()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_2
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    if-ge v2, v9, :cond_9

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    move-result v10

    .line 11
    array-length v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 12
    :goto_3
    array-length v15, v0

    if-ge v12, v15, :cond_6

    .line 13
    aget-object v15, v0, v12

    const/4 v3, 0x0

    .line 14
    :goto_4
    iget v1, v9, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    if-ge v7, v1, :cond_2

    .line 15
    invoke-virtual {v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(I)I

    move-result v1

    .line 16
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 17
    :cond_2
    aget v1, v4, v12

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v3, v13, :cond_4

    if-ne v3, v13, :cond_5

    const/4 v7, 0x4

    if-ne v10, v7, :cond_5

    if-nez v14, :cond_5

    if-eqz v1, :cond_5

    move v13, v3

    move v11, v12

    const/4 v14, 0x1

    goto :goto_6

    :cond_4
    move v14, v1

    move v13, v3

    move v11, v12

    :cond_5
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    if-ne v11, v15, :cond_7

    .line 18
    iget v1, v9, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    new-array v1, v1, [I

    goto :goto_8

    .line 19
    :cond_7
    aget-object v1, v0, v11

    .line 20
    iget v3, v9, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    new-array v3, v3, [I

    const/4 v7, 0x0

    .line 21
    :goto_7
    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    if-ge v7, v10, :cond_8

    .line 22
    invoke-virtual {v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    invoke-interface {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v10

    aput v10, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    move-object v1, v3

    .line 23
    :goto_8
    aget v3, v4, v11

    .line 24
    aget-object v7, v5, v11

    aput-object v9, v7, v3

    .line 25
    aget-object v7, v6, v11

    aput-object v1, v7, v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    .line 26
    aput v3, v4, v11

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 27
    :cond_9
    array-length v1, v0

    new-array v2, v1, [Lcom/google/ads/interactivemedia/v3/internal/tb;

    new-array v3, v1, [Ljava/lang/String;

    new-array v1, v1, [I

    const/4 v7, 0x0

    .line 28
    :goto_9
    array-length v9, v0

    if-ge v7, v9, :cond_a

    .line 29
    aget v9, v4, v7

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 30
    aget-object v11, v5, v7

    .line 31
    invoke-static {v11, v9}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    invoke-direct {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/tb;-><init>([Lcom/google/ads/interactivemedia/v3/internal/sz;)V

    aput-object v10, v2, v7

    .line 32
    aget-object v10, v6, v7

    .line 33
    invoke-static {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    aput-object v9, v6, v7

    .line 34
    aget-object v9, v0, v7

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/ee;->x()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7

    .line 35
    aget-object v9, v0, v7

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a()I

    move-result v9

    aput v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 36
    :cond_a
    aget v0, v4, v9

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 37
    aget-object v4, v5, v9

    .line 38
    invoke-static {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/tb;-><init>([Lcom/google/ads/interactivemedia/v3/internal/sz;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/yp;

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/yp;-><init>([I[Lcom/google/ads/interactivemedia/v3/internal/tb;)V

    move-object/from16 v1, p0

    .line 40
    invoke-virtual {v1, v0, v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/yw;->a(Lcom/google/ads/interactivemedia/v3/internal/yp;[[[I[I)Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 41
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/ads/interactivemedia/v3/internal/ef;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/ads/interactivemedia/v3/internal/yr;

    invoke-direct {v3, v4, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/yx;-><init>([Lcom/google/ads/interactivemedia/v3/internal/ef;[Lcom/google/ads/interactivemedia/v3/internal/yr;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yw;->a:Lcom/google/ads/interactivemedia/v3/internal/zh;

    return-void
.end method

.method protected final c()Lcom/google/ads/interactivemedia/v3/internal/zh;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yw;->a:Lcom/google/ads/interactivemedia/v3/internal/zh;

    .line 42
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

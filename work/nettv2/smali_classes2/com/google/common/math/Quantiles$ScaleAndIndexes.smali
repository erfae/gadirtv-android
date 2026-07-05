.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    .line 4
    invoke-static {v3, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Indexes must be a non empty array"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 7
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    return-void
.end method

.method public synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([D)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([J)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v5, v2

    new-array v5, v5, [I

    .line 8
    array-length v6, v2

    new-array v6, v6, [I

    .line 9
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    :goto_2
    iget-object v9, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v10, v9

    if-ge v7, v10, :cond_4

    .line 11
    aget v9, v9, v7

    int-to-long v9, v9

    array-length v11, v1

    sub-int/2addr v11, v4

    int-to-long v11, v11

    mul-long v9, v9, v11

    .line 12
    iget v11, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v11, v11

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v11

    long-to-int v12, v11

    int-to-long v13, v12

    .line 13
    iget v11, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v3, v11

    mul-long v13, v13, v3

    sub-long/2addr v9, v13

    long-to-int v3, v9

    .line 14
    aput v12, v5, v7

    .line 15
    aput v3, v6, v7

    .line 16
    aput v12, v2, v8

    add-int/lit8 v8, v8, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v12, v12, 0x1

    .line 17
    aput v12, v2, v8

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3, v8}, Ljava/util/Arrays;->sort([III)V

    const/4 v4, 0x1

    sub-int/2addr v8, v4

    .line 19
    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-static {v2, v8, v1, v7}, Lcom/google/common/math/Quantiles;->access$900([II[DI)V

    .line 20
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    :goto_3
    iget-object v4, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v7, v4

    if-ge v3, v7, :cond_6

    .line 22
    aget v7, v5, v3

    .line 23
    aget v8, v6, v3

    if-nez v8, :cond_5

    .line 24
    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-wide v7, v1, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 25
    :cond_5
    aget v4, v4, v3

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-wide v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    aget-wide v11, v1, v7

    int-to-double v13, v8

    iget v7, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-double v7, v7

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 27
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 28
    :cond_6
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

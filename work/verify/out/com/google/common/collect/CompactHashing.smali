.class final Lcom/google/common/collect/CompactHashing;
.super Ljava/lang/Object;
.source "CompactHashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x100

.field private static final HASH_TABLE_BITS_MAX_BITS:I = 0x5

.field private static final MIN_HASH_TABLE_SIZE:I = 0x4

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x10000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1e

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1e

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_1e

    const/16 v0, 0x100

    if-gt p0, v0, :cond_14

    .line 2
    new-array p0, p0, [B

    return-object p0

    :cond_14
    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_1b

    .line 3
    new-array p0, p0, [S

    return-object p0

    .line 4
    :cond_1b
    new-array p0, p0, [I

    return-object p0

    .line 5
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x34

    const-string v2, "must be power of 2 between 2^1 and 2^30: "

    .line 6
    invoke-static {v1, v2, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newCapacity(I)I
    .registers 2

    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    const/4 v0, 0x4

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    add-int/lit8 p0, p0, 0x1

    mul-int p0, p0, v0

    return p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 16
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, p2

    .line 2
    invoke-static {p3, v1}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    :cond_e
    not-int v4, p2

    and-int/2addr v0, v4

    const/4 v5, -0x1

    :goto_11
    add-int/lit8 v2, v2, -0x1

    .line 3
    aget v6, p4, v2

    and-int v7, v6, v4

    if-ne v7, v0, :cond_3b

    .line 4
    aget-object v7, p5, v2

    .line 5
    invoke-static {p0, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    if-eqz p6, :cond_2b

    aget-object v7, p6, v2

    .line 6
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    :cond_2b
    and-int p0, v6, p2

    if-ne v5, v3, :cond_33

    .line 7
    invoke-static {p3, v1, p0}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_3a

    .line 8
    :cond_33
    aget p1, p4, v5

    and-int/2addr p1, v4

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    aput p0, p4, v5

    :goto_3a
    return v2

    :cond_3b
    and-int v5, v6, p2

    if-nez v5, :cond_40

    return v3

    :cond_40
    move v8, v5

    move v5, v2

    move v2, v8

    goto :goto_11
.end method

.method public static tableClear(Ljava/lang/Object;)V
    .registers 3

    .line 1
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, [B

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1a

    .line 3
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_15

    .line 4
    check-cast p0, [S

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_1a

    .line 5
    :cond_15
    check-cast p0, [I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    :goto_1a
    return-void
.end method

.method public static tableGet(Ljava/lang/Object;I)I
    .registers 3

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_18

    .line 4
    check-cast p0, [S

    aget-short p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 5
    :cond_18
    check-cast p0, [I

    aget p0, p0, p1

    return p0
.end method

.method public static tableSet(Ljava/lang/Object;II)V
    .registers 4

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, [B

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    goto :goto_18

    .line 3
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_14

    .line 4
    check-cast p0, [S

    int-to-short p2, p2

    aput-short p2, p0, p1

    goto :goto_18

    .line 5
    :cond_14
    check-cast p0, [I

    aput p2, p0, p1

    :goto_18
    return-void
.end method

.method public static tableSize(I)I
    .registers 3

    add-int/lit8 p0, p0, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 3
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 4
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    shl-int/2addr v3, v2

    :goto_0
    int-to-double v4, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v7

    int-to-double v7, v0

    cmpg-double v9, v4, v7

    if-gez v9, :cond_1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 4
    :goto_1
    new-array v3, v0, [C

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const-wide/16 v4, 0x0

    :goto_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    or-long/2addr v7, v4

    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int v2, v2, v1

    const/16 v4, 0xf

    .line 6
    invoke-static {v2, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    const v4, 0x1b873593

    mul-int v2, v2, v4

    :goto_3
    and-int/2addr v2, v0

    .line 7
    aget-char v4, v3, v2

    if-nez v4, :cond_2

    int-to-char v4, v1

    .line 8
    aput-char v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move-wide v4, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 10
    :cond_3
    new-instance p0, Lcom/google/common/base/SmallCharMatcher;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public matches(C)Z
    .locals 7

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const v3, -0x3361d2af    # -8.2930312E7f

    mul-int v3, v3, p1

    const/16 v4, 0xf

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    const v4, 0x1b873593

    mul-int v3, v3, v4

    and-int/2addr v3, v0

    move v4, v3

    .line 5
    :cond_2
    iget-object v5, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v6, v5, v4

    if-nez v6, :cond_3

    return v1

    .line 6
    :cond_3
    aget-char v5, v5, v4

    if-ne v5, p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v0

    if-ne v4, v3, :cond_2

    return v1
.end method

.method public final setBits(Ljava/util/BitSet;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v3, v0, v1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

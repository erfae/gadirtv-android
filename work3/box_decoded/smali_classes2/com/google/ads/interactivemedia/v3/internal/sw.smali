.class public final Lcom/google/ads/interactivemedia/v3/internal/sw;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:[I

.field private final c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    .line 1
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Random;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->c:[I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->c:[I

    .line 6
    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 29
    array-length v0, v0

    return v0
.end method

.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->c:[I

    .line 30
    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 31
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;
    .locals 8

    .line 8
    new-array v0, p2, [I

    .line 9
    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 10
    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    .line 11
    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 12
    aget v6, v1, v5

    aput v6, v1, v3

    add-int/2addr v3, p1

    .line 13
    aput v3, v1, v5

    move v3, v4

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 15
    array-length v3, v3

    add-int/2addr v3, p2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 16
    array-length v7, v6

    add-int/2addr v7, p2

    if-ge v2, v7, :cond_3

    if-ge v4, p2, :cond_1

    .line 17
    aget v7, v0, v4

    if-ne v5, v7, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 20
    aget v4, v1, v4

    aput v4, v3, v2

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 18
    aget v5, v6, v5

    aput v5, v3, v2

    if-lt v5, p1, :cond_2

    add-int/2addr v5, p2

    .line 19
    aput v5, v3, v2

    :cond_2
    move v5, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    .line 21
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 28
    array-length v1, v0

    const/4 v2, -0x1

    if-lez v1, :cond_0

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    :cond_0
    return v2
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->c:[I

    .line 32
    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 33
    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public final b(II)Lcom/google/ads/interactivemedia/v3/internal/sw;
    .locals 6

    sub-int v0, p2, p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 22
    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 23
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 24
    aget v4, v4, v2

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    sub-int v5, v2, v3

    if-lt v4, p1, :cond_1

    sub-int/2addr v4, v0

    .line 25
    :cond_1
    aput v4, v1, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    .line 26
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->b:[I

    .line 27
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/sw;
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sw;->a:Ljava/util/Random;

    .line 7
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

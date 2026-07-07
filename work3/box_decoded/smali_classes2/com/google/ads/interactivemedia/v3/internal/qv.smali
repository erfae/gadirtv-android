.class final Lcom/google/ads/interactivemedia/v3/internal/qv;
.super Lcom/google/ads/interactivemedia/v3/internal/ay;
.source "IMASDK"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:[I

.field private final e:[I

.field private final f:[Lcom/google/ads/interactivemedia/v3/internal/er;

.field private final g:[Ljava/lang/Object;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/internal/sw;)V
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ay;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sw;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->d:[I

    .line 4
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->e:[I

    .line 5
    new-array v0, p2, [Lcom/google/ads/interactivemedia/v3/internal/er;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->g:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->h:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 9
    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->e:[I

    .line 10
    aput v1, v5, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->d:[I

    .line 11
    aput v2, v5, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 12
    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 13
    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->g:[Ljava/lang/Object;

    .line 14
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/qy;->b:Ljava/lang/Object;

    aput-object v4, v5, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->h:Ljava/util/HashMap;

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->b:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->b:I

    return v0
.end method

.method protected final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->d:[I

    add-int/lit8 p1, p1, 0x1

    .line 18
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([II)I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->c:I

    return v0
.end method

.method protected final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->e:[I

    add-int/lit8 p1, p1, 0x1

    .line 19
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([II)I

    move-result p1

    return p1
.end method

.method protected final d(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->h:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final d(I)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 23
    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final e(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->d:[I

    .line 21
    aget p1, v0, p1

    return p1
.end method

.method protected final f(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->e:[I

    .line 22
    aget p1, v0, p1

    return p1
.end method

.method protected final g(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qv;->g:[Ljava/lang/Object;

    .line 20
    aget-object p1, v0, p1

    return-object p1
.end method

.class final Lcom/google/ads/interactivemedia/v3/internal/eb;
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
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ay;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sw;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:[I

    .line 4
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:[I

    .line 5
    new-array v0, p2, [Lcom/google/ads/interactivemedia/v3/internal/er;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->h:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/dm;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 9
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/dm;->b()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:[I

    .line 10
    aput p2, v3, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:[I

    .line 11
    aput v0, v3, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 12
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 13
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:[Ljava/lang/Object;

    .line 14
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/dm;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->h:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:[Ljava/lang/Object;

    .line 15
    aget-object v4, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:I

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:I

    return v0
.end method

.method protected final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:[I

    add-int/lit8 p1, p1, 0x1

    .line 18
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([II)I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:I

    return v0
.end method

.method protected final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:[I

    add-int/lit8 p1, p1, 0x1

    .line 19
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([II)I

    move-result p1

    return p1
.end method

.method protected final d(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->h:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:[Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 24
    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final e(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:[I

    .line 22
    aget p1, v0, p1

    return p1
.end method

.method protected final f(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:[I

    .line 23
    aget p1, v0, p1

    return p1
.end method

.method protected final g(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:[Ljava/lang/Object;

    .line 21
    aget-object p1, v0, p1

    return-object p1
.end method

.class public final Lcom/google/ads/interactivemedia/v3/internal/aoq;
.super Lcom/google/ads/interactivemedia/v3/internal/aov;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aov<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aov;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/aor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aor<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aov;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/anz;->a:Lcom/google/ads/interactivemedia/v3/internal/anz;

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aos;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aos;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 9
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/aop;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    invoke-virtual {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aor;

    .line 13
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aor;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aou;I)V

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aov;->a(Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)V"
        }
    .end annotation

    .line 14
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aov;->a(Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-void
.end method

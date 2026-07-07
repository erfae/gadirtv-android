.class final Lcom/google/ads/interactivemedia/v3/internal/anp;
.super Ljava/util/AbstractSet;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/anu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/anu;->b(Lcom/google/ads/interactivemedia/v3/internal/anu;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 8
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/anu;->c:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 15
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->b(Lcom/google/ads/interactivemedia/v3/internal/anu;)I

    move-result v0

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c(Lcom/google/ads/interactivemedia/v3/internal/anu;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/anu;->a:[I

    iget-object v7, p1, Lcom/google/ads/interactivemedia/v3/internal/anu;->b:[Ljava/lang/Object;

    iget-object v8, p1, Lcom/google/ads/interactivemedia/v3/internal/anu;->c:[Ljava/lang/Object;

    move v4, v0

    .line 17
    invoke-static/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->a(II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 19
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->d(Lcom/google/ads/interactivemedia/v3/internal/anu;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->d()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anp;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 21
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->size()I

    move-result v0

    return v0
.end method

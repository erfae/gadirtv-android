.class final Lcom/google/ads/interactivemedia/v3/internal/aot;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aou;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aou;->size()I

    move-result v0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aou;->size()I

    move-result v1

    .line 2
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aou;->c()Lcom/google/ads/interactivemedia/v3/internal/aoz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoz;->a()Lcom/google/ads/interactivemedia/v3/internal/apr;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aot;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aot;->b:Ljava/lang/Object;

    return-void
.end method

.method static final a(I)Lcom/google/ads/interactivemedia/v3/internal/aos;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/ads/interactivemedia/v3/internal/aos<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aos;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aos;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aot;->a:Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aoz;

    if-nez v1, :cond_1

    .line 8
    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aot;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, [Ljava/lang/Object;

    array-length v2, v0

    .line 10
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/aos;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 11
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/aoz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aot;->b:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/aol;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoz;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/aos;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoz;->a()Lcom/google/ads/interactivemedia/v3/internal/apr;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aol;->a()Lcom/google/ads/interactivemedia/v3/internal/apr;

    move-result-object v1

    .line 18
    :goto_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/apr;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/apr;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/apr;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v0

    return-object v0
.end method

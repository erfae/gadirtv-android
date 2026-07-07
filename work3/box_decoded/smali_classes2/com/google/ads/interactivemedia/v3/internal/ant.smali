.class final Lcom/google/ads/interactivemedia/v3/internal/ant;
.super Ljava/util/AbstractCollection;
.source "IMASDK"


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/anu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ant;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ant;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ant;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ano;

    .line 5
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ano;-><init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ant;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->size()I

    move-result v0

    return v0
.end method

.class final Lcom/google/ads/interactivemedia/v3/internal/apf;
.super Lcom/google/ads/interactivemedia/v3/internal/aop;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/aop<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/apg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/apg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apg;->a(Lcom/google/ads/interactivemedia/v3/internal/apg;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apg;->b(Lcom/google/ads/interactivemedia/v3/internal/apg;)[Ljava/lang/Object;

    move-result-object v0

    add-int/2addr p1, p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/apg;->c(Lcom/google/ads/interactivemedia/v3/internal/apg;)I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/apg;->b(Lcom/google/ads/interactivemedia/v3/internal/apg;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/apg;->c(Lcom/google/ads/interactivemedia/v3/internal/apg;)I

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/apf;->a:Lcom/google/ads/interactivemedia/v3/internal/apg;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apg;->a(Lcom/google/ads/interactivemedia/v3/internal/apg;)I

    move-result v0

    return v0
.end method

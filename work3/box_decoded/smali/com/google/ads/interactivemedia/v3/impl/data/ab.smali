.class final Lcom/google/ads/interactivemedia/v3/impl/data/ab;
.super Lcom/google/ads/interactivemedia/v3/impl/data/be;
.source "IMASDK"


# instance fields
.field private obstructions:Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/bg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/be;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/bh;
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/ab;->obstructions:Lcom/google/ads/interactivemedia/v3/internal/aop;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, " obstructions"

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/ac;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/ab;->obstructions:Lcom/google/ads/interactivemedia/v3/internal/aop;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ac;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aop;Lcom/google/ads/interactivemedia/v3/impl/data/aa;)V

    return-object v0
.end method

.method public obstructions(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/bg;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/be;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/ab;->obstructions:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object p0
.end method

.class final Lcom/google/ads/interactivemedia/v3/internal/afk;
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
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/afp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/afp;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/afp;->a(Ljava/util/Map$Entry;)Lcom/google/ads/interactivemedia/v3/internal/afo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afj;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afk;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 5
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/afp;->a(Ljava/util/Map$Entry;)Lcom/google/ads/interactivemedia/v3/internal/afo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/afp;->a(Lcom/google/ads/interactivemedia/v3/internal/afo;Z)V

    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afk;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 8
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/afp;->c:I

    return v0
.end method

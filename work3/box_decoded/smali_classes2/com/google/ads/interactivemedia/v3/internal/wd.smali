.class final Lcom/google/ads/interactivemedia/v3/internal/wd;
.super Lcom/google/ads/interactivemedia/v3/internal/th;
.source "IMASDK"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/xk;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/th;-><init>(J)V

    return-void
.end method

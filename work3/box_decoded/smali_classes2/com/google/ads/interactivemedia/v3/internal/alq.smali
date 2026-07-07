.class public final Lcom/google/ads/interactivemedia/v3/internal/alq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ij;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/ads/interactivemedia/v3/internal/ih;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/ih;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/lz;

    .line 1
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/lz;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/nh;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/nh;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ky;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ky;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jt;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/jt;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/ads/interactivemedia/v3/internal/ih;
    .locals 0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/ij;)[Lcom/google/ads/interactivemedia/v3/internal/ih;

    move-result-object p1

    return-object p1
.end method

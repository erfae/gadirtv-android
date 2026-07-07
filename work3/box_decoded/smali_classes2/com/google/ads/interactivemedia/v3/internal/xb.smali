.class public final Lcom/google/ads/interactivemedia/v3/internal/xb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/xo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/aat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xn;

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xi;->a:Lcom/google/ads/interactivemedia/v3/internal/xi;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/xi;)V

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/xi;)Lcom/google/ads/interactivemedia/v3/internal/aat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/xi;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xn;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/xn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/xi;)V

    return-object v0
.end method

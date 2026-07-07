.class abstract Lcom/google/ads/interactivemedia/v3/internal/jl;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/ix;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jl;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jl;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jl;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
